#installing the required packages
options(timeout = 500)
install.packages("leaflet")
library(leaflet)

#initailizing map and setting the coordinates as instructed 
leaflet() %>%
  addTiles() %>%
  setView(lng = 79.145, lat = 12.969, zoom = 13)


#adding marker with popup
leaflet() %>%
  addTiles() %>%
  setView(lng = 79.145, lat = 12.969, zoom = 13) %>%
  addMarkers(
    lng = 79.145,
    lat = 12.969,
    popup = "Katpadi Location"
  )

#adding customized circle markers 
leaflet() %>%
  addTiles() %>%
  setView(lng = 79.145, lat = 12.969, zoom = 13) %>%
  addCircleMarkers(
    lng = 79.145,
    lat = 12.969,
    radius = 10,
    color = "red",
    label = "Katpadi Area"
  )