\version "2.16.2"

\paper {
  #(define fonts
    (make-pango-font-tree "Baskerville 10 Pro" "" "" (/ 1)))
  top-margin = .8\cm
  bottom-margin = 1.2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  ragged-last-bottom = ##f
}

\header {
  title = \markup{Minecraft: Wet Hands}
  composer = \markup{"C418"}
  tagline = ""
}

rh = \relative a' {
  \time 4/4
  \key a \major
  \clef treble

  \tempo "Andante espressivo"
  R1*4 |

  gis2.^>( a4 |
  fis2. e8 fis |
  gis2.-> b8 cis ~ |
  cis fis,4.) r4 cis'8( e |

  g4. fis8 d4 a8 b ~ |
  b2) r2 |
  g'4--( fis-- d-- a8 b ~ |
  b2) r4 a |

  e1 |
  r2 cis8 e a cis\fermata |
  <d b fis>4. cis8 a4 <e e'>8 <fis fis'> ~ |
  <fis fis'> d'8 ~ d2 b8( cis |

  d4 cis8 d4 fis8 ~ fis4) |
  <cis e,>2. b,8( a |
  b1) |
  R1 |

  g''8( fis e d e d e fis ~ |
  fis e4.) a2-> |
  gis!8( e b gis e2) |
  b'8( gis e b gis2\fermata) |
}

lh = \relative a {
  \time 4/4
  \key a \major
  \clef bass

  \once\override TextScript #'extra-offset = #'(-3.5 . -1.5)
  a,8^\markup{\small\italic sostenuto.}( cis a' b cis b a e) |
  d( fis cis' e cis a4.) |
  a,8( cis a' b cis b a e) |
  d( fis cis' e cis a4.) |

  a,8( cis a' b cis b a e) |
  d( fis cis' e cis a4.) |
  a,8( cis a' b cis b a e) |
  d( fis cis' e cis a) r4 |

  g,8( b d fis a fis d b) |
  g( b d fis a2) |
  g,8( b d fis a fis d b) |
  g( b d fis a4) r |

  a,8( e' a b cis b a e) |
  a, cis e a r2 |
  b,8( d fis a cis2) |
  b,8( d fis a cis2) |

  g,8( b d fis a2) |
  e1 |
  e,8--( gis! b e gis e b gis) |
  e--( gis b e gis e b gis) |

  g( b d fis a fis d b) |
  a( cis e a cis b a e) |
  e,( gis! b e gis2) |
  e,8( gis b e \parenthesize gis2_\fermata) |
  \bar "|."
}

dynamics = {
  s1\ppp |
  s1 |
  s\< |
  s2 s4\! s |

  s1\mp |
  s |
  s |
  s |

  s\mf |
  s |
  s |
  s |

  s2\< s8\!\> s s s\! |
  s4\p\< s2 s8 s\! |
  s1\f |
  s |

  s |
  s\mp
  s |
  s |

  s\pp |
}

pedal = {
  s1\sustainOn |
  s2. s8 s\sustainOff |
  s1\sustainOn |
  s2. s8 s\sustainOff |

  s1\sustainOn |
  s2. s8 s\sustainOff |
  s1\sustainOn |
  s2 s8 s\sustainOff s4 |

  s1\sustainOn |
  s2. s8 s\sustainOff |
  s1\sustainOn |
  s2. s4\sustainOff |

  s2.\sustainOn s8 s\sustainOff |
  s2.\sustainOn s8 s16 s\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s2.\sustainOn s8 s\sustainOff |

  s2.\sustainOn s8 s\sustainOff |
  s2.\sustainOn s8 s16 s\sustainOff |
  s1\sustainOn |
  s2. s8 s16 s\sustainOff |

  s2.\sustainOn s8 s\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s1\sustainOn |
  s2. s8 s\sustainOff |
}

\score {
  \new PianoStaff <<
    \new Staff = "rh" \rh
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lh" \lh
    \new Dynamics = "pedal" \pedal
  >>
  \layout { }
  \midi { }
}

