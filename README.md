# Bem-vindos a Econometria III

Neste curso você aprenderá algumas das principais ferramentas atualmente utilizadas em ***microeconometria***. Modelos com dados em painel, regressão com efeitos-fixos, diferença-em-diferenças, modelos de equações simultâneas, variáveis instrumentais e mínimos quadrados em dois estágios (MQ2E) e, modelos com variável dependente limitada.
 
Você também aprenderá a usar a linguagem de programação `R` para fazer as manipulações de dados, estimações e testes de hipóteses, entretanto, este **não** é um curso de `R` e uma leitura complementar é sugerida. 

Este material é baseado no trabalho da equipe `ScPoEcon`, de `Edward Rubin`, de `Nick CH K` e o devido crédito é dado. O material foi traduzido para português e levemente adaptado para o ensino de econometria no Brasil. Os decks de slides originais podem ser encontrados em [ScPoEconometrics-Slides](https://github.com/ScPoEcon/Advanced-Metrics-slides), [EC 421](https://github.com/edrubin/EC421S19) e, [Nick](https://github.com/NickCH-K/EconometricsSlides)


## Pré-requisitos

Você precisa ter feito os cursos de Econometria I e II na Esag (ou equivalente). Você também é incentivado durante o curso a se familiarizar com o conhecimento de [`R`](https://cran.r-project.org/) para aproveitar ao máximo todo o conteúdo ofertado neste curso.

## Visão geral

Continuamos com nossa abordagem prática para aprender Econometria e `R`. Conheceremos um importante método para estabelecer relações casuais em dados não experimentais, chamado de “Variáveis Instrumentais”. Aprenderemos sobre dados em painel, ou seja, dados que rastreiam indivíduos ao longo do tempo. Veremos situações em que nossos variáveis dependentes são de natureza discreta, como “sujeito *i* escolhe a opção A (e não B)”, além de modelos de equações simultâneas, onde duas variáveis dependentes são determinadas concomitantemente.


## Programa e slides

Observe que várias dessas aulas se estendem por duas ou mais sessões.

| Tópico                                                   | Slides                                                                                                              | Lista                                                                                                   |
|----------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| Aula 1: Causalidade                                      | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/01-causalidade/01-causality_pt.html)   |                                                                                                         |
| Aula 2: Modelos de Escolha Qualitativa                   | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/02-probit/02-probit_pt.html)           | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/02-probit/lista_I_pt.html) |
| Aula 3: Variáveis Instrumentais e Causalidade - Parte I  | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/03-IV/03-IV_pt.html)                   |                                                                                                         |
| Aula 4: Variáveis Instrumentais e Causalidade - Parte II | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/04-IV2/04-IV2_pt.html)                    | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/04-IV2/lista_II_pt.html)   |
| Aula 5: Modelos de Equações Simultâneas                  | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/05-simultaneas/05-simultaneas_pt.html) |  [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/05-simultaneas/lista_III_pt.html) |
| Aula 6: Dados em Painel - Parte I                        | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/06-panel/06-panel_pt.html)             | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/06-panel/lista_IV_pt.html) |
| Aula 7: Dados em Painel - Diferenças em Diferenças       | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/07-DID/07-DID_pt.html)                 | [HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/07-DID/lista_V_pt.html)    |


## Bibliografia Recomendada

* WOOLDRIDGE, Jeffrey M. Introdução à econometria: uma abordagem moderna. São Paulo: Cengage Learning, 2016. Tradução da 4ª edição norte-americana por José Antonio Ferreira. 

* GUJARATI, Damodar N.; PORTER, Dawn C. Econometria básica. Porto Alegre: Amgh Editora, 2011. - 5. ed. 

* BÉKÉS, Gábor; KÉZDI, Gábor. Data analysis for business, economics, and policy. Cambridge University Press, 2021.

* GERTLER, Paul J. et al. Avaliação de Impacto na Prática, 2018. - 2. ed. Banco Mundial.

* CUNNINGHAM, Scott. Causal Inference: The Mixtape, New Haven: Yale University Press, 2021. URL: https://mixtape.scunning.com/

* ANGRIST, Joshua D.; PISCHKE, Jörn-Steffen. Mastering'metrics: The path from cause to effect. Princeton university press, 2014. URL: http://www.masteringmetrics.com/

