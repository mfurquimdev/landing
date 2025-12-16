#import "@preview/fontawesome:0.6.0": *
#import "@preview/zero:0.5.0": num
#import "@preview/lucide:0.1.0": *

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
    center: (0%, 0%),
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
    "fade": 1em,
    "margin": (
      "x": 1fr,
      "y": 1.61em*1.61,
    ),
    "stack": (
      "spacing": 0.61fr,
    ),
    "standout": (
      "stroke": (
        "top": 0.3em +
          gradient.linear(
            nord.polarNight.darkest,
            nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
            nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
            nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
            nord.frost.deepOcean, nord.frost.deepOcean, nord.frost.deepOcean,
            nord.polarNight.darkest,
          ),
        "rest": 0.1em + nord.polarNight.darkest,
      ),
      fill: gradient.radial(
        nord.polarNight.dark,
        nord.polarNight.darkest,
        center: (75%, 100%),
        radius: 100%
      ),
    ),
    "block": (
      "stroke": (
        "top": 0.2em +
          gradient.linear(
            nord.polarNight.darker,
            nord.frost.clearIce, nord.frost.clearIce,
            nord.frost.clearIce, nord.frost.clearIce,
            nord.polarNight.darker,
          ),
        "rest":
          gradient.radial(
            nord.polarNight.darkest,
            nord.polarNight.darker,
            center: (100%, 100%),
            radius: 100%,
        ),
      ),
      "fill": gradient.radial(
        nord.polarNight.dark,
        nord.polarNight.darkest,
        center: (65%, 90%),
        radius: 100%
      ),
      "radius": 1em,
      "inset": 1.5em,
      "width": 20em,
      "height": 27em,
    ),
    "check": (
      "text": (
        "size": 1em,
      ),
      "space": 1fr,
      "icon": (
        "stroke": nord.aurora.success,
        "solid": true,
        "size": 0.8em,
      ),
    ),
  ),
  "topics": (
    "margin": (
      "x": 1fr,
      "y": 1.61em*1.61,
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
            center: (100%, 100%),
            radius: 61%
        ),
      ),
      "fill": gradient.radial(
        nord.polarNight.dark,
        nord.polarNight.darker,
        center: (100%,100%),
        radius: 61%
      ),
      "radius": 1em,
      "inset": 1.5em,
      "width": 19em,
      "height": 15em,
    ),
    "stack": (
      "spacing": 1.61fr,
    ),
    "lucide": (
      "size": 4em,
      "fill": gradient.linear(
        nord.frost.arcticWater,
        nord.frost.deepOcean,
        nord.polarNight.darker,
        nord.polarNight.darkest,
        angle: 55deg,
      ),
    ),
    "icons": (
      "size": 4em,
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
    "body": (
      "spacing": 0.61em,
      "text": (
        "size": 0.9em,
        "weight": "regular",
      ),
    ),
  ),
  "stats": (
    "margin": (
      "x": 1fr,
      "y": 1.61em*1.2,
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
          center: (100%, 50%),
          radius: 61%
        ),
      "radius": 100%,
      "inset": (x: 1em, y: 0.61em),
    ),
    "text": (
      "size": 0.8em,
      "fill": gradient.linear(
        nord.frost.clearIce,
        nord.frost.polarWater,
      ),
      "weight": "regular",
    )
  ),
  "about": (
    "margin": (
      "x": 1fr,
      "y": 1.61em*1.61,
    ),
    "width": 90%,
  ),
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
  #v(config.header.margin.y)
]

