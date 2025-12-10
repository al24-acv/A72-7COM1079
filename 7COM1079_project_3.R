#############################
# PART 3 – Trend Analysis
#############################

# Filter Andhra Pradesh data
ap <- subset(auto, Area_Name == "Andhra Pradesh" & !is.na(Auto_Theft_Stolen))

# Trend graph
p_trend_ap <- ggplot(ap, aes(x = Year, y = Auto_Theft_Stolen)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Trend of Auto Theft in Andhra Pradesh",
    x = "Year",
    y = "Vehicles Stolen"
  )

print(p_trend_ap)

ggsave(
  filename = "trend_Andhra_Pradesh.png",
  plot = p_trend_ap,
  width = 8,
  height = 6,
  dpi = 300
)

# Filter Rajasthan
ap <- subset(auto, Area_Name == "Rajasthan" & !is.na(Auto_Theft_Stolen))

# Trend graph
p_trend_ap <- ggplot(ap, aes(x = Year, y = Auto_Theft_Stolen)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Trend of Auto Theft in Rajasthan",
    x = "Year",
    y = "Vehicles Stolen"
  )

print(p_trend_ap)

ggsave(
  filename = "Rajasthan.png",
  plot = p_trend_ap,
  width = 8,
  height = 6,
  dpi = 300
)