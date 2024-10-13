# leer_datos.R

# Leer el archivo CSV
datos <- read.csv("datos.csv")

# Ver las primeras filas del conjunto de datos
cat("Primeras filas del conjunto de datos:\n")
print(head(datos))

# Resumen de los datos leídos
cat("Resumen de los datos:\n")
print(summary(datos))

# Obtener solo los nombres y edades
nombres_y_edades <- datos[, c("Nombre", "Edad")]

# Mostrar los nombres y edades
cat("Nombres y edades:\n")
print(nombres_y_edades)

