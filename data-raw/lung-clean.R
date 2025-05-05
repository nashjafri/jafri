## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)

library(tidyverse)

# Step 1: Read the raw CSV
lung <- read_csv("lung.csv")

# Step 2: Convert all character columns to factors
lung <- lung %>%
  mutate(across(where(is.character), as.factor))

# Step 3: (Optional) Reorder the Stage levels for ordinal modeling
lung$Stage <- factor(lung$Stage,
                     levels = c("Stage I", "Stage II", "Stage III", "Stage IV"),
                     ordered = TRUE)

# Step 4: Save cleaned dataset into the package
usethis::use_data(lung, overwrite = TRUE)

devtools::document()
devtools::install()

