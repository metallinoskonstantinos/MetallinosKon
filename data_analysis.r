# this is a comment indicating packages will be installed
# ---- install packages

# install the gtrendsR package
install.packages("gtrendsR")

# install the lubridate package
install.packages("lubridate")

# load the gtrendsR package
library(gtrendsR)

# load the lubridate package
library(lubridate)

# this is a comment indicating a google trends query is about to happen
# ---- google trends query

# search google trends for the keyword "lose weight", 
# in Greece between 01.12.2016 and 31.12.2018 and save
# the result in a variable called df
df <- gtrends(keyword = c("lose weight"),geo=c("GR"),time="2016-12-01 2018-12-31")

# save interest over time from df in a variable called df_iot
df_iot <- df$interest_over_time

# save all lines of the variable df_iot with a date in december, 
# january or february in a variable called winter
winter <- df_iot[month(df_iot$date) == 12 |month(df_iot$date) == 1 |month(df_iot$date) == 2, ]

# save all lines of the variable df_iot with a date in june, 
# july and august in a variable called summer
summer <- df_iot[month(df_iot$date) == 6 |month(df_iot$date) == 7 |month(df_iot$date) == 8, ]

# search google trends for the keyword "lose weight", 
# in Greece between 01.12.2016 and 31.12.2018 an save
# the result in a variable called trends
trends <- gtrendsR::gtrends(keyword = c("lose weight"),geo = c("GR"),time = "2016-12-01 2018-12-31")


# this is a comment indicating to get interest over time
# ---- get interest over time 

# save interest over time from the variable trends
# in a variable called interest_over_time
interest_over_time <- trends$interest_over_time

# this is a comment indicating to save data
# ---- save data


# search google trends for the keyword "lose weight",
# in Greece between 01.12.2016 and 31.12.2018  - again
# and save the result in a variable called my_data
my_data <- gtrends(keyword = c("lose weight"), geo = c("GR"), time = "2016-12-01 2018-12-31")

# save interest over time of the last search in a file
# called interestovertime.csv in the current directory
write.csv(my_data$interest_over_time,"interestovertime.csv")

# ---- used kolmogorov-smirnov test
ks.test(x = df_wide$group_a, y = df_wide$group_b)

# ---- used independent t-test to analyse data
t.test(x = df_wide$group_a, y = df_wide$group_b, var.equal = TRUE)


