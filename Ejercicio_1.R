# 1- Halla la probabilidad de que al lanzar al aire dos monedas, salgan
# A - Dos caras
# B - Dos cruces
# C - Una cara y una cruz

ggplot(resultados, aes(x = evento, y = probabilidad, fill = evento)) +
  geom_bar(stat = "identity", width = 0.5) +
  geom_text(aes(label = round(probabilidad, 2)), vjust = -0.5)+
  labs(title = "probabilidad de eventos a lanzar una moneda",
       x = "Eventos",
       y = "Probabilidad")+
  theme_minimal()+
  theme(legend.position = "none")




