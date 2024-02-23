library(DBI)
library(rJava)
library(RJDBC)
library(stats)
library(tidyr)
library(tibble)
library(plyr)
library(dplyr)
library(ggplot2)
library(plotly)




file_path <- "C:/Users/USER/Documents/Work/African American Data/Metro_zhvi_uc_sfrcondo_tier_0.33_0.67_sm_sa_month_zillow_1.csv"
US_mortgage_data <- read.csv(file_path)


str(US_mortgage_data)
summary(US_mortgage_data)

MD_State <-US_mortgage_data %>% filter(StateName == "MD")



DMV_States <- US_mortgage_data %>% filter %>% filter(StateName %in% c("MD", "DC", "VA"))

DMV_States <- DMV_States %>% rename(January_2000 = X2000.01.31, February_2000 = X2000.02.29, March_2000 = X2000.03.31, April_2000 = X2000.04.30) %>%
  rename(May_2000 = X2000.05.31, June_2000 = X2000.06.30, July_2000 = X2000.07.31, August_2000 = X2000.08.31, September_2000 = X2000.09.30, October_2000 = X2000.10.31 ) %>%
  rename(November_2000 = X2000.11.30, December_2000 = X2000.12.31)

DMV_States <- DMV_States %>% rename(January_2001 = X2001.01.31, February_2001 = X2001.02.28, March_2001 = X2001.03.31, April_2001 = X2001.04.30) %>%
  rename(May_2001 = X2001.05.31, June_2001 = X2001.06.30, July_2001 = X2001.07.31, August_2001 = X2001.08.31, September_2001 = X2001.09.30, October_2001 = X2001.10.31 ) %>%
  rename(November_2001 = X2001.11.30, December_2001 = X2001.12.31)

DMV_States <- DMV_States %>% rename(January_2002 = X2002.01.31, February_2002 = X2002.02.28, March_2002 = X2002.03.31, April_2002 = X2002.04.30) %>%
  rename(May_2002 = X2002.05.31, June_2002 = X2002.06.30, July_2002 = X2002.07.31, August_2002 = X2002.08.31, September_2002 = X2002.09.30, October_2002 = X2002.10.31 ) %>%
  rename(November_2002 = X2002.11.30, December_2002 = X2002.12.31)

DMV_States <- DMV_States %>% rename(January_2003 = X2003.01.31, February_2003 = X2003.02.28, March_2003 = X2003.03.31, April_2003 = X2003.04.30) %>%
  rename(May_2003 = X2003.05.31, June_2003 = X2003.06.30, July_2003 = X2003.07.31, August_2003 = X2003.08.31, September_2003 = X2003.09.30)

#mortgage_data_long <- US_mortgage_data %>% gather(key = "month", value = "rate",  )

DMV_his <- DMV_States$SizeRank
hist(DMV_his)

DMV_States <- na.omit(DMV_States)

DMv_States_2000 <- DMV_States %>% select(January_2000, February_2000, March_2000, April_2000, May_2000, June_2000, July_2000, August_2000, September_2000, October_2000, November_2000, December_2000) 
  #select(July_2000, August_2000, September_2000, October_2000, November_2000, December_2000)

DMv_States_2001 <- DMV_States %>% select(January_2001, February_2001, March_2001, April_2001, May_2001, June_2001, July_2001, August_2001, September_2001, October_2001, November_2001, December_2001)


DMv_States_2002 <- DMV_States %>% select(January_2002, February_2002, March_2002, April_2002, May_2002, June_2002, July_2002, August_2002, September_2002, October_2002, November_2002, December_2002)

summary(DMv_States_2000)

summary(DMv_States_2001)

summary(DMv_States_2002)

summary(DMv_States_2003)






