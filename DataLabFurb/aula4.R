# WDI - WORLD DEVELOPMENT INDICATORS
# BASE DE DADOS DO BANCO MUNDIAL 

# install.packages("WDI")

library(WDI)

# SEMPRE PROCUREM AS VIGENTES
# PAGINAS COM ORIENTACOES 
# LINK: https://github.com/vincentarelbundock/WDI / https://vincentarelbundock.github.io/WDI/#/

# BAIXAR OS DADOS DO PIB/GDP (GROSS DOMESTIC PRODUCT)
# TUDO PRODUZIDO EM UM PAIS/ESTADO/MUNICIPIO 
# EM DETERMINADO PERIODO 

# GDP (current US$)(NY.GDP.MKTP.CD) - GDP EM DOLARES N-AMERICANOS (USD) 
# CODIGO NY.GDP.MKTP.CD

COD_GDP <- WDIsearch("gdp")
# É IMPORTATNE PROCURAR PELO PROPRIO SITE DO BANCO MUNDIAL, É MAIS EFICIENTE

# COM O CODIGO VAMOS BAIXAR OS DADOS 

options(scipen = 999) # AJUSTAR NUMEROS CIENTIFICOS 
baseGDP <- WDI(country = 'all', 
               indicator = 'NY.GDP.MKTP.CD')

options(scipen = 999)
baseGDP2023 <- WDI(country = 'all', 
               indicator = 'NY.GDP.MKTP.CD',
               start = 2023, end = 2023 )