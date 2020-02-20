# Read excel file

library(readxl)
df <- read_excel("Documents/Massion_lab/Others/Jamshed/CDE, 60 pts 2-20-20.xlsx")

features <- c('Age', 'Race', 'Education', 'Body Mass Index', 'COPD', 
    'Prior Cancer', 'Family History of Lung Cancer', 'Smoking Status', 
    'Cigarettes per Day', 'Yrs smoking', 'Yrs since quitting smoking'
HxCa *
FMHCa *
Smoker *
Cigarettesperday
Yearssmoking
Yearssincequittingsmoking)

if(ask_features){
    # Ask for channels for training features
    print(as.matrix(colnames(df)))
    ft_idxs <- c()
    for(i in 1:length(features)){
        prompt <- paste0("Enter the column INDEX for ", features[i] " \n")
        ft_idxs <- as.numeric(strsplit(readline(prompt), " ")[[1]])
        fts_cols <- c(fts_cols, ft_idxs)
    }

    df2 <- df[,fts_cols]
} else {
    df2 <- df[,data_starts:ncol(df)]
}


# Editing colnames
fts_colnames <- c('Age', 'Race', 'Edu', 'BMI', 'COPD', 'HxCa', 'FMHCa', 
    'Smoker', 'CigPerDay', 'YrsSmk', 'YrsQuitSmk')

colnames(df2) <- fts_colnames

# Assessing numeric columns

## Age
df2$Age <- as.numeric(df2$Age)
if


df2$BMI <- as.numeric(df2$BMI)
df2$CigPerDay <- as.numeric(df2$CigPerDay)
df2$YrsSmk <- as.numeric(df2$YrsSmk)
df2$YrsQuitSmk <- as.numeric(df2$YrsQuitSmk)




# Log odds function

log_odds <- function(df, ask_features = TRUE, data_starts){


}


log_odds <- (0.0778868 * (Age - 62)) + Race - (0.0812744 * (Edu - 4)) - (0.0274194 * (BMI - 27)) + COPD + HxCa + FMHCa + Smoker - (1.822606 * ((10 / CigPerDay) - 0.4021541613)) + (0.0317321 * (YrsSmk - 27)) - (0.0308572 * (YrsQuitSmk - 10)) - 4.532506

LC_risk <- 100 * (e(log_odds) / (1 + e(log_odds)))

Age
Race *
Education *
BodyMassIndex
COPD *
HxCa *
FMHCa *
Smoker *
Cigarettesperday
Yearssmoking
Yearssincequittingsmoking