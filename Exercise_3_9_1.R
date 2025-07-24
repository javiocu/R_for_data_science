# E1:
# Convierte un gráfico de barras apiladas 
# en un gráfico circular usando coord_polar()

ggplot(data = diamantes, mapping =
         aes(x = corte, fill = claridad)) +
  geom_bar(position = "stack") +
  coord_polar()

# E2:
# ¿Qué hace labs()? Lee la documentación.
# labs() añade etiquetas a los gráficos, títulos
# ssubtítulos, etc

# E3:
# ¿Cuál es la diferencia entre coord_quickmap()
# y coord_map()?
# La no quick aplica una proyección cartográfica real, lo que
# requiere más potencia computacional, y tarda más, la otra
# no lo hace y es útil en regiones pequeñas 
# alejadas de los polos

# E4:
# ¿Qué te dice la gráfica siguiente sobre la relación 
# entre ciudad y autopista? ¿Por qué es coord_fixed() 
# importante? ¿Qué hace geom_abline()?
ggplot(data = millas, mapping = aes(x = ciudad, y = autopista)) +
  geom_point() +
  geom_abline() +
  coord_fixed()
