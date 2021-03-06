#!/usr/bin/env bash

set -ex

for f in "$@"
do
    # Invoke lilypond to compile the file, generating SVG (and MIDI, if the
    # input file specifies MIDI).
    lilypond -dbackend=svg "${f}"

    # The name of the compilation output SVG file.
    svg_name="${f%.ly}.svg"

    # Remove unwanted `href` and `xlink:href` attributes generated by lilypond
    # that it uses to link parts of the score to places in the input *.ly file.
    sed -i -E 's/(xlink:)?href="[^"]*"//g' "${svg_name}"

    # Invoke Inkscape to “crop” the score to only the visible parts, exporting
    # as “plain SVG” in order to get rid of any unwanted
    # Inkscape/Sodipodi-specific attributes.
    inkscape "${svg_name}" --export-area-drawing --export-margin 2 \
             --export-plain-svg --export-type=svg -o "${svg_name}"

    # Use SVGO to optimise the resulting SVG.
    temp_name="${f%.ly}.opt.svg"
    npx svgo --multipass --eol lf --final-newline --pretty --indent 2 \
             -i "${svg_name}" -o "${temp_name}"
    mv "${temp_name}" "${svg_name}"

    # Use TiMidity++ to play the MIDI with whatever soundfont, and then convert
    # the output to Opus to save space.
    midi_name="${f%.ly}.midi"
    wav_name="${f%.ly}.wav"
    opus_name="${f%.ly}.opus"
    timidity "${midi_name}" -Ow1 -o "${wav_name}"
    opusenc --bitrate 128 --vbr --comp 10 "${wav_name}" "${opus_name}"
    rm "${wav_name}"
done
