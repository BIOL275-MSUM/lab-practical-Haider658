# load packages -----------------------------------------------------------
library(tidyverse)
library(palmerpenguins)

# penguins ----------------------------------------------------------------
data("penguins")

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(size = 2)

cor(penguins$body_mass_g, penguins$flipper_length_mm, use = "complete.obs")

lm_body_flipper <-
  lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(lm_body_flipper)

ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", size = 2, color = "blue")




