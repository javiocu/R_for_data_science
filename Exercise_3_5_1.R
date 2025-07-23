# E1
ggplot(data = millas) +
  geom_point(mapping = aes(x = ciudad, y = fabricante),
             color = "white",
             fill = "magenta",
             shape = 25) 
#  facet_grid(~ traccion)

# E2
ggplot(data = millas) +
  geom_point(mapping = aes(x = traccion, y = cilindros)) +
  facet_grid(traccion ~ cilindros)
# Que no existen vehículos con esas características, en este
# caso, que no existen vehículos con ese número de cilindros y 
# ese tipo de tracción

# E3
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(traccion ~ .)

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista)) +
  facet_grid(. ~ autopista)