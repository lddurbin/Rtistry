library(dplyr)
library(ggplot2)

## Example 2: Data Frame====
random_lines <- tibble(x = sample(1:500, 50), y = 1:50, line_size = x/sample(100:1000, 50))

## Example 2: ggplot====
random_lines %>% 
  ggplot(aes(x=x, y=y, xend = median(x), yend = median(y)))+
  geom_curve(
    aes(size=line_size),
    colour = sample(RColorBrewer::brewer.pal(5,"PRGn"), nrow(random_lines), replace = TRUE)
    ) +
  theme_void() +
  theme(legend.position = "none")
