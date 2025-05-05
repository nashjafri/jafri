library(tidyverse)
library(forcats)

lung <- read_csv("lung.csv")

str(lung)

colnames(lung)

# Drop Patient_ID
lung <- read_csv("lung.csv") %>%
  select(-Patient_ID)

# Convert column names to lowercase
names(lung) <- tolower(names(lung))

# Shorten column names

lung <- lung %>%
  rename(
    age = age,
    gender = gender,
    smoker = smoking_history,
    size = tumor_size_mm,
    location = tumor_location,
    stage = stage,
    treatment = treatment,
    months = survival_months,
    ethnicity = ethnicity,
    insurance = insurance_type,
    history = family_history,
    diabetes = comorbidity_diabetes,
    hypertension = comorbidity_hypertension,
    heart = comorbidity_heart_disease,
    lungdis = comorbidity_chronic_lung_disease,
    kidney = comorbidity_kidney_disease,
    autoimmune = comorbidity_autoimmune_disease,
    othercomorb = comorbidity_other,
    ecog = performance_status,
    systolic = blood_pressure_systolic,
    diastolic = blood_pressure_diastolic,
    pulse = blood_pressure_pulse,
    hemoglobin = hemoglobin_level,
    wbc = white_blood_cell_count,
    platelet = platelet_count,
    albumin = albumin_level,
    alkphos = alkaline_phosphatase_level,
    alt = alanine_aminotransferase_level,
    ast = aspartate_aminotransferase_level,
    creatinine = creatinine_level,
    ldh = ldh_level,
    calcium = calcium_level,
    phosph = phosphorus_level,
    glucose = glucose_level,
    potassium = potassium_level,
    sodium = sodium_level,
    packyears = smoking_pack_years
  )

# Convert character columns to factors
lung <- lung %>%
  mutate(across(where(is.character), as.factor))

# Change factor level names to lower case and shorten

lung <- lung %>%
  mutate(gender = fct_recode(gender,
                            "female" = "Female",
                            "male" = "Male"))

lung <- lung %>%
  mutate(smoker = fct_recode(smoker,
                            "current" = "Current Smoker",
                            "former" = "Former Smoker",
                            "never" = "Never Smoked"))

lung <- lung %>%
  mutate(location = fct_recode(location,
                             "lower" = "Lower Lobe",
                             "middle" = "Middle Lobe",
                             "upper" = "Upper Lobe"))

lung <- lung %>%
  mutate(stage = fct_recode(stage,
                            "stage1" = "Stage I",
                            "stage2" = "Stage II",
                            "stage3" = "Stage III",
                            "stage4" = "Stage IV"))

lung <- lung %>%
  mutate(treatment = fct_recode(treatment,
                               "chemo" = "Chemotherapy",
                               "radio" = "Radiation Therapy",
                               "surgery" = "Surgery",
                               "targeted" = "Targeted Therapy"))

lung <- lung %>%
  mutate(ethnicity = fct_recode(ethnicity,
                                "african" = "African American",
                                "asian" = "Asian",
                                "caucasian" = "Caucasian",
                                "hispanic" = "Hispanic"))

lung <- lung %>%
  mutate(insurance = fct_recode(insurance,
                                "medicaid" = "Medicaid",
                                "medicare" = "Medicare",
                                "other" = "Other",
                                "private" = "Private"))

lung <- lung %>%
  mutate(history = fct_recode(history,
                                "no" = "No",
                                "yes" = "Yes"))

lung <- lung %>%
  mutate(diabetes = fct_recode(diabetes,
                              "no" = "No",
                              "yes" = "Yes"))

lung <- lung %>%
  mutate(hypertension = fct_recode(hypertension,
                              "no" = "No",
                              "yes" = "Yes"))

lung <- lung %>%
  mutate(heart = fct_recode(heart,
                              "no" = "No",
                              "yes" = "Yes"))

lung <- lung %>%
  mutate(lungdis = fct_recode(lungdis,
                              "no" = "No",
                              "yes" = "Yes"))

lung <- lung %>%
  mutate(kidney = fct_recode(kidney,
                              "no" = "No",
                              "yes" = "Yes"))

lung <- lung %>%
  mutate(autoimmune = fct_recode(autoimmune,
                              "no" = "No",
                              "yes" = "Yes"))

lung <- lung %>%
  mutate(othercomorb = fct_recode(othercomorb,
                              "no" = "No",
                              "yes" = "Yes"))



# Save cleaned dataset into the package
usethis::use_data(lung, overwrite = TRUE)

devtools::document()
devtools::install()

