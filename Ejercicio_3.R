# 3 -Un dado está trucado, de forma que las probabilidades de obtener las distintas caras
# son proporcionales a los números de estas.Hallar:
# A : La probabilidad de obtener el 6 en un lanzamiento
# B . La probabilidad de conseguir un número impar en un lanzamiento

# Asignar probabilidades para cada cara del dado
caras <- 1:6
probabilidades <- caras / sum(caras)

# Crear un data frame con los resultados
resultados <- data.frame(
  Cara = factor(caras),
  Probabilidad = probabilidades
)

# Cargar la librería ggplot2
library(ggplot2)

# Graficar las probabilidades como un gráfico de puntos
ggplot(resultados, aes(x = Cara, y = Probabilidad)) +
  geom_point(size = 4, color = "blue") +  # Color de los puntos azul
  geom_text(aes(label = round(Probabilidad, 2)), vjust = -1, color = "red") +  
  labs(title = "Probabilidades de las caras de un dado trucado",
       x = "Cara del dado",
       y = "Probabilidad") +
  theme_minimal() +
  theme(legend.position = "none", axis.text = element_text(color = "black"),
        axis.title = element_text(color = "black"),
        plot.title = element_text(color = "black", hjust = 0.5))  


