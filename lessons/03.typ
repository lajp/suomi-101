#import "@preview/touying:0.6.1": *
#import themes.university: *

#show: university-theme.with(
  aspect-ration: "16-9",
  config-info(
    title: [Suomi 101],
    short-title: [Suomi 101 (#(sys.inputs.at("store-path", default: "non-deterministic")))],
    subtitle: [Conjugation],
    author: [Luukas Pörtfors],
    date: datetime.today(),
    //institution: [Unaffiliated],
    logo: text(size: 40pt, "\u{1f1eb}\u{1f1ee}"),
  ),
  align: left + horizon,
)

#title-slide()

= Recap

== Vowels in Finnish

#slide[
  - Categorized into front, middle and back vowels based on sound production
  - Short vowels and long vowels
    - e.g. `a` and `aa`
][
  #image("images/finnish_vowel_harmony.png")
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

==

#slide[
  #set align(center)
  #image("images/i_want_to_learn_finnish.jpg")
]

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

== Verbtype 1

#table(
  columns: 8,
  table.header([English], [Finnish], [minä], [sinä], [hän], [me], [te], [he]),
  [to speak], [puhua], [puhu#s[n]], [puhu#s[t]], [puhu#s[u]], [puhu#s[mme]], [puhu#s[tte]], [puhu#s[vat]],
  [to drive], [ajaa], [aja#s[n]], [aja#s[t]], [aja#s[a]], [aja#s[mme]], [aja#s[tte]], [aja#s[vat]],
  [to cry], [itkeä], [itke#s[n]], [itke#s[t]], [itke#s[e]], [itke#s[mme]], [itke#s[tte]], [itke#s[vät]],
)


= Conjugation

== First some picture of trams

#slide[
  #image("images/tram1.jpg")
][
  #image("images/tram2.jpg")
]

== And one meme (compound words are difficult)

#slide[
  #image("images/potilas_jaakaapissa.jpg")
][
  #quote(block: true)[
    _Potilas jääkaapissa_ tarjolla vettä ja mehua
  ]
  _A patient in the fridge_ water and juice are served

  #quote(block: true)[
    _Potilasjääkaapissa_ tarjolla vettä ja mehua
  ]
  _In the patient fridge_ water and juice are served
]

= KPT-vaihtelu\ (Consonant Gradiation)

#[
  #set text(20pt, weight: "medium")
  #quote(block: true, attribution: [http://www.thefinnishteacher.com/kpt.html])[
    Students usually curl up in a fetal position and start sucking their thumbs when they see this.
  ]
]

== KPT

#let s(c) = text(weight: "bold", fill: red, c)
#let w(c) = text(weight: "bold", fill: green, c)

- Consonants K, P and T can change
  - when they appear in the middle of a word
- Change takes place when conjugating the word
  - both in nouns and verbs
- Consonants have a #s["strong"] and #w["weak"] grade

=== Example:
$
  #("kaa" + s("pp") + "i")#footnote[Kaappi $=>$ closet, jääkaappi $=>$ fridge (lit. ice closet)] -->^"KPT" #("kaa" + w("p") + "issa")
$

== KPT (common occurrences)

#table(
  columns: (1fr,) * 4,
  table.header([*Strong*], [*Weak*], [*Regular*], [*Inessive*]),
  s[kk], w[k], [Pan#s[kk]i], [Pan#w[k]issa],
  s[pp], w[p], [Kau#s[pp]a], [Kau#w[p]assa],
  s[tt], w[t], [Ka#s[tt]o], [Ka#w[t]ossa],
  table.hline(stroke: 2pt),
  s[k], w[-], [Jo#s[k]i], [Joessa],
  s[p], w[v], [Hal#s[p]a], [Hal#w[v]assa],
  s[t], w[d], [Pöy#s[t]ä], [Pöy#w[d]ässä],
  table.hline(stroke: 2pt),
  s[rt], w[rr], [Pa#s[rt]a], [Pa#w[rr]assa],
  s[lt], w[ll], [Si#s[lt]a], [Si#w[ll]assa],
  s[nt], w[nn], [Ra#s[nt]a], [Ra#w[nn]assa],
  s[nk], w[ng], [Helsi#s[nk]i], [Helsi#w[ng]issä],
  s[mp], w[mm], [Ka#s[mp]a], [Ka#w[mm]assa],
)

== Similarly with verbs (verbtype 1)

#slide(config: config-page(margin: (x: 0em)))[
  #set align(center)
  #text(
    23pt,
    table(
      columns: 7,
      align: left,
      table.header([*Basic*], [*Minä*], [*Sinä*], [*Hän*], [*Me*], [*Te*], [*He*]),
      // Nukkua
      [Nu#s[kk]ua], [#pause Nu#w[k]un], [Nu#w[k]ut], [Nu#s[kk]uu], [Nu#w[k]umme], [Nu#w[k]utte], [Nu#s[kk]uvat],
      // Auttaa
      [Au#s[tt]aa],
      [#pause Au#w[t]an],
      [#pause Au#w[t]at],
      [#pause Au#s[tt]aa],
      [#pause Au#w[t]amme],
      [#pause Au#w[t]atte],
      [#pause Au#s[tt]avat],
      // Tietää
      [Tie#s[t]ää],
      [#pause Tie#w[d]än],
      [Tie#w[d]ät],
      [Tie#s[t]ää],
      [Tie#w[d]ämme],
      [Tie#w[d]ätte],
      [Tie#s[t]ävät],
      // Ymmärtää
      [Ymmä#s[rt]ää],
      [#pause Ymmä#w[rr]än],
      [Ymmä#w[rr]ät],
      [Ymmä#s[rt]ää],
      [Ymmä#w[rr]ämme],
      [Ymmä#w[rr]ätte],
      [Ymmä#s[rt]ävät],
    ),
  )
]

== Kaupassa -- in the store

#let p = c => text(fill: purple, c)
#let v = c => text(fill: green.darken(30%), c)
#let n = c => text(fill: blue, c)
#let c = c => text(fill: orange.darken(10%), c)
#let q = c => text(fill: yellow.darken(10%), c)

#grid(
  columns: (1fr,) * 2,
  $underbrace(#q("Mitä") #n("leipä") #v("maksa" + n("a") + q[?]), #q("What") #v("does") #n("the bread") #v("cost" + q[?]))$,
  $underbrace(#p("Se") #v("maksa" + p("a")) #n("2 euroa")., #p("It") #v("cost" + p("s")) #n("2 euros").)$,
)

- Se maksaa 2 euroa.

= Goofs

==

#slide[
  #quote[If you're looking for an aromatic French wine, I recommend Maquis by Pieru]

  Sounds like:\ Pierun makuista $=>$ Fart tasting
][
  #image("images/pierun_maquista.png")
]
