#import "@preview/touying:0.6.1": *
#import themes.university: *

#show: university-theme.with(
  aspect-ration: "16-9",
  config-info(
    title: [Suomi 101],
    short-title: [Suomi 101 (#(sys.inputs.at("store-path", default: "non-deterministic")))],
    subtitle: [Vowels and sounds],
    author: [Luukas Pörtfors],
    date: datetime.today(),
    //institution: [Unaffiliated],
    logo: text(size: 40pt, "\u{1f1eb}\u{1f1ee}"),
  ),
  align: left + horizon,
)

#title-slide()

= Recap

== Features of the Finnish language

#slide[
  - Phonetic spelling
  - Vowel harmony
  - Difficult
  - Almost useless
][
  #image("images/exceptions-everywhere.jpg")
]

== Common phrases

#slide[
  #set text(30pt)

  #table(
    columns: (1fr,) * 2,
    inset: 0.3em,
    table.header([*Phrase*], [*English translation*]),
    [Kiitos], [Thank you],
    [Ole hyvä], [You're welcome],
    [Anteeksi], [I'm sorry / Excuse me],
    [Ei se mitään], [No problem / don't worry],
    [Mitä kuuluu?], [How are you?],
    [Kippis #emoji.beer], [Cheers],
  )
]

== Greetings

#slide[
  #let p = c => text(fill: purple, c)
  #let g = c => text(fill: green.darken(30%), c)
  #let b = c => text(fill: blue, c)
  #let o = c => text(fill: orange.darken(10%), c)

  #set text(40pt)


  $
    underbracket(#p("Minun") #g("nim" + p("eni")) #o("on") #b("Luukas"), #p("My") #g("name") #o("is") #b("Luukas")) \
    underbracket("Hauska" "tavata!", "Nice" "to" "meet" "you!")
  $
]


= Vowels

== Vowels in Finnish

#slide[
  - Categorized into front, middle and back vowels based on sound production
  - Short vowels and long vowels
    - e.g. `a` and `aa`
][
  #image("images/finnish_vowel_harmony.png")
]

== Let's practice vowels

#slide[
  #set align(center)
  #image("images/vowel_practice.png")
]

==

#slide[
  #set align(center)
  #image("images/vowel_practice2.png")
]

== Numbers


#columns(
  2,
  text(
    26pt,
    table(
      columns: 2,
      [0], [nolla],
      [1], [yksi],
      [2], [kaksi],
      [3], [kolme],
      [4], [neljä],
      [5], [viisi],
      [6], [kuusi],
      [7], [seitsemän],
      [8], [kahdeksan],
      [9], [yhdeksän],
      [10], [kymmenen],
      [11], [yksitoista],
      [12], [kaksitoista],
      [13], [kolmetoista],
      [14], [neljätoista],
      [15], [viisitoista],
      [16], [kuusitoista],
      [17], [seitsemäntoista],
      [18], [kahdeksantoista],
      [19], [yhdeksäntoista],
      [20], [kaksikymmentä],
      [21], [kaksikymmentäyksi],
      [22], [kaksikymmentäkaksi],
      [30], [kolmekymmentä],
      [100], [sata],
      [101], [satayksi],
      [200], [kaksisataa],
      [1000], [tuhat],
    ),
  ),
)

== Pronouns and to be

#let s = strong

#table(
  columns: (2fr, 2fr, 2fr),
  table.header([*English*], [*Finnish*], [*Olla*]),
  [I], [minä], [ole#s[n]],
  [you], [sinä], [ole#s[t]],
  [he/she/it], [hän/se], [on],
  [we], [me], [ole#strong[mme]],
  [You], [te], [ole#s[tte]],
  [they], [he/ne], [o#s[vat]],
)

= A sneak peak to what's coming up

== What I'm thinking of teaching

#grid(
  columns: (2fr, 1fr),
  [
    - basic *practical* phrases
      - introducing oneself
      - ordering at a restaurant
    - numbers
    - basic grammar
  ],
  [
    #image("images/simple.png")
  ],
)

=== What would you like to learn?

== Finnish grammar

- instead of prepositions (in, at, ...) we modify the word itself
- Finnish nouns have 15+ causes
- Overall it's pretty common for words to change depending on the context
- Wikipedia seems to have a pretty good overview on Finnish grammar#footnote[https://en.wikipedia.org/wiki/Finnish_grammar]
- *WARNING*: Finnish grammar is a deep rabbit hole

#focus-slide()[
  #set text(20pt)
  #table(
    columns: (1fr, 1fr, 1fr),
    table.header([Case], [Ending], [English]),
    [Nominative], [], [Regular form],
    [Genetive], [-n], [-'s, posession],
    [Accusative], [-, -n], [Object (whole)],
    [Paritive], [-(t)a, -tta], [Object (incomplete)],
    [Inessive], [-ssa, -ssä], [In],
    [Elative], [-sta, -stä], [From (inside)],
    [Illative], [-an, -en (-hVnV)], [Into],
    [Adessive], [-lla, -llä], [at, on],
    [Ablativ], [-lta, -ltä], [from],
    [Allative], [-lle], [to (outside), onto],
    [Essive], [-na, nä], [as],
    [Translative], [-ksi], [into (change)],
    [Instructive], [-n], [with, using],
    [Abessive], [-tta or -ttä], [without],
    [Comitative], [-ne-], [togetherer with],
  )
]

== Spoken Finnish

#slide[
  #let p = c => text(fill: purple, c)
  #let g = c => text(fill: green.darken(30%), c)
  #let b = c => text(fill: blue, c)
  #let o = c => text(fill: orange.darken(10%), c)

  #set text(40pt)

  $
    &underbracket(#p("Minä") #g("ole" + p("n")) #b("koulu" + o("ssa")), #p("I") #g("am") #o("at") #b("school")) \
    #pause
    ==>^(#emoji.school) &#g("ole" + p("n")) #b("koulu" + o("ssa")) \
    #pause
    ==>^(#emoji.troll) &#g("oo" + p("n")) #b("koulu" + o("s"))
  $
]


= Tongue twisters & goofs

== Kuusi palaa

#slide[
  #set align(center)
  #image("images/kuusi-palaa.png")
]

== Importance of differenciating a and ä

#slide[
  #set align(center)
  #image("images/nainko-vaarin.jpg")
]

== Tongue twisters

#slide[
  #set text(30pt)
  - vesihiisi sihisi hississä
    - A water troll was hissing in the elevator
  - mustan kissan paksut posket
    - Black cats' fat cheeks
  - Kokko, kokoo kokoon koko kokko. – Koko kokkoko? – Koko kokko.
    - Put the whole bonfire together. The whole bonfire? The whole bonfire.
]
==
==

#slide[
  #set text(30pt)
  Juoksentelisinkohankaan

  I wonder if I should run around aimlessly
]

= Additional material

== Materials

- this course will be (loosely) based on some existing Finnish materials
  - Hauska tavata#footnote[https://hauskatavata.fi] -book (free)
  - My mom #emoji.face.hearts
  - other books (didn't have time to finish the list)
- If you want to look for materials on your own, I recommend searching for "s2 opetusmateriaali" or similar
