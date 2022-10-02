# Econometria 1
# Lista 6 - Exerc?cio 7
library(haven)
library(AER)
library(fixest)

## ------------ baixando a base de dados ---------------- ##
WAGE2 <- read_dta("lectures/04-IV2/WAGE2.dta")

## -------------------- item a -------------------------- ##
## vamos usar a fun??o "ivreg" do pacote "AER"
## o comando dessa fun??o ? "ivreg(y ~ x | z, data)"
reg_iv <- ivreg(log(wage) ~ educ + exper + tenure + black | sibs + exper + tenure + black,
             data = WAGE2)
reg_fix <- feols(log(wage) ~ exper + tenure + black | educ ~ sibs,
                 data = WAGE2)

summary(reg_iv)
summary(reg_fix)

## -------------------- item b -------------------------- ##
# rodando a regress?o de primeiro est?gio
first_stage <- lm(educ ~ sibs + exper + tenure + black,
                  data = WAGE2)

## uso a fun??o "predict" para gerar uma nova coluna com os valores preditos
WAGE2$educ_hat <- predict(first_stage)

# rodando a regress?o de segundo est?gio
second_stage <- lm(log(wage) ~ educ_hat + exper + tenure + black,
                   data = WAGE2)

stargazer(second_stage,
          type = "text")


## -------------------- item c -------------------------- ##
# rodando a regress?o de primeiro est?gio
first_stage <- lm(educ ~ sibs,
                  data = WAGE2)

## uso a fun??o "predict" para gerar uma nova coluna com os valores preditos
WAGE2$educ_hat <- predict(first_stage)

# rodando a regress?o de segundo est?gio
second_stage <- lm(log(wage) ~ educ_hat + exper + tenure + black,
                   data = WAGE2)

stargazer(second_stage,
          type = "text")



