# Correlation Analysis 
# INSTALL & LOAD REQUIRED PACKAGES
required_packages <- c("Hmisc")
for (pkg in required_packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
    library(pkg, character.only = TRUE)
  }
}

library(Hmisc)

# LOAD DATASET
data <- read.csv("StudentsPerformance.csv")

# CLEAN COLUMN NAMES
colnames(data) <- c(
  "gender", "race_ethnicity", "parent_education",
  "lunch", "test_preparation", "math_score",
  "reading_score", "writing_score"
)

# CORRELATION TEST
cor_test <- cor.test(data$math_score, data$reading_score)
print("CORRELATION TEST RESULTS:")
print(cor_test)