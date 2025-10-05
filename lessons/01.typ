#import "@preview/touying:0.6.1": *
//#import themes.stargazer: *
#import themes.university: *

#show: university-theme.with(
  aspect-ration: "16-9",
  config-info(
    title: [Suomi 101],
    short-title: [Suomi 101 (#(sys.inputs.at("store-path", default: "non-deterministic")))],
    subtitle: [Pilot lesson],
    author: [Luukas Pörtfors],
    date: datetime.today(),
    //institution: [Unaffiliated],
    logo: text(size: 40pt, "\u{1f1eb}\u{1f1ee}"),
  ),
  align: left + horizon,
)

#title-slide()

== Hi everone! I'm Luukas

#grid(
  columns: (3fr, 1fr),
  [
    - "Studying" Master's in CS \@ Aalto University
      - and Bachelor's in Math \@ University of Helsinki
    - I normally teach _programming_ languages
      - CS-C2170 Programming Languages#footnote("https://fitech101.aalto.fi/en/courses/modern-and-emerging-programming-languages") \@ Aalto
      - Rust Programming #footnote("https://d3s.mff.cuni.cz/teaching/nprg082/") \@ Charles University

    - I speak Finnish, Swedish, and English
  ],
  [
    #image("images/toimarikuva_cropped.jpg")
  ],
)

==

#outline(depth: 1, title: none)

#slide[
  #set align(center)
  #figure(
    caption: text(12pt)[https://www.reddit.com/r/MapPorn/comments/1bg1e0w/peoples_common_reaction_when_you_start_speaking/],
    supplement: none,
    image("images/language-speaking-reaction.jpg"),
  )
]

= Finnish culture and language

== Finland

#grid(
  columns: (4fr, 1fr),
  [
    - A _Nordic_ country with a population of $approx 5 "M"$
    - "Land of a thousand lakes"
    - Official languages: Finnish (84.1%) and Swedish (5.1%)
    - Gained independence from Soviet Russia in 1917
      - part of Sweden until 1809
    - Known for being happy, sauna, heavy metal, nature, technology and video games
  ],
  [
    #image("images/finland-languages.png")
  ],
)

==

#set align(center)

#block(
  inset: 1em,
  figure(
    caption: [https://knowyourmeme.com/memes/finland-does-not-exist],
    supplement: none,
    image("images/finland-does-not-exist.jpg"),
  ),
)


== The Finnish language

- Spelling is _phonetic_, meaning that *letters are always pronounced the same way* (similar to Czech)
- The stress is most often placed on the first syllable
- Finnish may sound somewhat monotonic
- #emoji.harp Vowel harmony #emoji.star #emoji.mage
- Finnish is most likely very different from other languages you know

== The Finnish alphabet

==

#text(
  60pt,
  $
    Sigma_"fi" = Sigma_"sv" = Sigma_"en" union { "å", "ä", "ö" }
  $,
)

= Greetings and common phrases

== Greetings

#image("images/introductions.png")

== Introducing yourself
#slide[
  #set text(40pt)
  $
    underbrace("Hei!", "Hi!") "   " underbrace("Minun", "My") underbrace("nimeni", "name") underbrace("on", "is") "Luukas!" \
    underbrace("Hauska" "tavata!", "nice to meet you")
  $
]

== Introductions

#slide[
  #set text(30pt)
  === Let's practice

  - Hei! Minun nimeni on [own name]
  - Hei! [friend's name], minun nimeni on [own name]
  - Hauska tavata!
]


== Common words and phrases
== Common words and phrases

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
