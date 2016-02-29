# HackPVTA
My entry for the HackPVTA UMASS Amherst hackathon!

# Files
## HackPVTA_dataPreprocessing


## HackPVTA_GoogleMaps


## Charts
![PVTA Rt. 38 Bus - Plotted as Points](/Plots/PVTA_38_Map_Plot_1.jpeg?raw=true "PVTA Rt. 38 Bus - Plotted as Points")

This is a plot of the data point gathered from the 38 Bus Route. 

![PVTA Rt. 38 Bus - Plotted as Lines](/Plots/PVTA_38_Map_Plot3.jpeg?raw=true "PVTA Rt. 38 Bus - Plotted as a Line")

This is the same data, but plotted as a line. In order to get one continuous line, insdead of a line jumping between multiple busses at different points along the same route, the data points had to be plotted in order of first Vehicle_ID, and then again by Time.

![Screenshot of Shiny App](/Plots/PVTA_Shiny_App.png?raw=true "Screenshot of Shiny App")

This is a screenshot of a web application made in Shiny. As the user used the buttons on the left to increase and decrease the time value, data points of where the Route 38 busses were at that value of time would appear on the map. The intention was to make the color of the data points indicate if the bus was late or on time.