#block(
  ..config.blocks,
  fill:
    gradient.radial(
      nord.polarNight.dark,
      nord.polarNight.darker,
      center: (100%, 100%),
      radius: 61%
    ),
  [
    #v(config.stats.margin.y)
    = Eleve Suas Habilidades

    #align(center)[
      Transforme as capacidades da sua equipe com palestras, workshops e cursos intensivos.
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
      center: (0%, 100%),
      radius: 61%
    ),
  [
    #v(config.topics.margin.y)
    = Temas Disponíveis
    
    #align(center)[
      Conteúdos especializados para elevar suas habilidades técnicas.
      #v(config.topics.margin.y)
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
              )
              #v(1fr)
              #text(
                ..config.topics.header.text,
                [Git, Bash e Docker]
              )
              #linebreak()
              #v(1fr)
              #text(..config.topics.body.text)[
                Controle de versão, automação de scripts e containerização de aplicações
              ]
              #v(1fr)
            ]
          )
        ],
        align(center)[
          #block(
            ..config.topics.block,
            [
              #lucide-icon(
                "code-xml",
                ..config.topics.lucide,
              )
              #v(1fr)
              #text(
                ..config.topics.header.text,
                [Python, FastAPI e RabbitMQ]
              )
              #linebreak()
              #v(1fr)
              #text(..config.topics.body.text)[
                Desenvolvimento back-end com APIs assíncronas e mensageria
              ]
              #v(1fr)
            ]
          )
        ],
        align(center)[
          #block(
            ..config.topics.block,
            [
              #lucide-icon(
                "chart-no-axes-combined",
                ..config.topics.lucide,
              )
              #v(1fr)
              #text(
                ..config.topics.header.text,
                [Prometheus e Grafana]
              )
              #linebreak()
              #v(1fr)
              #text(..config.topics.body.text)[
                Instrumentação, monitoramento e visualização de métricas em tempo real
              ]
              #v(1fr)
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

    #v(1em)

    #stack(
      ..config.services.stack,
      dir: ltr,
      [#h(config.services.margin.x)],
      align(left)[
        #v(config.services.fade)
        #block(
          ..config.services.block,
          [
            #text(size: 2em, weight: "semibold")[Palestra]
            #linebreak()
            #set text(size: 1em, weight: "regular")
            #fa-icon("clock", fill: theme.item, solid: true)
            #h(0.2em)
            #text(weight: "regular")[1h45 - 2h00]
            #linebreak()
            #text("Apresentações técnicas aprofundadas cobrindo tópicos avançados de engenharia de software.")
            #v(config.services.check.space)
            #align(center)[
              #block(
                width: 90%,
                radius: 0.61em,
                inset: 1.5em,
                fill: gradient.radial(
                  nord.polarNight.darker,
                  nord.polarNight.darkest,
                  center: (65%, 90%),
                  radius: 100%,
                ),
                stroke: (
                  "top": 0.2em + nord.frost.clearIce,
                  "rest":gradient.radial(
                    nord.polarNight.darker,
                    nord.polarNight.darkest,
                    center: (65%, 90%),
                    radius: 100%,
                  ),
                ),
                [
                  #text(number-type: "lining", number-width: "tabular", tracking: 0.1em, weight: "extrabold", size: 2em,
                    "R$ 3.000"
                  )
                  #linebreak()
                  #smallcaps(
                    text(size: 0.85em, "Por Sessão")
                  )
                ]
              )
            ]
            #v(config.services.check.space)
            #[
              #set text(size: config.services.check.text.size)
              #set list(marker: [#v(-0.3em)#fa-icon("check",..config.services.check.icon)], spacing: 0.8em)
              - Cobertura abrangente do tópico
              - Sessão interativa com Quiz
              - Sessão de perguntas e respostas
              - Materiais para download
            ]
            #v(config.services.check.space)
          ]
        )
      ],
      align(left)[
        #block(
          ..config.services.block,
          ..config.services.standout,
          height: config.services.block.height + config.services.fade,
          [
            #text(size: 2em, weight: "semibold")[Workshop]
            #linebreak()
            #set text(size: 1em, weight: "regular")
            #fa-icon("clock", fill: theme.item, solid: true)
            #h(0.2em)
            #text(weight: "regular")[2h30 - 3h00]
            #parbreak()
            Sessões práticas de workshop com exercícios práticos e aplicações do mundo real.
            #v(config.services.check.space)
            #align(center)[
              #block(
                width: 90%,
                radius: 0.61em,
                inset: 1.5em,
                fill: gradient.radial(
                  nord.polarNight.darker,
                  nord.polarNight.darkest,
                  center: (65%, 90%),
                  radius: 100%,
                ),
                stroke: (
                  "top": 0.3em + nord.frost.deepOcean,
                  "rest":gradient.radial(
                    nord.polarNight.darker,
                    nord.polarNight.darkest,
                    center: (65%, 90%),
                    radius: 100%,
                  ),
                ),
                [
                  #text(number-type: "lining", number-width: "tabular", tracking: 0.1em, weight: "extrabold", size: 2em,
                    "R$ 5.000"
                  )
                  #linebreak()
                  #smallcaps(
                    text(size: 0.85em, "Por Sessão")
                  )
                ]
              )
            ]
            #v(config.services.check.space)
            #[
              #set text(size: config.services.check.text.size)
              #set list(marker: [#v(-0.3em)#fa-icon("check",..config.services.check.icon)], spacing: 0.8em)
              - Sessões de codificação ao vivo
              - Exercícios práticos do tema
              - Implementação de boas práticas
              - Revisão de código e #text(style:"oblique", "feedback")
              - Materiais para download
            ]
            #v(config.services.check.space)
          ]
        )
      ],
      align(left)[
        #v(config.services.fade)
        #block(
          ..config.services.block,
          [
            #text(size: 2em, weight: "semibold")[Intensivo]
            #linebreak()
            #set text(size: 1em, weight: "regular")
            #fa-icon("clock", fill: theme.item, solid: true)
            #h(0.2em)
            #text(weight: "regular")[1h30 - 1h45 x ]#text(weight: "medium", fill: nord.snowStorm.brighter)[4 dias]

            Programa intensivo de 4 dias projetado para dominar todos os três temas disponíveis.
            #v(config.services.check.space)
            #align(center)[
              #block(
                width: 90%,
                radius: 0.61em,
                inset: 1.5em,
                fill: gradient.radial(
                  nord.polarNight.darker,
                  nord.polarNight.darkest,
                  center: (65%, 90%),
                  radius: 100%,
                ),
                stroke: (
                  "top": 0.2em + nord.frost.clearIce,
                  "rest":gradient.radial(
                    nord.polarNight.darker,
                    nord.polarNight.darkest,
                    center: (65%, 90%),
                    radius: 100%,
                  ),
                ),
                [
                  #text(number-type: "lining", number-width: "tabular", tracking: 0.1em, weight: "extrabold", size: 2em,
                    "R$ 2.500"
                  )
                  #linebreak()
                  #smallcaps(
                    text(size: 0.85em, "Por Sessão")
                  )
                ]
              )
            ]
            #v(config.services.check.space)
            #[
              #set text(size: config.services.check.text.size)
              #set list(marker: [#v(-0.3em)#fa-icon("check",..config.services.check.icon)], spacing: 0.8em)
              - Cobertura abrangente do tópico
              - Sessão de perguntas e respostas
              - Desafios práticos
              - Materiais para download
            ]
            #v(config.services.check.space)
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
      nord.polarNight.darker,
      nord.polarNight.darkest,
      center: (0%, 0%),
      radius: 61%
    ),
  [
    #v(config.about.margin.y)
    = Sobre Mim

    #show emph: it => {
      text(
        fill: gradient.radial(
          nord.frost.arcticWater,
          nord.frost.deepOcean,
          center: (100%, 100%),
        ),
        weight: "medium",
        it.body
      )
    }
    
    #stack(
      dir: ltr,
      h(config.about.margin.x),
      block(width: config.about.width,
        par(first-line-indent: (amount: 1.61em*2, all: true), justify: true,
            [
              Mateus é um Engenheiro de Software com mais de #emph[10 anos] de experiência,
              atuando em diversas áreas como #emph[Machine Learning], #emph[Back-end] e #emph[DevOps].
              Especialista em #emph[Python], #emph[RabbitMQ] e bancos de dados #emph[NoSQL].
              Comprometido com o crescimento da equipe e inovação através de mentoria e colaboração.
            ]
          )
      ),
      h(config.about.margin.x),
    )
    
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
    #v(config.about.margin.y)
  ]
)


#place(bottom + left)[
  #set text(fill: nord.snowStorm.dimmer, size: 1em, weight: "medium")
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
  #h(1em)
//  #h(0.61fr)
//  #fa-icon("link", fill: theme.accentColor, solid: true)
//  #h(-0.2em)
//  mfurquim.dev
//  #h(1em)
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
