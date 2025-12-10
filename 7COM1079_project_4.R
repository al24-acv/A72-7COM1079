#############################
# PART 4 – Correlation Analysis
#############################

# Prepare clean dataset
clean_auto <- auto[complete.cases(auto$Auto_Theft_Stolen,
                                  auto$Auto_Theft_Recovered), ]

# Correlation coefficient
correlation_value <- cor(clean_auto$Auto_Theft_Stolen,
                         clean_auto$Auto_Theft_Recovered)

correlation_value

# Correlation test
cor_res <- cor.test(clean_auto$Auto_Theft_Stolen,
                    clean_auto$Auto_Theft_Recovered)

options(scipen = 100)
cor_res
cor_res$estimate
cor_res$p.value
cor_res$conf.int
nrow(clean_auto)