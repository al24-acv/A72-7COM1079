#############################
# PART 1 – Load and Prepare Data

#############################

# Rename dataset from Environment
auto <- X30_Auto_theft

# Initial inspection
head(auto)
str(auto)
summary(auto)
names(auto)

# Handle missing values
auto[auto == "NULL"] <- NA

# Convert key columns to numeric
auto$Auto_Theft_Stolen <- as.numeric(auto$Auto_Theft_Stolen)
auto$Auto_Theft_Recovered <- as.numeric(auto$Auto_Theft_Recovered)
auto$`Auto_Theft_Coordinated/Traced` <- as.numeric(auto$`Auto_Theft_Coordinated/Traced`)

# Inspect after conversion
summary(auto)
summary(auto$Auto_Theft_Stolen)
summary(auto$Auto_Theft_Recovered)
summary(auto$`Auto_Theft_Coordinated/Traced`)