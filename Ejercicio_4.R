# 4 -Se lanzan dos dados al aire y se anota la suma de los puntos obtenidos. Se pide:
#  A : La probabilidad de que salga el 7
#  B : La probabilidad de que el número obtenido sea par
#  C : La probabilidad de que el número obtenido sea múltiplo de tres

# Crear un data frame con las probabilidades
resultados <- data.frame(
  Evento = c("Suma = 7", "Suma Par", "Suma Múltiplo de 3"),
  Probabilidad = c(1/6, 1/2, 1/3)
)

# Cargar la librería ggplot2
library(ggplot2)

# Graficar las probabilidades como un gráfico de puntos
ggplot(resultados, aes(x = Evento, y = Probabilidad)) +
  geom_point(size = 4, color = "blue") +  
  geom_text(aes(label = round(Probabilidad, 2)), vjust = -1, color = "red") +  
  labs(title = "Probabilidades de Sumas al Lanzar Dos Dados",
       x = "Eventos",
       y = "Probabilidad") +
  theme_minimal() +
  theme(legend.position = "none", axis.text = element_text(color = "black"),  
        axis.title = element_text(color = "black"),
        plot.title = element_text(color = "black", hjust = 0.5))  

