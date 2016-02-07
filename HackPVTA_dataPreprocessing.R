library('plyr')
library('dplyr')

# Vertical Concatination of every month
#Year2015 <- rbind(January2015,February2015,March2015,April2015,May2015,June2015,July2015,August2015,September2015,October2015,November2015, December2015)

# Grabbing relevant columns
PVTA.God.Mode.Data <- select(Year2015, V1, V2, V3, V4, V5, V6, V9, V11)

# Renaming the God.Mode columns
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Vehicle.ID = V1)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Time = V2)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Latitude = V3)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Longitude = V4)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Speed = V5)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Direction = V6)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Operational.Status = V9)
PVTA.God.Mode.Data <- rename(PVTA.God.Mode.Data, Route = V11)

# # # # # # # # # # #
# Utility Functions #
# # # # # # # # # # #

Convert.DateString.To.Numeric<-function(d) {
  as.numeric(as.POSIXct(d, tz="EST"))
}

PVTA.God.Mode.Data$Time <- lapply(PVTA.God.Mode.Data$Time, Convert.DateString.To.Numeric)
PVTA.God.Mode.38.Data$Time <- lapply(PVTA.God.Mode.38.Data$Time, Convert.DateString.To.Numeric)

current.time.datetime <- sort(PVTA.God.Mode.38.Data$Time)[1]
current.time.numeric <- as.numeric(as.POSIXct(current.time.datetime, tz="EST"))
