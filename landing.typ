#import "@preview/fontawesome:0.6.0": *
#import "@preview/zero:0.5.0": num

//#let quotation = json(bytes(sys.inputs.quotation))
//#let lecture = quotation.lecture 
//#let workshop = quotation.workshop 
//#let crashcourse = quotation.crashcourse 

#let nord = (
  "polarNight": (
    "darkest": rgb("#242933"),
    "darker": rgb("#2E3440"),
    "dark": rgb("#3B4252"),
    "light": rgb("#434C5E"),
    "lighter": rgb("#4C566A"),
    "lightest": rgb("#616e88"),
  ),
  "snowStorm": (
    "dimmest": rgb("#A9B1BF"),
    "dimmer": rgb("#C2C7D1"),
    "normal": rgb("#D8DEE9"),
    "brighter": rgb("#E5E9F0"),
    "brightest": rgb("#ECEFF4"),
  ),
  "frost": (
    "polarWater": rgb("#8FBCBB"),
    "clearIce": rgb("#88C0D0"),
    "arcticWater": rgb("#81A1C1"),
    "deepOcean": rgb("#5E81AC"),
  ),
  "aurora": (
    "error": rgb("#BF616A"),
    "dangerous": rgb("#D08770"),
    "warning": rgb("#EBCB8B"),
    "success": rgb("#A3BE8C"),
    "uncommon": rgb("#B48EAD"),
  ),
)

#let theme = (
  //"background": gradient.linear( nord.polarNight.darker, nord.polarNight.darkest, angle: 270deg),
  "background": gradient.radial(
    nord.polarNight.darker,
    nord.polarNight.darkest,
    //center: (90%, 25%),
    center: (1%, 1%),
    radius: 61%
  ),
  "primary": nord.snowStorm.normal,
  "secondary": nord.snowStorm.brighter,
  "accentColor": nord.frost.deepOcean,
  "textPrimary": nord.snowStorm.normal,
  "textSecondary": nord.snowStorm.brighter,
  "textTertiary": nord.snowStorm.brightest,
  "item": nord.snowStorm.dimmest,
  "divider": nord.snowStorm.normal,

  "typst": nord.frost.clearIce,
  //"typst": rgb("#239dae"),
)


#let config = (
  //"font": "MonaspiceAr NFP",
  "font": "Fira Sans",
  "size": 1em,
  "margin": (x: 0em, y: 0em),
  "header": (
    "margin": (
      "x": 1em,
      "y": 0.61em,
    ),
  ),
  "footer": (
    "size": 0.61em,
    "transparentize": 39%,
  ),
  "blocks": (
    "width": 100%,
    "sticky": true,
    "inset": 0em,
    "outset": 0em,
    "spacing": 0em,
  ),
  "services": (
    "standout": 1em,
    "margin": (
      "x": 1fr,
      "y": 1.61em,
    ),
    "stack": (
      "spacing": 1.61fr,
    ),
    "block": (
      "stroke":
        gradient.radial(
          nord.polarNight.light,
          nord.polarNight.dark,
          center: (100%, 50%),
          radius: 61%
        ),
      "radius": 1em,
      "inset": 1.5em,
      "width": 19em,
      "height": 20em,
    ),
  ),
  "topics": (
    "margin": (
      "x": 1fr,
      "y": 1.61em,
    ),
    "block": (
      "stroke": (
        "top": 0.2em +
            gradient.linear(
              nord.frost.arcticWater,
              nord.frost.deepOcean,
            ),
        "rest":
          gradient.radial(
            nord.polarNight.light,
            nord.polarNight.dark,
            center: (99%, 99%),
            radius: 61%
        ),
      ),
      "fill": gradient.radial(
        nord.polarNight.dark,
        nord.polarNight.darker,
        center: (99%,99%),
        radius: 50%
      ),
      "radius": 1em,
      "inset": 1.5em,
      "width": 19em,
      "height": 15em,
    ),
    "stack": (
      "spacing": 1.61fr,
    ),
    "icons": (
      "solid": true,
      "fill": gradient.linear(
        nord.frost.arcticWater,
        nord.frost.deepOcean,
        nord.polarNight.darker,
        nord.polarNight.darkest,
        angle: 55deg,
      ),
    ),
    "header": (
      "text": (
        "size": 1.3em,
        "weight": "semibold",
      ),
    ),
  ),
  "stats": (
    "margin": (
      "x": 1fr,
      "y": 1.61em,
    ),
    "stack": (
      "spacing": 4em,
    ),
    "textMain": (
      "size": 2em,
      "weight": "bold",
      "fill": gradient.linear(
        nord.frost.polarWater,
        nord.frost.clearIce,
      ),
    ),
    "textSub": (
      "size": 1em,
      "weight": "regular",
      "fill": gradient.linear(
        nord.snowStorm.dimmer,
        nord.snowStorm.normal,
      ),
    ),
  ),
  "tag": (
    "block": (
      "fill":
        gradient.radial(
          nord.polarNight.dark,
          nord.polarNight.darker,
          center: (99%, 50%),
          radius: 61%
        ),
      "radius": 100%,
      "inset": (x: 1em, y: 0.61em),
    ),
    "text": (
      "size": 9pt,
      "fill": gradient.linear(
        nord.frost.polarWater,
        nord.frost.clearIce,
      ),
      "weight": "regular",
    )
  )
)

