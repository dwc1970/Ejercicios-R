# Definir los parámetros de la recta
m <- 2  # Pendiente
b <- 1  # Intersección en y

# Crear un rango de valores para x
x <- seq(-10, 10, length.out = 100)  # Valores de -10 a 10

# Calcular los valores de y usando la ecuación de la recta
y <- m * x + b

# Crear la gráfica
plot(x, y, type = "l", col = "blue", lwd = 2, 
     main = "Gráfica de una recta", 
     xlab = "x", ylab = "y", 
     xlim = c(-10, 10), ylim = c(-10, 10))

# Añadir líneas en los ejes
abline(h = 0, col = "black", lty = 2)  # Línea horizontal en y=0
abline(v = 0, col = "black", lty = 2)  # Línea vertical en x=0

# Añadir una leyenda
legend("topright", legend = paste("y =", m, "x +", b), col = "blue", lwd = 2)
