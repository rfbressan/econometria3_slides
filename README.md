# Bem-vindos a Econometria III

Neste curso você aprenderá algumas das principais ferramentas atualmente utilizadas em ***microeconometria***. Modelos com dados em painel, regressão com efeitos-fixos, diferença-em-diferenças, modelos de equações simultâneas, variáveis instrumentais e mínimos quadrados em dois estágios (MQ2E) e, modelos com variável dependente limitada.
 
Você também aprenderá a usar a linguagem de programação `R` para fazer as manipulações de dados, estimações e testes de hipóteses, entretanto, este **não** é um curso de `R` e uma leitura complementar é sugerida. 

Este material é baseado no trabalho da equipe `ScPoEcon`, de `Edward Rubin`, de `Nick CH K` e o devido crédito é dado. O material foi traduzido para português e levemente adaptado para o ensino de econometria no Brasil. Os decks de slides originais podem ser encontrados em [ScPoEconometrics-Slides](https://github.com/ScPoEcon/Advanced-Metrics-slides), [EC 421](https://github.com/edrubin/EC421S19) e, [Nick](https://github.com/NickCH-K/EconometricsSlides)


## Pré-requisitos

Você precisa ter feito os cursos de Econometria I e II na Esag (ou equivalente). Você também é incentivado durante o curso a se familiarizar com o conhecimento de [`R`](https://cran.r-project.org/) para aproveitar ao máximo todo o conteúdo ofertado neste curso.

## Visão geral

Continuamos com nossa abordagem prática para aprender Econometria e `R`. Conheceremos um importante método para estabelecer relações casuais em dados não experimentais, chamado de “Variáveis Instrumentais”. Aprenderemos sobre dados em painel, ou seja, dados que rastreiam indivíduos ao longo do tempo. Veremos situações em que nossos variáveis dependentes são de natureza discreta, como “sujeito *i* escolhe a opção A (e não B)”, além de modelos de equações simultâneas, onde duas variáveis dependentes são determinadas concomitantemente.


## Programa e slides

Observe que várias dessas aulas se estendem por duas sessões.


Lecture 0: Introduction and continuation from intro course: Difference-in-Differences  [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/00-DID/chapter_did.html)]

Lecture 1: Introduction, Logistics and Recap 1 from intro course. Uncertainty in regression estimates, orthogonality of error, BLUE property.  [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/01-recap/recap1.html)]

Lecture 2: Recap 2 from intro course. What's a *model*, omitted variable bias, interpreting coefficients, the log transformation [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/02-recap/recap2.html)]

Lecture 3: intro to the `data.table` package [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/03-datatable/03-datatable.html)]

Lecture 4: Instrumental Variables and Causality 1. John Snow's Cholera Experiment as a motivation for the IV estimator, using a DAG to think about the exclusion restriction, the Wald estimator. [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/04-IV/04-IV.html)]

Lecture 5: Instrumental Variables and Causality 2. 2SLS, returns to schooling and ability bias, replicating Angrist and Krueger (1991), IV mechanics, identification and inference, weak instruments [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/05-IV2/05-IV2.html)]

Lecture 6: Panel Data 1: What, How and Why? Application to crime rates at county level, within and between variation, the within transformation, running panel regressions in R [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/06-panel/06-panel.html)]

Lecture 7: Discrete Outcomes: Logit and Probit. Bernoulli reminder, Mroz dataset, the linear probability model, the saturated LPM, logit and probit marginal effects, Goodness of fit in non-linear binary response models. [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/07-probit/07-probit.html)]

Lecture 8: Intro to Statistical (or *Machine*) Learning 1: the bias-variance-tradeoff, taxonomy of methods, parametric vs non-parametric, linear vs nonlinear, relationship between variance, bias and MSE [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/08-learning/08-learning.html)]

Lecture 9: Intro to Statistical (or *Machine*) Learning 2: Subset selection (Lasso and Ridge regressions), unsupervised learning (PCA and K-means clustering) [[HTML](https://raw.githack.com/ScPoEcon/Advanced-Metrics-slides/master/lectures/09-unsupervised/09-unsupervised.html)]

## Aulas Adicionais

Bootstrapping: More details about bootstrapping. [HTML](https://raw.githack.com/rfbressan/econometria_slides/master/chapter_bootstrap/boostrap.html)


## Legal

Você pode copiar e adaptar este material para seus propósitos, contanto que dê os devidos créditos e compartilhe o trabalho nos mesmos termos. Claro que você pode usar os slides para ensinar em suas salas de aula. *Crédito Apropriado* significa que em algum lugar em seus slides há um link para o repositório [original](https://github.com/ScPoEcon/Advanced-Metrics-slides), [EC 421](https://github.com/edrubin/EC421S19) e, [NickCH-K](https://github.com/NickCH-K/EconometricsSlides) indicando que é sobre aqueles trabalhos que você está construindo. Clique no ícone para detalhes.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

## Como construir

* Estes são simplesmente slides Rmarkdown.
* Então, no Rstudio, basta clicar em *knit*.
* Para imprimir os slides como PDF, faça
```decktape capitulo1.html capitulo1.pdf --chrome-arg=--disable-web-security```
usando o incrível [decktape](https://github.com/astefanutti/decktape)
