#' ---
#' title: Aula de laboratório - Diferenças em diferenças
#' author: Rafael Bressan
#' ---
#' 
#+ echo=TRUE
library(wooldridge)
library(fixest)
library(modelsummary)
library(ggplot2)
library(did)
#' ## Diferenças em diferenças (DID)
#' 
#' Modelos DID são atualmente os mais utilizados em estudos observacionais
#' para investigar os efeitos de alguma política em uma variável de interesse.
#' Este tipo de _design_ faz uso das variações tanto entre grupo de indivíduos
#' quanto no tempo para obter o **efeito médio do tratamento sobre os tratados**
#' - ATT.
#' 
#' 
#' \begin{align}
#' DID &= \underbrace{\mathbb{E}[Y_{ist}|s = \text{NJ}, t = \text{Nov}] - \mathbb{E}[Y_{ist}|s = \text{NJ}, t = \text{Fev}]}_{\Delta_t^{GT}} 
#' - \Big(\underbrace{\mathbb{E}[Y_{ist}|s = \text{PA},t = \text{Nov}] - \mathbb{E}[Y_{ist}| s = \text{PA},t = \text{Fev}]}_{\Delta_t^{GC}}\Big) \\
#' \end{align}
#' 
#' onde estamos fazendo uso do exemplo Card e Krueger (1994). Pensilvânia (PA) 
#' é o estado de controle e Nova Jersey (NJ) o grupo tratado.
#' 
#' Em um formato de regressão, o estimador DID é obtido regredindo a variável
#' de interesse em uma _dummy_ para o grupo tratamento, uma outra _dummy_
#' para o período após a intervenção e um termo de interação entre os dois, que 
#' denota o efetivo tratamento.
#' 
#' $$Y_{st} = \alpha + \beta TRAT_s + \gamma POS_t + \delta(TRAT_s \times POS_t) + \varepsilon_{st}$$
#' 
#' Nesta especificação $\hat\delta = \text{DID}$ e a vantagem de fazer a 
#' regressão é que podemos fazer inferência sobre o parâmetro estimado 
#' diretamente.
#' 
#' Vamos fazer um exemplo encontrado no livro-texto do Wooldridge, exemplo 13.3
#' os efeitos de um incinerador de lixo no preço das moradias.
#' 
data("kielmc")
# DID manual
tratados <- kielmc[kielmc$nearinc == 1, ]
controles <- kielmc[kielmc$nearinc == 0, ]

delta_t <- mean(tratados[tratados$year == 1981, "rprice"]) - 
    mean(tratados[tratados$year == 1978, "rprice"])
delta_c <- mean(controles[controles$year == 1981, "rprice"]) -
    mean(controles[controles$year == 1978, "rprice"])

did_manual <- delta_t - delta_c
#' **Estime o efeito com um DID em forma de regressão**
#+ echo=FALSE
did_reg <- feols(rprice~nearinc*y81,
                 data = kielmc,
                 vcov = "HC1")
etable(did_reg)
#' 
#' Digamos que a hipótese de tendências paralelas seja válida somente após
#' controlar pela idade do imóvel e idade ao quadrado, distância para uma 
#' rodovia, área do terreno e da moradia, número de quartos e banheiros. 
#' Gostaríamos também que o modelo fosse especificado em logarítimos, para ter
#' uma ideia de variação percentual do preço da moradia em relação a presença 
#' do incinerador.
#' 
#' **Calcule o efeito no cenário acima descrito**
#+ echo=FALSE
did_ctr <- feols(log(rprice)~nearinc*y81+sw0(age+agesq+lintst+log(land)+log(area)+rooms+baths),
                 data = kielmc,
                 vcov = "HC1")

etable(did_ctr)
#'
#' ## Efeitos fixos em duas vias (TWFE)
#' 
#' 
#' 

