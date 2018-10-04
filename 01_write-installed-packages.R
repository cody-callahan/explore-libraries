#' ---
#' output: github_document
#' ---

library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority) %>% 
  write.csv(path = here("data", "installed-packages.csv"))

head(ipt)