#set par(justify: true)

#set text(
  font: config.font,
  fill: theme.primary,
  size: config.size
)

#show link: set text(fill: nord.snowStorm.dimmer)

#show smallcaps: set text(font: "Fira Sans")

#show heading: smallcaps
#show heading.where(level: 1): set text(fill: theme.primary, tracking:0.03em, size: 1.6em, weight: "bold", font: config.font)
#show heading: it => [#align(center)[#it]]

#let web_quality = 810pt
#let print_quality = 260pt
#let proportion = 4/3

#set page(
  width: web_quality,
  height: web_quality*proportion,
  margin: config.margin,
  fill: theme.background,
)


#[
  #v(config.header.margin.y)
  #h(config.header.margin.x)
  #text(
    fill: nord.frost.arcticWater,
    [Mateus Furquim]
  )
  #h(1fr)
  #text(
    fill: nord.snowStorm.dimmer,
    [Treinamento e Consultoria em Engenharia de Software]
  )
  #h(config.header.margin.x)
],

#block(
  ..config.blocks,
  fill:
    gradient.radial(
      nord.polarNight.dark,
      nord.polarNight.darker,
      center: (99%, 99%),
      radius: 61%
    ),
  [
    #v(config.stats.margin.y)
    = Eleve Suas Habilidades

    #align(center)[
      Transforme as capacidades da sua equipe com palestras, workshop e cursos intensivos.
      #linebreak()
      Treinamento especializado em Python, Machine Learning, Arquitetura Back-end e práticas DevOps.

      #stack(
        ..config.stats.stack,
        dir: ltr,
        align(center)[
          #text(..config.stats.textMain, [10+])
          #linebreak()
          #text(..config.stats.textSub, smallcaps[Anos de Experiência])
        ],
        align(center)[
          #text(..config.stats.textMain, [8])
          #linebreak()
          #text(..config.stats.textSub,  smallcaps[Tecnologias])
        ],
        align(center)[
          #text(..config.stats.textMain, [3])
          #linebreak()
          #text(..config.stats.textSub,  smallcaps[Modalidades])
        ],
      )
    #v(config.stats.margin.y)
    ]
  ]
)

#block(
  ..config.blocks,
  fill:
    gradient.radial(
      nord.polarNight.darker,
      nord.polarNight.darkest,
      center: (0%, 0%),
      radius: 61%
    ),
  [
    #v(config.topics.margin.y)
    = Temas Disponíveis
    
    #align(center)[
      Conteúdos especializados para elevar suas habilidades técnicas.

      #stack(
        ..config.topics.stack,
        dir: ltr,
        [#h(config.topics.margin.x)],
        align(center)[
          #block(
            ..config.topics.block,
            [
              #fa-icon(
                ..config.topics.icons,
                "github",
                size: 4.2em
              )
              #v(-2em)
              #text(
                ..config.topics.header.text,
                [Git, Bash e Docker]
              )
              #linebreak()
              #v(0.61em)
              #text(size: 0.9em)[
                Controle de versão, automação de scripts e containerização de aplicações
              ]
            ]
          )
        ],
        align(center)[
          #block(
            ..config.topics.block,
            [
              #fa-icon(
                ..config.topics.icons,
                "code",
                size: 3.85em
              )
              #v(-2em)
              #text(
                ..config.topics.header.text,
                [Python, FastAPI e RabbitMQ]
              )
              #linebreak()
              #v(0.61em)
              #text(size: 0.9em)[
                Desenvolvimento back-end com APIs assíncronas e mensageria
              ]
            ]
          )
        ],
        align(center)[
          #block(
            ..config.topics.block,
            [
              #fa-icon(
                ..config.topics.icons,
                "gauge",
                size: 4em
              )
              #v(-2em)
              #text(
                ..config.topics.header.text,
                [Prometheus e Grafana]
              )
              #linebreak()
              #v(0.61em)
              #text(size: 0.9em)[
                Instrumentação, monitoramento e visualização de métricas em tempo real
              ]
            ]
          )
        ],
        [#h(config.topics.margin.x)],
      )
      #v(config.topics.margin.y)
    ]
  ]
)


