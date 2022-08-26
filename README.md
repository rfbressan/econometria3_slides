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

Lecture 1: Causalidade. [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/01-causalidade/01-causality_pt.html)]

Lecture 2: Modelos de Escolha Qualitativa.  [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/02-probit/02-probit_pt.html)]


Lecture 3: Variáveis Instrumentais e Causalidade - Parte I. [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/03-IV/03-IV_pt.html)]

Lecture 4: Variáveis Instrumentais e Causalidade - Parte II. [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/04-IV2/04-IV2.html)]

Lecture 5: Modelos de Equações Simultâneas. [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/05-simultaneas/05-eq_simultaneas.html)]

Lecture 6: Dados em Painel - Parte I. [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/06-panel/06-panel_pt.html)]

Lecture 7: Dados em Painel - Diferenças em Diferenças. [[HTML](https://raw.githack.com/rfbressan/econometria3_slides/master/lectures/07-DID/07-DID_pt.html)]


Lecture 8: Intro to Statistical (or *Machine*) Learning 1: the bias-variance-tradeoff, taxonomy of methods, parametric vs non-parametric, linear vs nonlinear, relationship between variance, bias and MSE [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/08-learning/08-learning.html)]

Lecture 9: Intro to Statistical (or *Machine*) Learning 2: Subset selection (Lasso and Ridge regressions), unsupervised learning (PCA and K-means clustering) [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/09-unsupervised/09-unsupervised.html)]

## Aulas Adicionais

Bootstrapping: More details about bootstrapping. [HTML](https://raw.githack.com/rfbressan/econometria_slides/master/chapter_bootstrap/boostrap.html)

## Bibliografia Recomendada

* WOOLDRIDGE, Jeffrey M. Introdução à econometria: uma abordagem moderna. São Paulo: Cengage Learning, 2016. Tradução da 4ª edição norte-americana por José Antonio Ferreira. 

* GUJARATI, Damodar N.; PORTER, Dawn C. Econometria básica. Porto Alegre: Amgh Editora, 2011. - 5. ed. 

* CUNNINGHAM, Scott. Causal Inference: The Mixtape, New Haven: Yale University Press, 2021. URL: https://mixtape.scunning.com/

* ANGRIST, Joshua D.; PISCHKE, Jörn-Steffen. Mastering'metrics: The path from cause to effect. Princeton university press, 2014. URL: http://www.masteringmetrics.com/

* ANGRIST, Joshua D.; PISCHKE, Jörn-Steffen. Mostly harmless econometrics: An empiricist's companion. Princeton university press, 2009.

* WOOLDRIDGE, Jeffrey M. Econometric Analysis of Cross Section and Panel Data. MIT press, 2010. Second Edition. 

* HANSEN, Bruce E. Econometrics. Manuscript, revision of February 2020.


## Legal

Você pode copiar e adaptar este material para seus propósitos, contanto que dê os devidos créditos e compartilhe o trabalho nos mesmos termos. Claro que você pode usar os slides para ensinar em suas salas de aula. *Crédito Apropriado* significa que em algum lugar em seus slides há um link para o repositório [original](https://github.com/ScPoEcon/Advanced-Metrics-slides), [EC 421](https://github.com/edrubin/EC421S19) e, [NickCH-K](https://github.com/NickCH-K/EconometricsSlides) indicando que é sobre aqueles trabalhos que você está construindo. Clique no ícone para detalhes.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

## Como construir

* Estes são simplesmente slides Rmarkdown.
* Então, no Rstudio, basta clicar em *knit*.
* Para imprimir os slides como PDF, faça
```decktape capitulo1.html capitulo1.pdf --chrome-arg=--disable-web-security```
usando o incrível [decktape](https://github.com/astefanutti/decktape)
