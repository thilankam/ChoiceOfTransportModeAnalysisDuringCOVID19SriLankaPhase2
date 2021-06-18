# Choice of Transport Mode Analysis during COVID19 Phase 2 in Sri Lanka
# Author: Thilanka Munasinghe
# Date: 06-15-2021

library(readxl)
library(dplyr)
library(tidyverse)
library(readxl)

library(ggplot2)
library(plyr)
#dataCTMSL <- read_excel('Documents/Data Analytics/ChoiceOfTransportModeAnalysisDuringCOVID19SriLankaPhase2/Phase_II_Work_Trips.xlsx',sheet = "Legend")
#dataCTMSL <- read_excel('Documents/Data Analytics/ChoiceOfTransportModeAnalysisDuringCOVID19SriLankaPhase2/Phase_II_Work_Trips.xlsx')
#file <- "Downloads/Phase_II_Work_Trips.xlsx"
#dataPhase2 <- read_excel(file)

dataPhase2 <- read_excel('Phase_II_Work_Trips.xlsx')
dataPhase2
dataPhase2DF <- data_frame(dataPhase2)
View(dataPhase2DF)

dfl <- tbl_df(dataPhase2DF)
head(dfl)
#Work_trips_Before_Mar_2020 <- dataPhase2DF$Work_trips_Before_Mar_2020
#Work_trips_Before_Mar_2020
#Work_trips_Before_Mar_2020_fac <-factor(Work_trips_Before_Mar_2020)
#levels(Work_trips_Before_Mar_2020_fac)

#Work_trips_Jan_Apr_2021 <-dataPhase2DF$Work_trips_Jan_Apr_2021
#Work_trips_Jan_Apr_2021_fac <- factor(Work_trips_Jan_Apr_2021)
#levels(Work_trips_Jan_Apr_2021_fac)

tmc3to4 <- dataPhase2DF %>% select(Work_trips_Before_Mar_2020,Work_trips_Jan_Apr_2021) %>% filter(Work_trips_Before_Mar_2020_fac == 3 && Work_trips_Jan_Apr_2021_fac == 4) 
tmc3to4 <- dfl %>% select(Work_trips_Before_Mar_2020,Work_trips_Jan_Apr_2021) %>% filter(Work_trips_Before_Mar_2020_fac == 3 && Work_trips_Jan_Apr_2021_fac == 4) 
# Transport Mode change  Before_Mar_2020 and Work_trips_Jan_Apr_2021
tmcBF <- dataPhase2DF %>% select(Work_trips_Before_Mar_2020,Work_trips_Jan_Apr_2021)

head(tmcBF)
dim(tmcBF)
count(tmc3to4)
print(tmc3to4)
