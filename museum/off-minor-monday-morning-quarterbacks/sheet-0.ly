\version "2.18.2"

\header {
  tagline = ""
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup {
        \column { "Electric Guitar "
          \line { \smaller "(Jamie Behar) " }
        }
      }
      shortInstrumentName = #"Gtr. "
      midiInstrument = #"electric guitar (jazz)"
      midiMinimumVolume = #0.5
      midiMaximumVolume = #0.75
    } {
      {
        \transposition c
        \clef "treble"
        \key f \major
        \time 11/4
        \tempo 4 = 185

        <<              a4. e' a'>> <<e' a' c''>> <<a' c'' e''>> <<e' a' d''>> <<f' bes' e'' f''>> <<f' bes' e''>> <<bes'4 e'' g''>> <<bes' e'' f''>> \bar ".|:"
        <<\parenthesize a4. e' a'>> <<e' a' c''>> <<a' c'' e''>> <<e' a' d''>> <<f' bes' e'' f''>> <<f' bes' e''>> <<bes'4 e'' g''>> <<bes' e'' f''>> \bar ":|."
      }
    }

    \new Staff \with {
      instrumentName = \markup {
        \column { "Electric Bass "
          \line { \smaller "(Kevin Roche) " }
        }
      }
      shortInstrumentName = #"Bass "
      midiInstrument = #"electric bass (pick)"
      midiMinimumVolume = #0.8
      midiMaximumVolume = #1.0
    } {
      {
        \transposition c
        \clef "bass"
        \key f \major
        \time 11/4

        a,1.                                     bes,2. \ottava #1 g'4 f' |
        g'8\glissando( a'4) e'4. \ottava #0 a,2. bes,2. \ottava #1 g'4 f' |
      }
    }

    #(define standard-style '(
             (hihat         cross   #f          5)
             (halfopenhihat cross   "halfopen"  5)
             (openhihat     xcircle #f          5)
             (pedalhihat    cross   #f         -5)
             (ridebell      diamond #f          4)
             (snare         default #f          1)
             (lowtom        default #f          0)
             (bassdrum      default #f         -3)))

    \new DrumStaff \with {
      instrumentName = \markup {
        \column { "Drumkit "
          \line { \smaller "(Steven Roche) " }
        }
      }
      shortInstrumentName = #"Drum "
      drumStyleTable = #(alist->hash-table standard-style)
    } {
      \drummode {
        \time 11/4

        << {
          hho4 hh hh hh hh hh hh hh hh hh     hh16 hh hh hh |
          hho4 hh hh hh hh hh hh hh hh r8 hho rb4           |
        } \\ {
          bd4. bd4 bd8 sn4. bd4 \parenthesize sn16 \parenthesize sn bd8 bd4 sn bd8 sn4 bd    |
          bd4. bd4 bd8 sn4. bd4 \parenthesize sn16 \parenthesize sn bd8 bd4 sn bd8 sn4 r8 bd |
        } >>
      }
    }
  >>

  \layout {
    indent = 2.5\cm
    short-indent = 1\cm
  }
  \midi {}
}
