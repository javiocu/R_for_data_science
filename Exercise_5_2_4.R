# Encuentra todos los vuelos que:
# E1.1:
#   Tuvieron un retraso de llegada de dos o más horas

atraso_dos_mas_llegada <- filter(vuelos, atraso_llegada >= 120) 

# E1.2:
#   Volaron a Houston (IAH o HOU)

volaron_a_houston <- filter(vuelos, destino %in% c("IAH", "HOU"))

# E1.3:
#   Fueron operados por United, American o Delta

operados_por_uad <- filter(vuelos, aerolinea %in% c("UA", "AA", "DL"))

# E1.4:
#   Partieron en invierno del hemisferio sur 
#   (julio, agosto y septiembre)

meses = c(7, 8, 9)
viajaron_invierno_sur <- filter(vuelos, mes %in% meses)


# E1.5:
#   Llegaron más de dos horas tarde, pero no salieron tarde

llegaron_tarde_pero_salieron_bien <- 
  filter(vuelos, atraso_llegada > 120 & atraso_salida <= 0)

# E1.6:
#   Llegaron más de dos horas tarde, pero no salieron tarde

hora_tarde_pero_repus_30 <- 
  filter(vuelos, atraso_salida >= 60 & atraso_llegada  <= 30)

# E1.7:
#   Partieron entre la medianoche y las 6 a.m. (Incluyente)

horario_bueno <- c(1:600, 2400)

media_noche_6_am <- filter(vuelos, horario_salida %in% horario_bueno)

# E2
# Otra función de dplyr que es útil para usar filtros es between().
# ¿Qué hace? ¿Puedes usarla para simplificar el código necesario para responder a 
# los desafíos anteriores?

# E3
# ¿Cuántos vuelos tienen datos faltantes en horario_salida? ¿Qué otras variables 
# tienen valores faltantes? ¿Qué representan estas filas?
falta_horario_salida <- sum(is.na(vuelos$horario_salida))

falta_horario_salida <- filter(vuelos, is.na(horario_salida))

sum(is.na(vuelos$))

canela <- attributes(vuelos)$names

rm(hola)
hola <- as.character()
for (i in canela) {
  hola[i] <- sum(is.na(vuelos[i]))
}
hola <- hola [-1]