* ANGRIST, Joshua D.; PISCHKE, Jörn-Steffen. Mostly harmless econometrics: An empiricist's companion. Princeton university press, 2009.

* WOOLDRIDGE, Jeffrey M. Econometric Analysis of Cross Section and Panel Data. MIT press, 2010. Second Edition. 

* HANSEN, Bruce E. Econometrics. Manuscript, revision of February 2020.

**Programação em R**

* FREIRE, Sergio M. Introdução ao R. 2021. URL: http://www.lampada.uerj.br/introducaoaor

* McDERMOTT, Grant. Data science for economists. URL: https://github.com/uo-ec607/lectures#lecture-outline-and-quicklinks

* R Core Team. An Introduction to R. URL: https://cran.r-project.org/doc/manuals/r-release/R-intro.html

* HANCK, Christoph et al. Introduction to Econometrics with R. University of Duisburg-Essen, 2019. URL: https://www.econometrics-with-r.org/

* HEISS, Florian. Using R for Introductory Econometrics. URL: http://urfie.net/

* WICKHAM, Hadley; GROLEMUND, Garrett. R for data science: import, tidy, transform, visualize, and model data. O'Reilly Media, Inc., 2016. URL: https://r4ds.had.co.nz/

## Videos

* [Causal Data Science](https://www.youtube.com/watch?v=MguFFgUfcbc&list=PLSMHA74lM-x3NTV2vJoxWdB1qdsSMjcFL&index=1&t=5603s) Causal Data Science com Marcel Ribeiro Dantas (Sorbonne University)

* [Introdução Latex](https://www.youtube.com/watch?v=EumeZnyvTzA&list=PLSMHA74lM-x3NTV2vJoxWdB1qdsSMjcFL&index=2&t=3213s) Introdução Latex

* [Economia e Ciência de Dados](https://www.youtube.com/watch?v=6Q3SXs5agaU&list=PLSMHA74lM-x2VglhXkdbHEH80T2a_XgRr&index=2&t=4765s) Economia e Ciência de Dados com prof. Rafael Martins de Souza (FGV/EPGE)

* [Carreira e Aplicações de Econometria](https://www.youtube.com/watch?v=VKZe49nNtxw&list=PLSMHA74lM-x2VglhXkdbHEH80T2a_XgRr&index=3&t=2182s) Carreira e Aplicações de Econometria com Luiz A. Esteves (Economista chefe do Banco do Nordeste)

## Outros Recursos

* [Introduction to Causal Inference](https://www.bradyneal.com/causal-inference-course) by Brady Neal

* [Course in Econometrics - part II](https://www.youtube.com/playlist?list=PLwJRxp3blEvb7P-7po9AxuBwquPv75LjU) Course in Econometrics - part II by Ben Lambert

* [Microsoft's Experimentation](https://www.microsoft.com/en-us/research/group/experimentation-platform-exp/)

* [Booking.datasience](https://booking.ai)

* [Causal AI papers](https://www.causalens.com/causal-ai-papers/)

* [Coding for Economists (Python)](https://aeturrell.github.io/coding-for-economists/intro.html)

## Avaliação

O sistema de avaliação da disciplina se dará da seguinte maneira:

- 4 listas de exercícios a serem entregues no Moodle em formato eletrônico (arquivo PDF). Cada lista conta 5% na nota antes do exame.

- 3 Provas escritas, presenciais, com os seguintes pesos: 20%, 25% e 35%.

- É obrigatória a frequência em no mínimo 75% das aulas para aprovação.

## Legal

Você pode copiar e adaptar este material para seus propósitos, contanto que dê os devidos créditos e compartilhe o trabalho nos mesmos termos. Claro que você pode usar os slides para ensinar em suas salas de aula. *Crédito Apropriado* significa que em algum lugar em seus slides há um link para o repositório [original](https://github.com/ScPoEcon/Advanced-Metrics-slides), [EC 421](https://github.com/edrubin/EC421S19) e, [NickCH-K](https://github.com/NickCH-K/EconometricsSlides) indicando que é sobre aqueles trabalhos que você está construindo. Clique no ícone para detalhes.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

## Como construir

* Estes são simplesmente slides Rmarkdown.
* Então, no Rstudio, basta clicar em *knit*.
* Para imprimir os slides como PDF, faça
```decktape capitulo1.html capitulo1.pdf --chrome-arg=--disable-web-security```
usando o incrível [decktape](https://github.com/astefanutti/decktape)
