# 2 - Halla la probabilidad de que al levantar unas fichas de domin??
# se obtenga un n??mero de puntos mayor que 9 o que sea m??ltiplo de 4.

# Primero debemos crear todas la conbinaciones de fichas de domino 
domino <- expand.grid(lado1 = 0:6, lado2 = 0:6)


# calculamos las uma de puntos para cada ficha
domino$suma <- domino$lado1 + domino$lado2

# Debemos filtrar las finchas que cumplan las condiciones 8suma > 9 0 multiplo de 4 ) 
condicion <- domino$suma >9 | domino$suma %% 4 == 0

# calculamos la probabilidad
fichas_cumplen <- sum(condicion)
total_fichas <- nrow(domino)
probabilidad <- fichas_cumplen / total_fichas

# prerparamos los datos para el grafico
domino$condicion <- ifelse(condicion, "Cumple", "No cumple")

# Graficamos las fichas  que cumplan la condicion 
library(ggplot2)
ggplot(domino, aes(x = factor(lado1), y = factor(lado2), fill = condicion))+
  geom_tile(color = "black")+
  scale_fill_manual(values = c("Cumple" = "lightgreen", "No Cumple" = "lightgray"))+
  labs(title = " Fichas de comino que cumplen la condicion (suma > 9 o multiplo de 4)")
      x = "lado1"
      y = "lado2"
      fill = "Condicion"+
  theme_minimal()


cat("La probabilidad de obtener uan ficha con suma mayor que 9 o mutip??lo de 4 es:", probabilidad, "\n")

  



