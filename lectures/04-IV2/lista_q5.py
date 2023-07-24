# library(haven)
# library(fixest)

# # Lendo o arquivo de dados
# WAGE2 <- read_dta("WAGE2.dta")


# mq2e <- feols(log(wage) ~ exper + tenure + black | educ ~ sibs,
#               data = WAGE2)
# etable(mq2e)


# cpWAGE2 <- WAGE2
# first_stage <- feols(educ ~ sibs + exper + tenure + black,
#                      data = cpWAGE2)
# cpWAGE2$educ_hat <- predict(first_stage)

# second_stage <- feols(log(wage) ~ educ_hat + exper + tenure + black,
#               data = cpWAGE2)
# etable(list(VI = mq2e, Manual = second_stage))


# wrong_1st <- feols(educ ~ sibs,
#                    data = cpWAGE2)
# cpWAGE2$wrong_educ_hat <- predict(wrong_1st)

# wrong_2st <- feols(log(wage) ~ wrong_educ_hat + exper + tenure + black,
#               data = cpWAGE2)
# etable(list(VI = mq2e, Manual = second_stage, MQ2E_Errado = wrong_2st ))


import pandas as pd
import linearmodels.iv as iv

# Reading the data file
WAGE2 = pd.read_stata("WAGE2.dta")

# Two-stage least squares regression using the IV2SLS class from the linearmodels library
mq2e = iv.IV2SLS.from_formula(
    "log(wage) ~ 1 + exper + tenure + black + [educ ~ sibs]", WAGE2
).fit()
print(mq2e.summary)

# Copying the data to a new variable
cpWAGE2 = WAGE2.copy()

# First stage regression
first_stage = iv.IV2SLS.from_formula(
    "educ ~ 1 + sibs + exper + tenure + black", cpWAGE2
).fit()
cpWAGE2["educ_hat"] = first_stage.predict()

# Second stage regression
second_stage = iv.IV2SLS.from_formula(
    "log(wage) ~ 1 + educ_hat + exper + tenure + black", cpWAGE2
).fit()
print(second_stage.summary)

# Incorrect first stage regression
wrong_1st = iv.IV2SLS.from_formula("educ ~ 1 + sibs", cpWAGE2).fit()
cpWAGE2["wrong_educ_hat"] = wrong_1st.predict()

# Incorrect second stage regression
wrong_2st = iv.IV2SLS.from_formula(
    "log(wage) ~ 1 + wrong_educ_hat + exper + tenure + black", cpWAGE2
).fit()
print(wrong_2st.summary)
