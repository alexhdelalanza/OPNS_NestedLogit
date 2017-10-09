makeData <- function(my.buckets = 1:3, my.choices = c('A', 'B', 'C')){
  expand.grid(
    bucket = my.buckets, 
    choice = my.choices
  ) %>%
    mutate(val=rnorm(n())) %>%
    saveRDS(paste0(var_save, 'choice_values.rds'))
  
  data_frame(
    bucket = my.buckets,
    lambda = runif(length(my.buckets))
  ) %>%
    saveRDS(paste0(var_save, 'lambda_values.rds'))
}
