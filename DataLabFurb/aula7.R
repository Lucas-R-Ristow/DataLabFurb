# AULA 7 
# ESTILIZAÇÃO E MODERNIZAÇÃO DE GRAFICOS 


library(WDI) # CARREGAR A BIBLIOTECA/PACOTE

options(scipen = 999) # AJUSTA A NOT. CIENT.

library(tidyverse) # CARREGAR A BIBLIOTECA/PACOTE

library(ggplot2) # CARREGAR A BIBLIOTECA/PACOTE


# GRAFICO GDP PER CAPTA EM USD (UNIAO EUROPEIA) 

DadosGdpEUU <- WDI(country = 'EUU',
                   indicator = 'NY.ADJ.NNTY.PC.CD')

grafGdpEUU <- ggplot(DadosGdpEUU, aes(x = year, y = NY.ADJ.NNTY.PC.CD)) +
  geom_line(color = "red", size = 1.2) +
  geom_point(color = "red", size = 2) +
  labs(title = "PIB per Capita Ajustado (PPC) - União Europeia",
       x = "Ano",
       y = "GDP per Capita (PPP, USD)") +
  theme_minimal(base_family = "sans") +
  theme(
    plot.title = element_text(size = 14, face = "bold", color = "black"),
    axis.title = element_text(size = 11, color = "black"),
    axis.text = element_text(color = "gray30"),
    panel.grid.major = element_line(color = "gray80"),
    panel.grid.minor = element_line(color = "gray90"),
    panel.background = element_rect(fill = "gray95", color = NA),
    plot.background = element_rect(fill = "white", color = NA)
  )

print(grafGdpEUU)



# GRAFICO PIB UNIAO EUROPEIA 2022

dadospibEUU22 <- WDI(country = 'EUU', 
                     indicator = 'NY.GDP.MKTP.CD',
                     start = 2012, end = 2022)

# Gráfico simples e moderno
grafPibEUU <- ggplot(dadospibEUU22, aes(x = year, y = NY.GDP.MKTP.CD)) +
  geom_point(color = "blue", size = 4) +
  labs(title = "PIB Total - União Europeia (2022)",
       x = "YEAR",
       y = "GDP (USD)") +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold", color = "black"),
    axis.title = element_text(size = 11, color = "black"),
    axis.text = element_text(color = "gray30"),
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "gray95", color = NA),
    plot.background = element_rect(fill = "white", color = NA)
  )

print(grafPibEUU)



# GRAFICO EXPORT TECH JAPAO EM USD ESTILIZADO (TEMPORAL)

dadosTechExportJapao <- WDI(country = 'JPN',
                            indicator = 'TX.VAL.TECH.MF.ZS', 
                            start = 2012, end = 2022)

grafTechExportJapao <- ggplot(dadosTechExportJapao, aes(x = year, y = TX.VAL.TECH.MF.ZS)) +
  geom_line(color = "green4", size = 1.2) +
  labs(title = "Exportações de Alta Tecnologia do Japão (% do Total)",
       x = "Year",
       y = "Tech Exports (% of All Exports)") +
  theme_minimal(base_family = "sans") +
  theme(
    plot.title = element_text(size = 16, face = "bold", color = "black"),
    axis.title = element_text(size = 12, color = "black"),
    axis.text = element_text(color = "gray20"),
    panel.grid.major = element_line(color = "gray80"),
    panel.grid.minor = element_line(color = "gray90"),
    panel.background = element_rect(fill = "gray95", color = NA),
    plot.background = element_rect(fill = "white", color = NA)
  )

print(grafTechExportJapao)
