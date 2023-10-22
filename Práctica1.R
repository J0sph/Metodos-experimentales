# The easiest way to get ggplot2 is to install the whole tidyverse:
install.packages("tidyverse")
# Alternatively, install just ggplot2:
install.packages("ggplot2")

install.packages("ggdark")

library(ggplot2)


#HISTOGRAMAS



custom_palette <- c(
  "#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd",
  "#8c564b", "#e377c2", "#7f7f7f", "#bcbd22", "#17becf",
  "#a55194", "#aec7e8", "#ffbb78", "#98df8a", "#c5b0d5"
)

#Temperatura
ggplot(DatosTR,
       aes(x=Temperatura,
           fill=Personas))+
  geom_histogram(bins=35, alpha=0.4)+
  scale_fill_manual(values = custom_palette)+
  ggdark::dark_mode()+
  labs(
    title = "Histograma de Temperatura",
    x = "Temperatura (°C)",
    y = "Frecuencia"
  )


#Resistencia
ggplot(DatosTR,
       aes(x=Resistencia,
           fill=Personas))+
  geom_histogram(bins=35, alpha=0.4)+
  scale_fill_manual(values = custom_palette)+
  ggdark::dark_mode()+
  labs(
    title = "Histograma de Resistencia",
    x = "Resistencia (MΩ)",
    y = "Frecuencia"
  )


#BOXPLOT

ggplot(DatosTR,
       aes(Provincia, Temperatura, color = Provincia)) + 
  geom_boxplot(show.legend = FALSE) + 
  ggdark::dark_mode()+
  labs(
    title = "Boxplot de temperatura",
    x = "Provincia",
    y = "Temperatura (°C)"
  )

ggplot(DatosTR,
       aes(Provincia, Resistencia, color = Provincia)) + 
  geom_boxplot(show.legend = FALSE) + 
  ggdark::dark_mode()+
  labs(
    title = "Boxplot de resistencia",
    x = "Provincia",
    y = "Resistencia (MΩ)"
  )







