#' ---
#' title: Aula de laboratório - Escolha Qualitativa
#' author: Rafael Bressan
#' ---
#' 
#+ echo=TRUE
library(wooldridge)
library(fixest)
library(modelsummary)
#' ## Modelo de Probabilidade Linear
#' 
#' Se uma variável _dummy_ é usada como variável dependente, nós podemos usar
#' MQO para estimar a relação desta com os regressores normalmente. A 
#' probabilidade condicional de ocorrência do evento é:
#' 
#' $$P(y=1|x)=E[y|x]=\beta_0 + \beta_1 x$$
#' 
#' A interpretação dos coeficientes é direta, um aumento de uma unidade em
#' $x$ provoca um aumento médio na probabilidade do evento de $\beta_1$. Modelos
#' MPL sofrem de heterocedasticidade e, portanto, devemos utilizar erros padrão
#' robustos.
data("mroz")
mpl <- feols(inlf~nwifeinc+educ+exper+I(exper^2)+age+kidslt6+kidsge6,
             data = mroz,
             vcov = "HC1")
msummary(mpl)
#'
#' Por construção, um modelo MPL pode render previsão de probabilidade fora do
#' intervalo $\left[0,1\right]$ para uma certa combinação de regressores (que 
#' pode ser realista ou não).
#' 
#' Como exemplo, supomos duas mulheres, a primeira com 20 anos, sem experiência,
#' 5 anos de educação, 2 crianças com menos de 6 anos e renda de $ 100 
#' (em milhares). A segunda mulher possui 52 anos, 30 anos de experiência e 
#' 17 de educação, sem crianças e renda. 
#' 
#' **Faça a previsão de probabilidade de estarem no mercado de trabalho para
#' ambas hipotéticas mulheres.**
#+ echo=FALSE 
xpred <- data.frame(nwifeinc = c(100, 0),
                    educ = c(5, 17),
                    exper = c(0, 30),
                    age = c(20, 52),
                    kidslt6 = c(2, 0),
                    kidsge6 = c(0, 0))
predict(mpl, newdata = xpred)
#'
#' ## Modelos Logit e Probit