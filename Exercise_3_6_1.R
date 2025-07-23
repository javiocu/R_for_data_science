# E6

ggplot(data = millas, 
       mapping = aes(x = cilindrada, y = autopista)) +
  geom_point() +
  geom_smooth(se = FALSE, color = "purple")


ggplot(data = millas,
       mapping = aes(x = cilindrada, y = autopista,
                     group = traccion)) +
  geom_point() +
  geom_smooth(se = FALSE, color = "purple")

ggplot(data = millas, 
       aes(x = cilindrada, y = autopista, color = traccion)) +
  geom_point() +
  geom_smooth(aes(linetype = traccion),
              color = "purple",
              se = FALSE)

ggplot(data = millas, 
       mapping = aes(x = cilindrada, y = autopista)) +
  geom_point(aes(color = traccion))
