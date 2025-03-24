# API (FORMA DE ACESSO)
# DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (BASE DE DADOS)

# NA AULA PASSADA, ACESSAMOS OS DADOS DO PIB (GDP)
# PRODUTO INTERNO BRUTO (GROSS DOMESTIC PRODUCT)

library(WDI) # CARREGAR A BIBLIOTECA

options(scipen = 999) # AJUSTA A NOT. CIENTIFICA 

dadosGDP <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')

dadosGDP2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)

dadosGDPbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')

#AUTOESTUDO -> V


dadosEletricBR <- WDI(country = 'BR',
                      indicator = 'EG.ELC.ACCS.ZS')


dadosExportsChina <- WDI(country = 'CHN',
                         indicator = 'NE.EXP.GNFS.ZS', 
                         start = 2020, end = 2022)


dadosImportAgroChile<- WDI(country = 'CHL',
                         indicator = 'TM.VAL.AGRI.ZS.UN')

dadosExporta2022 <- WDI(country = 'all',
                    indicator = 'NE.EXP.GNFS.ZS',
                    start = 2022, end = 2022)