#block(
  ..config.blocks,
  fill:
    gradient.radial(
      nord.polarNight.dark,
      nord.polarNight.darker,
      center: (100%, 0%),
      radius: 61%
    ),
  [
    #v(config.services.margin.y)
    = Caminho de Aprendizado

    #align(center)[
      Selecione o formato que melhor se adequa às necessidades da sua equipe
    ]

    #stack(
      ..config.services.stack,
      dir: ltr,
      [#h(config.services.margin.x)],
      align(left)[
        #v(config.services.standout)
        #block(
          ..config.services.block,
          stroke: (
            "top": 0.2em +
              gradient.linear(
                nord.polarNight.darker,
                nord.frost.clearIce, nord.frost.clearIce,
                nord.frost.clearIce, nord.frost.clearIce,
                nord.polarNight.darker,
              ),
            "rest":
              gradient.radial(
                nord.polarNight.light,
                nord.polarNight.dark,
                center: (99%, 50%),
                radius: 61%
            ),
          ),
          fill: gradient.radial(
            nord.polarNight.dark,
            nord.polarNight.darkest,
            center: (65%, 90%),
            radius: 100%
          ),
          [
            #text(size: 2em, weight: "semibold")[Palestra]
            #v(-0.6em)
            #set text(size: 1em, weight: "regular")
            #fa-icon("clock", fill: theme.item, solid: true)
            #h(0.2em)
            #text(weight: "regular")[1h45 - 2h00]

            Apresentações técnicas aprofundadas cobrindo tópicos avançados de engenharia de software.
            #[
              #set text(size: 1em)
              #set list(marker: [#v(-0.3em)#fa-icon("circle-check", fill: nord.aurora.success, solid: true)], spacing: 0.8em)
              - Cobertura abrangente do tópico
              - Sessão interativa de perguntas e respostas
              - Exemplos práticos e demonstrações
              - Materiais para download
            ]
          ]
        )
      ],
      align(left)[
        #block(
          ..config.services.block,
          stroke: (
            "top": 0.3em +
              gradient.linear(
                nord.polarNight.dark,
                nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
                nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
                nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
                nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
                nord.polarNight.dark,
              ),
            "rest":
              gradient.radial(
                nord.polarNight.light,
                nord.polarNight.dark,
                center: (99%, 50%),
                radius: 61%
            ),
          ),
          fill: gradient.radial(
            nord.polarNight.dark,
            nord.polarNight.darkest,
            center: (65%, 90%),
            radius: 100%
          ),
          [
            #text(size: 2em, weight: "semibold")[Workshop]
            #v(-0.4em)
            #set text(size: 1em, weight: "regular")
            #fa-icon("clock", fill: theme.item, solid: true)
            #h(0.2em)
            #text(weight: "regular")[2h30 - 3h00]

            Sessões práticas de wrkshop com exercícios práticos e aplicações do mundo real.
            #[
              #set text(size: 1.1em)
              #set list(marker: [#v(-0.3em)#fa-icon("circle-check", fill: nord.aurora.success, solid: true)], spacing: 0.8em)
              - Sessões de codificação ao vivo
              - Exercícios práticos do tema
              - Implementação de boas práticas
              - Revisão de código e #text(style:"oblique", "feedback")
            ]
          ]
        )
      ],
      align(left)[
        #v(config.services.standout)
        #block(
          ..config.services.block,
          stroke: (
            "top": 0.2em +
              gradient.linear(
                nord.polarNight.darker,
                nord.frost.clearIce, nord.frost.clearIce,
                nord.frost.clearIce, nord.frost.clearIce,
                nord.polarNight.darker,
              ),
            "rest":
              gradient.radial(
                nord.polarNight.light,
                nord.polarNight.dark,
                center: (99%, 50%),
                radius: 61%
            ),
          ),
          fill: gradient.radial(
            nord.polarNight.dark,
            nord.polarNight.darkest,
            center: (65%, 90%),
            radius: 100%
          ),
          [
            #text(size: 2em, weight: "semibold")[Intensivo]
            #v(-0.4em)
            #set text(size: 1em, weight: "regular")
            #fa-icon("clock", fill: theme.item, solid: true)
            #h(0.2em)
            #text(weight: "regular")[1h30 - 1h45 x 4 dias]

            Programa intensivo de 4 dias projetado para dominar todos os três temas disponíveis.
            #[
              #set text(size: 1.2em)
              #set list(marker: [#v(-0.3em)#fa-icon("circle-check", fill: nord.aurora.success, solid: true)], spacing: 0.8em)
              - Cobertura abrangente do tópico
              - Sessão interativa de perguntas e respostas
              - Exemplos práticos e demonstrações
              - Materiais para download
            ]
          ]
        )
      ],
      [#h(config.services.margin.x)],
    )
    #v(config.services.margin.y)
  ]
)

