\version "2.18.2"

\header {
  tagline = ""
}

\score {
  <<
    \new ChordNames \with {
      midiInstrument = #"electric guitar (jazz)"
      chordNameSeparator = \markup { "" }
      slashChordSeparator = \markup { "⧸" }
      minorChordModifier = \markup { "−" }
    } {
      \chordmode {
        \override ChordName #"font-family"=#'roman
        a1.:min7 e1:dim/bes
      }
    }

    \new Staff \with {
      instrumentName = #"Reduction "
      shortInstrumentName = #"Red. "
      midiInstrument = #"electric guitar (jazz)"
      midiMinimumVolume = #0.5
      midiMaximumVolume = #0.75
    } {
      << {
        \transposition c
        \clef "treble"
        \key f \major
        \time 11/4
        \override Score.MetronomeMark.padding = #3
        \tempo 4 = 185

        g''8( a''4) e''4. e'' d'' f'' e'' g''4 f'' \bar ":|."
      } \\ {
        a'4. c''
      } >>
    }
  >>

  \layout {
    indent = 2.5\cm
    short-indent = 1\cm
  }
  \midi {}
}
