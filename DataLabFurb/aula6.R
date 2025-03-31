# API (FORMA DE ACESSO)
# DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (BASE DE DADOS)

# NA AULA PASSADA, ACESSAMOS OS DADOS DO PIB
# PRODUTO INTERNO BRUTO

library(WDI) # CARREGAR A BIBLIOTECA/PACOTE

options(scipen = 999) # AJUSTA A NOT. CIENT.

# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')
# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)
# SERIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')

# install.packages("tidyverse)
library(tidyverse) 

# DADOS EM PAINEL 

grafpainel <- ggplot(dadospib,
                     mapping = aes(x= year, y = NY.GDP.MKTP.CD)) + geom_line()

print(grafpainel)

# CORTE TRANSVERSAL

grafcorte <- ggplot(dadospib2023,
                     mapping = aes(x= year, y = NY.GDP.MKTP.CD)) + geom_line()

print(grafcorte)

# SERIE TEMPORAL

grafserie <- ggplot(dadospibbr,
                    mapping = aes(x= year, y = NY.GDP.MKTP.CD)) + geom_line()

print(grafserie)

# GRAFICO EXPORT CHINA EM USD

dadosExportsChina <- WDI(country = 'CHN',
                         indicator = 'NE.EXP.GNFS.CD', 
                         start = 2012, end = 2022)

grafExportChina <- ggplot(dadosExportsChina,
                    mapping = aes(x= year, y = NE.EXP.GNFS.CD)) + geom_line()

print(grafExportChina)

# GRAFICO IMPORT BRASIL EM USD

dadosImportBR <- WDI(country = 'BRA',
                         indicator = 'NE.IMP.GNFS.CD', 
                         start = 2012, end = 2022)

grafImportBR <- ggplot(dadosImportBR,
                          mapping = aes(x= year, y = NE.IMP.GNFS.CD)) + geom_line()

print(grafImportBR)


# GRAFICO EXPORT TECH JAPAO EM USD

dadosTechExportJapao <- WDI(country = 'JPN',
                     indicator = 'TX.VAL.TECH.MF.ZS', 
                     start = 2012, end = 2022)

grafTechExportJapao <- ggplot(dadosTechExportJapao,
                       mapping = aes(x= year, y = TX.VAL.TECH.MF.ZS)) + geom_line()

print(grafTechExportJapao)