#block(
  ..config.blocks,
  fill:
    gradient.radial(
      nord.polarNight.darkest,
      nord.polarNight.darker,
      center: (1%, 1%),
      radius: 61%
    ),
  [
    #v(1.61em)
    = Sobre Mim

    #show emph: it => {
      text(
        fill: gradient.linear(
          nord.frost.arcticWater,
          nord.frost.deepOcean,
        ),
        weight: "medium",
        it.body
      )
    }
    
    #par(first-line-indent: (amount: 2em, all: true), justify: true)[
      Sou um Engenheiro de Software com mais de #emph[10 anos] de experiência,
      atuando em diversas áreas como #emph[Machine Learning], #emph[Back-end] e #emph[DevOps].
      Especialista em #emph[Python], #emph[RabbitMQ] e bancos de dados #emph[NoSQL].
      Comprometido com o crescimento da equipe e inovação através de mentoria e colaboração.
    ]
    
    #align(center)[
      // Tags
    #grid(
        columns: 6,
        gutter: 10pt,
        align: center,
        block(
          ..config.tag.block,
          text(..config.tag.text,
            [Python]
          )
        ),
        block(
          ..config.tag.block,
          text(..config.tag.text,
            [Machine Learning]
          )
        ),
        block(
          ..config.tag.block,
          text(..config.tag.text,
            [Arquitetura Backend]
          )
        ),
        block(
          ..config.tag.block,
          text(..config.tag.text,
            [DevOps]
          )
        ),
        block(
          ..config.tag.block,
          text(..config.tag.text,
            [RabbitMQ]
          )
        ),
        block(
          ..config.tag.block,
          text(..config.tag.text,
            [Cassandra]
          )
        )
      )
    ]
    #v(1.61em)
  ]
)


#place(bottom + left)[
  #set text(size: 1em, weight: "medium")
  #h(1em)
  #[
    #show link: emph
    #fa-icon("at", size: 1em, fill: theme.accentColor, solid: true)
    #h(-0.2em)
    #link("mailto:mfurquimdev@gmail.com")
  ]
  #h(9fr)
  #fa-icon("git", fill: theme.accentColor, solid: true)
  #h(-0.1em)
  mfurquimdev
  #h(0.61fr)
  #fa-icon("linkedin", fill: theme.accentColor, solid: true)
  #h(-0.1em)
  in/mfurquimdev
  #h(0.61fr)
  #fa-icon("link", fill: theme.accentColor, solid: true)
  #h(-0.2em)
  mfurquim.dev
  #h(1em)
  #linebreak()
  #h(1fr)
  #text(
    fill: theme.textPrimary.transparentize(config.footer.transparentize),
    font: "MonaspiceRn NFP",
    size: config.footer.size,
    [Made with],
  )
  #text(
    fill: theme.typst.transparentize(config.footer.transparentize),
    font: "MonaspiceKr NFP",
    size: config.footer.size,
    [typst],
  )
  #h(0.39em)
  #v(0.39em)
]
