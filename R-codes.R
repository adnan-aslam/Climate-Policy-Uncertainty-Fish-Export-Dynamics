
#########Install/Load libraries###########

library("zoo")
library("ConnectednessApproach")
library(knitr)
library(vars)
library(zoo)

#########################################################
############### Load Data ###############################
########################################################


# Load the CSV file
DATA <- read.csv("pd.csv")

# Remove rows with NA values
DATA <- na.omit(DATA)

# Convert the first column to Date format
DATE <- as.Date(as.character(DATA[,1]), format = "%d/%m/%Y")

# Remove the date column and keep the rest
DATA1 <- DATA[,-1]

# Convert to zoo object
return <- zoo(DATA1, order.by = DATE)

#########################################################
############### Lag selection ###########################
########################################################

# Perform lag selection
lags <- VARselect(return, lag.max = 10, type = "const")  # "const", "trend", "both", "none"

# Display the selection criteria
print(lags$selection)  # Shows optimal lags for AIC, HQ, SC/BIC, and FPE


#########################################################
############### TVP_VAR Connectedness Approach ##########
########################################################

######## Must Add the right Lag Based on SC/BIC ###############

dca = ConnectednessApproach(return, 
                            nlag=1, 
                            nfore=12,
                            window.size=24,
                            model="TVP-VAR",
                            connectedness="Time",
                            VAR_config=list(TVPVAR=list(kappa1=0.99, kappa2=0.96, prior="BayesPrior")))

# Results for Connectedness

PlotNetwork(dca)
dca$TCI
dca$TABLE
