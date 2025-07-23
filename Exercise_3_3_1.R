
# E1
ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), color = "blue")


# E2
mill$fabricante <- factor(mill$fabricante, unique(mill$fabricante))


# E3
ggplot(millas) +
  geom_point(mapping = aes(x = cilindrada, 
                           y = autopista),
             fill = "blue",
             size = 2,
             shape = 22)

