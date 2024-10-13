

# Crear el gráfico de variación absoluta
ggplot(data, aes(x = reorder(Departamento, -Variacion_Absoluta), y = Variacion_Absoluta)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = Variacion_Absoluta), vjust = -0.25, size = 3) +
  theme_minimal() +
  labs(title = "Variación absoluta de la población por departamento (2010-2022)",
       x = "Departamento",
       y = "Variación absoluta") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

