#############################
# PART 2 – Libraries & Bar Charts by Year
#############################

# Load libraries
library(ggplot2)

# Generate bar charts for each year
years <- sort(unique(auto$Year))

for (yr in years) {
  data_year <- subset(auto, Year == yr & !is.na(Auto_Theft_Stolen))
  
  p_bar <- ggplot(data_year,
                  aes(x = reorder(Area_Name, Auto_Theft_Stolen),
                      y = Auto_Theft_Stolen)) +
    geom_col() +
    coord_flip() +
    labs(
      title = paste("Auto Theft by Area in", yr),
      x = "Area",
      y = "Vehicles Stolen"
    )
  
  print(p_bar)
  
  ggsave(
    filename = paste0("bar_auto_", yr, ".png"),
    plot = p_bar,
    width = 8,
    height = 6,
    dpi = 300
  )
}