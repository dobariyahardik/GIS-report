library(usethis)#######Automate package and project setup tasks
library(leaflet.minicharts)###this package allow to add as many as variable at desire  geopraphical location in leaflet base map
library(leaflet)##########main java base package for creating interactive map
library(dplyr)######manipulate data as per requirement
library(htmlwidgets)####create custamised java scriptlogic(exta feature to map)
library(htmltools)######create custamised java script logic(extra feature to map)
library(devtools)#####supporting tool for leaflet

library(readxl)
foscilco2 <- read_excel("foscilco2.xlsx")

EFSAF <-foscilco2

tag.map.title <- tags$style(HTML("
  .leaflet-control.Fossil-CO2-emissions  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))

title <- tags$div( tag.map.title, HTML("Fossil CO2 emissions "))  

basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Fossil-CO2-emissions ")

basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[ c("1998(Mt/yr)","2008(Mt/yr)","2017(Mt/yr)")], 
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1] , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)





####################oil.reserve

oilreserve <- read_excel("oilreserve.xlsx")

EFSAF <-oilreserve

tag.map.title <- tags$style(HTML("
  .leaflet-control.Oil-Proved-Reserves  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))


title <- tags$div( tag.map.title, HTML("Oil Proved Reserves "))  


basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Oil-Proved-Reserves ")

basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[c("1998(T.M.B)","2008(T.M.B)","2017(T.M.B)")], 
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1] , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)






########oil production

oil_p <- read_excel("oil.p.xlsx")

EFSAF <-oil_p

tag.map.title <- tags$style(HTML("
  .leaflet-control.oil-production-inBarrels  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))

title <- tags$div( tag.map.title, HTML("oil production in Barrels "))  

basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="oil-production-inBarrels ")

basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[, c("1998(T.B.D.)","2008(T.B.D.)","2017(T.B.D.)")], 
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1] , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)






####gas reserve

gase_reserve <- read_excel("gase.reserve.xlsx")

EFSAF <-gase_reserve

tag.map.title <- tags$style(HTML("
  .leaflet-control.Gas-Proved-Reserves  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))

title <- tags$div( tag.map.title, HTML("Gas Proved Reserves "))  

basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Gas-Proved-Reserves ")

basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[, c("1998(T.C.M)","2008(T.C.M)","2017(T.C.M)")], 
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1] , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)







#####gas.production

gas_p <- read_excel("gas.p.xlsx")

EFSAF <-gas_p

tag.map.title <- tags$style(HTML("
  .leaflet-control.Gas-Production-inBCM  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))

title <- tags$div( tag.map.title, HTML("Gas Production in BCM "))  

basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Gas-Production-inBCM ")

basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[, c("1998","2008","2017")], 
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1] , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)





######renewable energy

renew_enegy_production <- read_excel("renew.enegy.production.xlsx")

EFSAF <-renew_enegy_production

tag.map.title <- tags$style(HTML("
  .leaflet-control.Renewable-Energy-Generation-by-source  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 15px;}"))


title <- tags$div( tag.map.title, HTML("Renewable Energy Generation by source "))  

basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Renewable-Energy-Generation-by-source ")


basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[, c("2017(TW.h)","2018(TW.h)")], 
    colorPalette = c("#4fc13c", "#fcba50") , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)








####coal production

coal_p <- read_excel("coal.p.xlsx")

EFSAF <-coal_p

tag.map.title <- tags$style(HTML("
  .leaflet-control.Coal-Production-Mtoe  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))


title <- tags$div( tag.map.title, HTML("Coal Production Mtoe"))  


basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Coal-Production-Mtoe ")

basemap %>%
  addMinicharts(
    EFSAF$long, EFSAF$lat,
    type = "pie",
    chartdata = EFSAF[, c("1998","2008","2017")], 
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1] , 
    width = 40 * sqrt(EFSAF$Total) / sqrt(max(EFSAF$Total)),height = 30, transitionTime = 0,opacity = 1)

#####time series emmsion data(2000-2017) fosilco2 yearwise data by country,Green House Gases yearwise data by country and  fosilCO2 per GDP yearwise by country 

EFSAF <- read_excel("EFSAF.xlsx")


tag.map.title <- tags$style(HTML("
  .leaflet-control.Fossil-CO2-emissions  { 
    transform: translate(-50%,20%);
    position: fixed !important;
    left: 50%;
    text-align: center;
    padding-left: 10px; 
    padding-right: 10px; 
    background: rgba(255,255,255,0.75);
    font-weight: bold;
    font-size: 25px;}"))


title <- tags$div( tag.map.title, HTML("Fossil CO2 emissions "))  


basemap <- leaflet() %>% addProviderTiles(providers$Esri.WorldStreetMap) %>% addMiniMap(tiles = providers$Esri.WorldStreetMap,toggleDisplay = TRUE,position = c("bottomleft")) %>% 
  addScaleBar(position = c("bottomleft")) %>% addEasyButton(easyButton(icon="fa-globe", title="Zoom to Level 3",onClick=JS("function(btn, map){ map.setZoom(3); }"))) %>% addControl(title, position = "topleft", className="Fossil-CO2-emissions ")


basemap %>% 
  addMinicharts(
    EFSAF$long, EFSAF$lat, 
    chartdata = EFSAF[, c("CO2.T(Mt/yr)","CO2perGDP(kUSD/yr)")],
    time = EFSAF$years,
    colorPalette = d3.schemeCategory10,fillColor = d3.schemeCategory10[1],
    width = 45, height = 45 ,opacity = 1)





