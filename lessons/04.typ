#import "@preview/touying:0.6.1": *
#import themes.university: *

#show: university-theme.with(
  aspect-ration: "16-9",
  config-info(
    title: [Suomi 101],
    short-title: [Suomi 101 (#(sys.inputs.at("store-path", default: "non-deterministic")))],
    subtitle: [Nouns and scenarios],
    author: [Luukas Pörtfors],
    date: datetime(year: 2025, month: 11, day: 18),
    //institution: [Unaffiliated],
    logo: text(size: 40pt, "\u{1f1eb}\u{1f1ee}"),
  ),
  align: left + horizon,
)

#title-slide()

= Recap

== KPT-vaihtelu (Consonant Gradiation)

#let s(c) = text(weight: "bold", fill: red, c)
#let w(c) = text(weight: "bold", fill: green, c)

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

==

#slide(config: config-page(margin: (x: 0em)))[
  #set align(center)
  #text(
    23pt,
    table(
      columns: 7,
      align: left,
      table.header([*Basic*], [*Minä*], [*Sinä*], [*Hän*], [*Me*], [*Te*], [*He*]),
      // Nukkua
      [Nu#s[kk]ua], [Nu#w[k]un], [Nu#w[k]ut], [Nu#s[kk]uu], [Nu#w[k]umme], [Nu#w[k]utte], [Nu#s[kk]uvat],
      // Auttaa
      [Au#s[tt]aa],
      [Au#w[t]an],
      [Au#w[t]at],
      [Au#s[tt]aa],
      [Au#w[t]amme],
      [Au#w[t]atte],
      [Au#s[tt]avat],
      // Tietää
      [Tie#s[t]ää],
      [Tie#w[d]än],
      [Tie#w[d]ät],
      [Tie#s[t]ää],
      [Tie#w[d]ämme],
      [Tie#w[d]ätte],
      [Tie#s[t]ävät],
      // Ymmärtää
      [Ymmä#s[rt]ää],
      [Ymmä#w[rr]än],
      [Ymmä#w[rr]ät],
      [Ymmä#s[rt]ää],
      [Ymmä#w[rr]ämme],
      [Ymmä#w[rr]ätte],
      [Ymmä#s[rt]ävät],
    ),
  )
]

== Vowels in Finnish

#slide[
  #set align(center)
  #image("images/finnish_vowel_harmony.png")
  #place(center + horizon, dx: -16%, dy: -32%)[Front]
  #place(center + horizon)[Middle]
  #place(center + horizon, dx: 16%, dy: -32%)[Back]
]

== Common phrases

#slide[
  #set text(30pt)

  #table(
    columns: (1fr,) * 2,
    inset: 0.3em,
    table.header([*Phrase*], [*English translation*]),
    [Hei / Moi], [Hi],
    [Kiitos], [Thank you],
    [Ole hyvä], [You're welcome],
    [Anteeksi], [I'm sorry / Excuse me],
    [Ei se mitään], [No problem / don't worry],
    [Mitä kuuluu?], [How are you?],
    [Kippis #emoji.beer], [Cheers],
  )
]

== Verbtype 1

#table(
  columns: 8,
  table.header([English], [Finnish], [minä], [sinä], [hän], [me], [te], [he]),
  [to speak], [puhua], [puhu#s[n]], [puhu#s[t]], [puhu#s[u]], [puhu#s[mme]], [puhu#s[tte]], [puhu#s[vat]],
  [to drive], [ajaa], [aja#s[n]], [aja#s[t]], [aja#s[a]], [aja#s[mme]], [aja#s[tte]], [aja#s[vat]],
  [to cry], [itkeä], [itke#s[n]], [itke#s[t]], [itke#s[e]], [itke#s[mme]], [itke#s[tte]], [itke#s[vät]],
  [], [-], [-n], [-t], [-a#footnote[The last vovel]], [-mme], [tte], [vat/vät],
)

= Nouns & Scenarios

== Meme of the week

#slide[
  Keep out of the reach and sight of children.

  Close the can tightly.\ Swallow (it) whole.
][
  #image("images/niele_kokonaisena.jpg")
]

== Cases

#slide[
  - Finnish nouns have $approx 15$ cases#footnote[There's actually more of them, but they are considered dead/inactive (legacy)]
    - they mostly replace English prepositions
  - "paikallissijamuodot"
][
  #table(
    columns: 3,
    table.header([*Case*], [*Finnish*], [*English*]),
    [Nominative], [Pur#s[kk]i], [can],
    [Genetive], [Pur#w[k]i#strong[n]], [can's],
    [Inessive], [Pur#w[k]i#strong[ssa]], [in the can],
    [Elative], [Pur#w[k]i#strong[sta]], [from the can],
    table.cell(colspan: 3)[$ dots.v $],
  )
]

== Kahvilassa -- at the cafe (words)

#grid(columns: (1fr,) * 2, column-gutter: 1em, [
    #table(
      columns: (1fr,) * 2,
      table.header([*Suomeksi*], [*Enlanniksi*]),
      [kahvi], [coffee],
      [kahvila#footnote[The -_la_ suffix often refers to a place, for example kahvi $->$ kahvila, sika $->$ sikala, mummo $->$ mummola]],
      [cafe],
      [kahvilassa], [at/in the cafe],

      [tee], [tea],
      [vessa], [bathroom],
      [mehu], [juice],
      [keksi], [cookie],
      [pulla], [(cinnamon) bun],
    )
  ], [

    #table(
      columns: (1fr,) * 2,
      table.header([*Suomeksi*], [*Enlanniksi*]),
      [maksaa], [to cost],
      [hinta], [price],
      [kuitti], [receipt],
      [euro], [euro],
      [sentti#footnote[_Sentti_ is also used to refer to centimeters: _Olen 172 senttiä pitkä_]], [cent],
      [pöytä], [table],
      [tuoli], [chair],
      [ikkuna], [window],
    )
  ])

== Kahvilassa -- at the cafe (phrases)

#let e = t => strong(t)

#table(
  columns: (1fr,) * 2,
  [Mitä saisi olla?], [What can I get you?],
  [Kahvi ja pulla kiitos], [A coffee and a bun please],
  [Mehu ja keksi kiitos], [A juice and a cookie please],
  [Se maksaa 5 euroa ja 25 senttiä], [That costs 5 euro and 25 cents],
  [Missä on vessa?], [Where is the bathroom?],
  [Kulma#e[n] takana oikea#e[lla]], [Behind the corner on the right side],
  [Hyvää päivänjatkoa!], [Have a nice day!],
  [Kiitos samoin], [Thanks, you too!],
  [Istun ikkuna#e[n] viere#e[ssä]#footnote[Vieri (side, region next to something) is a somewhat special word:\ https://www.kielitoimistonsanakirja.fi/#/vieri]], [I'm sitting next to the window],
  [#pause Juon kahvi#e[a] ja syön pulla#e[a]], [I'm drinkin coffee and eating a bun],
)

==

#slide[
  #set align(center)
  #image("images/qa_engineer_bar.jpg")
]

== Let's practice

#alternatives[
  - Hei!
  - Mitä saisi olla?
  - #box(width: 5em, repeat[.]) ja #box(width: 5em, repeat[.]) (#emoji.coffee & bun) kiitos.
  - Se maksaa #box[...] euroa (ja #box[...] senttiä)
  - Hyvää päivänjatkoa!
  - #box(width: 5em, repeat[.])!
][
  - Minä tilasin kahvi#e[a] ja pulla#e[a], mitä sinä tilasit? (What did you order?)
  - #box[..............] (#emoji.cookie & #emoji.juice)
  - Missä haluat istua? (Where do you want to sit?)
  - #box[..............] (#emoji.window #emoji.arrow.l)
  - Se käy! Tiedätkö missä on vessa?
  - En tiedä #emoji.face.tear
]

== Kaupassa -- at the (grocery) store (words)

#grid(columns: (1fr,) * 2, column-gutter: 0em, [
    #table(
      columns: (1fr,) * 2,
      table.header([*Suomeksi*], [*Enlanniksi*]),
      [kau#s[pp]a], [store],
      [kau#w[p]assa], [in the store],
      [maito], [milk],
      [leipä], [bread],
      [juusto], [cheese],
      [kananmuna], [egg (chicken)],
      [hedelmä], [fruit],
      [vihannes], [vegetable],
      [kurkku], [cucumber],
      [peruna], [potato]
    )
  ], [
    #table(
      columns: (1fr,) * 2,
      table.header([*Suomeksi*], [*Enlanniksi*]),
      [tuote], [product],
      [myyjä], [cashier],
      [vesi], [water],
      [ruoka], [food],
      [juoma], [drink],
      [liha], [meat],
      [kala], [fish],
      [kassa], [checkout (place)],
      [ostos / ostokset], [purchase(s)],
      [kortilla], [by card],
    )
  ])

== Pikakassa

#slide[
  #alternatives[
    Lue tuote tai valitse näytöllä olevista vaihtoehdoista.

    Lue S-Etukortti, jos sinulla ei ole S-Etukorttia, paina "Ei S-Etukorttia" -näppäintä

    Seuraa kortinlukijan ohjeita.

    Kiitos käynnistä ja tervetuloa uudelleen!
  ][
    Read the product or choose from the choices shown on the screen.

    Read your S-Etukortti card if you do not have an S-Etukortti card, press the "No S-Etukortti card" button

    Follow the instructions of the card reader.

    Thanks for the visit and welcome again!
  ]
][
  #image("images/pikakassa.jpg")
]

== Phrases -- at the (grocery) store (words)

#table(
  columns: (1fr,) * 2,
  [Anteeksi, missä $bb(x)$ on?], [Excuse me, where is $bb(x)$?],
  [Anteeksi, mitä $bb(x)$ maksaa?], [Excuse me, how much is $bb(x)$?],
  [Tarvitsetko kuitin? / Kuittia?], [Do you want a receipt?],
  [Ei kiitos], [No thanks],
  [Tarvitse(tte)ko apua?], [Do you need help?],
  [Etsin $bb(x)$:ää (partitive)], [I'm looking for $bb(x)$],
  [Maksatko kortilla vai käteisellä?], [Do you pay with card (x)or cash?],
  [Kiitos käynnistä ja terveetuloa uudelleen!], [Thanks for the visit and welcome again!],
)

== Mooooooooore examples

#alternatives[
  - Hei, tarvitsetko apua?
  - Kyllä kiitos, missä #box[.........] on?
  - Se löytyy hyllystä numero 5, tuosta suunnasta #emoji.arrow.tr
  - Kiitos
][
  - Moi!
  - Moi
  - Se tekee yhteensä 55 euroa ja 29 senttiä. Maksatko kortilla vai käteisellä?
  - #box[.......] (#emoji.card) kiitos
  - Kiitos ja hyvää päivänjatkoa
  - Kiitos samoin!
][
  - Anteeksi, mitä #box[........] (#emoji.fish) maksaa?
  - Sen maksaa 5,50€
  - Kiitos!
  - Entä paljonko #box[..........] (#emoji.meat) maksaa?
  - Se maksaa 7,90€ kilolta (per kilo)
]

= Interesting things

== Accusative vs. partitive

#table(
  columns: (1fr,) * 3,
  table.header([*Case*], [*Finnish*], [*English*]),
  [Nominative], [Pur#s[kk]i], [can],
  [Accusative], [Pur#w[k]in / Pur#s[kk]i], [can (whole)],
  [Partitive], [Pur#s[kk]ia], [can (part of)],
)

- In Finnish, we're able to distinguish between partial and whole objects

=== Present tense

- Maalaan talon (I'm painting the (whole) house)
- Maalaan taloa (I'm painting a house)

=== Imperfect tense

- Luin kirjaa (I (partially) read a book / I was reading a book)
- Luin kirjan (I read (and completed) a book)

== Verb modes/moods
