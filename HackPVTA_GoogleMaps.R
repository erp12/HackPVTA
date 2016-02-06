library('plyr')
library('dplyr')
library(RgoogleMaps)

# Find average lon and lat
meanLat <- mean( PVTA.God.Mode.Data$Latitude)
meanLon <- mean( PVTA.God.Mode.Data$Longitude)

# Find min lat and lon
minLat <- min(PVTA.God.Mode.Data$Latitude)
minLon <- min(PVTA.God.Mode.Data$Longitude)

# Find max lon and lat
maxLat <- max(PVTA.God.Mode.Data$Latitude)
maxLon <- max(PVTA.God.Mode.Data$Longitude)

# Turns out it is possible for Lat and Lon can be null
# I am sure this messes up the averages, but meh.

# Get map that includes all of PVTA area
PVTA.God.Mode.Map <- GetMap(c(meanLat, meanLon), destfile = "Map1.png", NEWMAP = TRUE, zoom=12, maptype="roadmap")

PVTA.God.Mode.38.Data <- filter(PVTA.God.Mode.Data, Route==38)
PVTA.God.Mode.38.Data <- arrange(PVTA.God.Mode.38.Data, Vehicle.ID, Time)

# Test the plotting
PlotOnStaticMap(PVTA.God.Mode.Map, PVTA.God.Mode.38.Data$Latitude[1:100], PVTA.God.Mode.38.Data$Longitude[1:100], col='red', type="l")
