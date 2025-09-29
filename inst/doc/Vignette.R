## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message = FALSE,
  warning = FALSE,
  fig.width = 6
)

library(dplyr)
library(ggplot2)
library(ggRtsy)
library(purrr)

exampleData <- starwars %>%
 filter(mass < 1000)
plotExample <-  ggplot(exampleData, aes(x = height, y = mass)) +
  geom_point(size = 3) +
  scale_x_continuous()

## -----------------------------------------------------------------------------
knitr::kable(head(goghColors,10))

## -----------------------------------------------------------------------------
RectangleFiller(plotExample, c("#e32636", "#9966cc", "#f4c2c2", "#e16827"))

## -----------------------------------------------------------------------------
rgbToHex(c("(225, 104, 39)","(60, 90, 202)"))

## -----------------------------------------------------------------------------
knitr::kable(head(goghPaintingSets,4))

## -----------------------------------------------------------------------------
plotExample2 <- ggplot(exampleData, aes(x = height, y = mass, color = birth_year)) +
  geom_point(size = 2) +
  scale_color_gogh(palette = "cafeTerrace", discrete = FALSE) +
  theme_minimal()
plotExample2

## ----warning=FALSE, message=FALSE---------------------------------------------
ggplot(storms, aes(x = hour, y = wind, color = status)) +
  geom_point(size = 3) +
  scale_color_gogh(palette = "wheatField", discrete = TRUE, reverse=FALSE) +
  theme_minimal()

## ----warning=FALSE, message=FALSE---------------------------------------------
ggplot(storms, aes(x = category, fill = status)) +
  geom_bar() +
  scale_fill_gogh(palette = "almondBlossoms", discrete = TRUE, reverse=FALSE) +
  theme_minimal()

