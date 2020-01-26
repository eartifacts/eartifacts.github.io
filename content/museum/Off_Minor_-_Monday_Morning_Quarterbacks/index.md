+++
title = "Off Minor – “Monday Morning Quarterbacks”"

[taxonomies]
tags = ["vocals", "unclean vocals", "guitar", "electric guitar", "bass guitar",
        "electric bass guitar", "drumkit", "odd time signatures", "power trio"]
genres = ["skramz", "jazz punk", "math rock", "post-hardcore"]
years = ["2002"]
artists = ["Off Minor"]
labels = ["Clean Plate Records", "EarthWaterSky Connection"]
+++

&ldquo;Monday Morning Quarterbacks&rdquo; is the penultimate track from [Off
Minor](/artists/off-minor)&rsquo;s (one of two major bands formed in the wake
of [Saetia](/artists/saetia)&rsquo;s demise, the other being [Hot
Cross](/artists/hot-cross)) debut full-length. It is effectively the ultimate
track, as the following track is a brief solo guitar rendition of [Monk&rsquo;s
&ldquo;Off Minor&rdquo;][off-minor], entirely different from the full-band
[skramz](/genres/skramz) of the rest of the album.

<!-- more -->

{{ tune_info(cover_ext="jpg",
             artist="Off Minor",
             title="Monday Morning Quarterbacks",
             album="The Heat Death of the Universe",
             year=2002,
             duration="2:56",
             genres=["skramz", "jazz punk", "math rock", "post-hardcore"],
             labels=["Clean Plate Records", "EarthWaterSky Connection"],
             instrumentation=[
                 "unclean vocals: Jamie Behar, Steven Roche",
                 "electric guitar: Jamie Behar",
                 "electric bass guitar: Kevin Roche",
                 "drumkit: Steven Roche",
             ]) }}

## Theme

This tune is not **quite** monothematic, strictly speaking, but is nevertheless
in a broadly theme-and-variations form. The first two bars set the theme; here
is a rough transcription of those two bars, with repeat signs showing how it is
repeated:

{{ sheet(n=0, summary="Rough transcription of the first two bars of “Monday Morning Quarterbacks”") }}

The first thing that stands out here is the choice of meter: I&rsquo;ve written
{{ time_sig(n=11, d=4) }} because this represents the pulse that is felt and
the unit of repetition, although arguably {{ time_sig(n=11, d=4) }} is more of
a hypermeter here that should &ldquo;actually&rdquo; be {{
time_sig(n="3+3+3+2", d=4) }}. Regardless, there is a clear 3-against-2 feel
due to the dotted quarter notes overlapping the quarter note pulse for the
first 9 pulses of each measure, i.e. a {{ time_sig(n="3+3+3+3+3+3+4", d=8) }}
feel. The pace is fairly swift, at circa 185 pulses per minute, so a bar of {{
time_sig(n=11, d=4) }} is not terribly long.

Also of note is the orchestration here. The ensemble itself is typical of rock
music in general: the classic [power
trio](https://en.wikipedia.org/wiki/Power_trio). But the way that the power
trio is used here is unusual (although characteristic of Off Minor as a band).
The bass is here at the forefront of the arrangement alongside the guitar, and
the two weave together their own melodies while the drums play a groove that
both reinforces the rhythms of the bass and guitar (with the more-or-less {{
time_sig(n=6, d=8) }} feel in the snare and kick drum) and also plays against
it (with the straight quarter notes in the hi-hats). This particular theme as
it is played here is vaguely a call-and-response, with the bass going into its
very high register (hence the use of <i>8<sup>va</sup></i> in the
transcription) to respond to the chord-melody of the guitar.

From here we will take a look at a traditional decomposition of this theme into
&ldquo;harmony&rdquo; and &ldquo;melody&rdquo;.

### Harmony (and melody)

What follows is a reduction of the theme as transcribed above:

{{ sheet(
    n=1,
    summary="Reduction of the main theme of “Monday Morning Quarterbacks”")
}}

The first harmonic region here is pretty obviously some kind of A minor chord;
here it is labelled as {{ chord_name(root="A", quality="minor 7") }} because
the G natural is played prominently in the bass guitar part.

The second harmonic region is a little bit trickier, as the only obvious part
is that B{{flat()}} is in the bass. Arguably, this simple and traditional kind
of chord-based analysis fails us here, but we can still get some insight from
it. One could try to analyze this harmonic region as a {{ chord_name(root="G",
quality="minor 13", slash="B", slash_accidental="flat") }}, or even as some
kind of B{{flat()}} power chord with an added {{sharp()}}4 and a 6? But here we
have chosen {{ chord_name(root="E", quality="diminished", slash="B",
slash_accidental="flat") }}, for two reasons. One is that playing a
straight-ahead {{ chord_name(root="E", quality="diminished") }} over the
reduction melody seems to sound the most similar to the original. The other
&mdash; perhaps more important &mdash; reason is that it makes this into
essentially a {{ roman(entries=["I", "V", "I"]) }} progression. The {{
chord_name(root="A", quality="minor 7") }} functions as a rootless {{
chord_name(root="F", quality="major 7", slash="A") }} chord (or rather,
rootless {{ chord_name(root="F", quality="major 9", slash="A") }}), the tonic
chord of F major. The {{ chord_name(root="E", quality="diminished") }} is the
{{ roman(entries=["vii diminished"]) }} of F major, functioning in the same way
as a (again, rootless) {{ chord_name(root="C", quality="7") }}, the {{
roman(entries=["V 7"]) }} of F major.

Among many other things, this use of what are (virtually) rootless chords could
be a contributing factor to why Off Minor often gets the &ldquo;jazz
punk&rdquo; label attached to them, considering that jazz places such an
emphasis on the 3<sup>rd</sup> and 7<sup>th</sup> factors (as well as
extensions) of chords that it draws away from the root&rsquo;s importance.

[off-minor]: https://en.wikipedia.org/wiki/List_of_compositions_by_Thelonious_Monk#Off_Minor
