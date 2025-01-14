# installing the dslabs package
install.packages("dslabs")

# loading the dslabs package into the R session
library(dslabs)

#installing tidyverse package
install.packages("tidyverse")

#loading tidyvarse pacakage
library(tidyverse)

data("murders")

murders %>%
  ggplot(aes(population, total, label=abb, color=region)) +
  geom_label()
