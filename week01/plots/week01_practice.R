library(ggplot2)
library(palmerpenguins)

# Create the plot
p <- ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)",
    y = "Body mass (g)",
    color = "Species",
    shape = "Species"
  )

# Save the plot
dir.create("week01/plots", recursive = TRUE)
ggsave(
  filename = "week01/plots/week01_penguins_flipper_mass.png",
  plot = p,
  width = 6,
  height = 4,
  dpi = 300
)
