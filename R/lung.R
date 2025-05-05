#' Lung Cancer Dataset
#'
#' A synthetic dataset of 23,658 lung cancer patients with detailed demographic, clinical,
#' and laboratory information, intended for applied linear modeling and classification tasks.
#'
#' @format A tibble with 23,658 rows and 38 variables:
#' \describe{
#'   \item{Patient_ID}{Unique patient identifier}
#'   \item{Age}{Age of the patient in years}
#'   \item{Gender}{Gender of the patient: Male or Female}
#'   \item{Smoking_History}{Smoking status: Never Smoked, Former Smoker, or Current Smoker}
#'   \item{Tumor_Size_mm}{Tumor size in millimeters}
#'   \item{Tumor_Location}{Location of the tumor within the lung}
#'   \item{Stage}{Cancer stage: Stage I, II, III, or IV}
#'   \item{Treatment}{Primary treatment type: Surgery, Chemotherapy, Radiation, etc.}
#'   \item{Survival_Months}{Survival duration in months}
#'   \item{Ethnicity}{Patient-reported ethnicity}
#'   \item{Insurance_Type}{Type of insurance coverage}
#'   \item{Family_History}{Whether the patient has a family history of lung cancer}
#'   \item{Comorbidity_Diabetes}{1 if patient has diabetes, 0 otherwise}
#'   \item{Comorbidity_Hypertension}{1 if patient has hypertension, 0 otherwise}
#'   \item{Comorbidity_Heart_Disease}{1 if patient has heart disease, 0 otherwise}
#'   \item{Comorbidity_Chronic_Lung_Disease}{1 if patient has chronic lung disease, 0 otherwise}
#'   \item{Comorbidity_Kidney_Disease}{1 if patient has kidney disease, 0 otherwise}
#'   \item{Comorbidity_Autoimmune_Disease}{1 if patient has autoimmune disease, 0 otherwise}
#'   \item{Comorbidity_Other}{1 if patient has other comorbidities, 0 otherwise}
#'   \item{Performance_Status}{Clinician-rated performance status (e.g., ECOG score)}
#'   \item{Blood_Pressure_Systolic}{Systolic blood pressure in mmHg}
#'   \item{Blood_Pressure_Diastolic}{Diastolic blood pressure in mmHg}
#'   \item{Blood_Pressure_Pulse}{Pulse pressure in mmHg}
#'   \item{Hemoglobin_Level}{Hemoglobin concentration (g/dL)}
#'   \item{White_Blood_Cell_Count}{White blood cell count (10^9/L)}
#'   \item{Platelet_Count}{Platelet count (10^9/L)}
#'   \item{Albumin_Level}{Serum albumin level (g/dL)}
#'   \item{Alkaline_Phosphatase_Level}{ALP level (U/L)}
#'   \item{Alanine_Aminotransferase_Level}{ALT level (U/L)}
#'   \item{Aspartate_Aminotransferase_Level}{AST level (U/L)}
#'   \item{Creatinine_Level}{Serum creatinine level (mg/dL)}
#'   \item{LDH_Level}{Lactate dehydrogenase level (U/L)}
#'   \item{Calcium_Level}{Serum calcium level (mg/dL)}
#'   \item{Phosphorus_Level}{Serum phosphorus level (mg/dL)}
#'   \item{Glucose_Level}{Fasting blood glucose level (mg/dL)}
#'   \item{Potassium_Level}{Serum potassium level (mmol/L)}
#'   \item{Sodium_Level}{Serum sodium level (mmol/L)}
#'   \item{Smoking_Pack_Years}{Estimated pack-years of smoking}
#' }
#'
#' @source Synthetic dataset adapted from Kaggle
#'
#' @usage data(lung)
"lung"
