#Nested logit coding assignment
source('header.R')

#Load data
data <- list(
  val = readRDS(paste0(var_save, 'choice_values.rds')),
  lambda = readRDS(paste0(var_save, 'lambda_values.rds'))
)

