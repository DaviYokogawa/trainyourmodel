library(tidyverse)

data  <-  iris

# Antigo mutate agrupado
data_mutate_antigo  <-  data %>%
    group_by(Species) %>%
    mutate(
        Sepal.Length.sqrt = sqrt(Sepal.Length)
        ) %>%
    ungroup()

# Novo mutate agrupado
data_mutate_novo  <- data %>%
    mutate(
        Sepal.Length.sqrt = sqrt(Sepal.Length),
        .by = "Species"
        )

# Antigo summarise agrupado
sepal_summarizado_antigo  <-  data  %>%
    group_by(Species) %>%
    summarise(
        Sepal.Length.mean = mean(Sepal.Length),
        Sepal.Length.sd = sd(Sepal.Length)
        ) %>%
    ungroup()

# Novo summarise agrupado
sepal_summarizado_novo  <-  data  %>%
    summarise(
        Sepal.Length.mean = mean(Sepal.Length),
        Sepal.Length.sd = sd(Sepal.Length),
        .by = "Species"
        )
