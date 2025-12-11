#############################
# PART 5 – Visualisation (Scatterplot & Histogram)
#############################

# Scatterplot
p_scatter <- ggplot(clean_auto,
                    aes(x = Auto_Theft_Stolen,
                        y = Auto_Theft_Recovered)) +
  geom_point(alpha = 0.7) +
  labs(
    title = "Relationship Between Stolen and Recovered Vehicles",
    x = "Vehicles Stolen",
    y = "Vehicles Recovered"
  )

print(p_scatter)

ggsave(
  filename = "scatter_stolen_recovered.png",
  plot = p_scatter,
  width = 8,
  height = 6,
  dpi = 300
)

# Histogram
p_hist <- ggplot(clean_auto,
                 aes(x = Auto_Theft_Stolen)) +
  geom_histogram(bins = 30) +
  labs(
    title = "Distribution of Auto Theft (Vehicles Stolen)",
    x = "Vehicles Stolen",
    y = "Frequency"
  )

print(p_hist)

ggsave(
  filename = "hist_stolen.png",
  plot = p_hist,
  width = 8,
  height = 6,
  dpi = 300
)