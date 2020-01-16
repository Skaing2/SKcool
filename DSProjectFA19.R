library(tidyverse)
library(devtools)
library(readr)


# 10/09/2019 --------------------------------------------------------------

colNames <- c("EDUID","Gender","Enrolled Grade", "year",
              "ELA/Literacy Scale Score","Standard Error for ELA/Literacy Scale Score", 
              "Reading Claim Scale Score","Reading Claim Standard Error",
              "Writing Claim Scale Score","Writing Claim Standard Error",
              "Listening Claim Scale Score","Listening Claim Standard Error",
              "Research/Inquiry Claim Scale Score","Research/Inquiry Claim Standard Error",
              "Concepts and Procedures Claim Scale Score","Concepts and Procedures Claim Standard Error",
              "Problem Solving and Modeling & Data Analysis Claim Scale Score","Problem Solving and Modeling & Data Analysis Claim Standard Error",
              "Communicating Reasoning Claim Scale Score","Communicating Reasoning Claim Standard Error")

TenthGrade1 <- read_csv("Data/10th Grade ISAT 2014-15.csv") %>% 
  mutate(year = "2014-15") %>% 
  select(colNames)

TenthGrade2 <- read_csv("Data/10th Grade ISAT 2015-16.csv") %>% 
  mutate(year = "2015-16") %>% 
  select(colNames)

TenthGrade3 <- read_csv("Data/10th Grade ISAT 2016-17.csv") %>% 
  mutate(year = "2016-17") %>%  
  select(colNames)

TenthGrade4 <- read_csv("Data/10th Grade ISAT 2017-18.csv") %>% 
  mutate(year = "2017-18") %>% 
  select(colNames)

TenthGrade5 <- read_csv("Data/10th Grade ISAT 2018-19 for BYUI.csv") %>% 
  mutate(year = "2018-19") %>% 
  select(colNames)

TenthGradeFinal<- rbind(TenthGrade1,TenthGrade2,TenthGrade3, TenthGrade4,TenthGrade5) %>% rename()



# Graphics ----------------------------------------------------------------


TenthNumbersFinal <- TenthGradeFinal %>% 
  mutate(`EDUID` = as.numeric(`EDUID`),
         `Gender` = as.factor(`Gender`),
         `Enrolled Grade` = as.numeric(`Enrolled Grade`),
         `year` = as.factor(`year`),
         `ELA/Literacy Scale Score` = as.numeric(`ELA/Literacy Scale Score`),
         `Standard Error for ELA/Literacy Scale Score` = as.numeric(`Standard Error for ELA/Literacy Scale Score`),
         `Reading Claim Scale Score` = as.numeric(`Reading Claim Scale Score`),
         `Reading Claim Standard Error` = as.numeric(`Reading Claim Standard Error`),
         `Writing Claim Scale Score` = as.numeric(`Writing Claim Scale Score`),
         `Writing Claim Standard Error` = as.numeric(`Writing Claim Standard Error`),
         `Listening Claim Scale Score` = as.numeric(`Listening Claim Scale Score`),
         `Listening Claim Standard Error` = as.numeric(`Listening Claim Standard Error`),
         `Research/Inquiry Claim Scale Score` = 
           as.numeric(`Research/Inquiry Claim Scale Score`),                 
         `Research/Inquiry Claim Standard Error` = 
           as.numeric(`Research/Inquiry Claim Standard Error`),
         `Concepts and Procedures Claim Scale Score` = 
           as.numeric(`Concepts and Procedures Claim Scale Score`),
          `Concepts and Procedures Claim Standard Error` = 
            as.numeric(`Concepts and Procedures Claim Standard Error`),
          `Problem Solving and Modeling & Data Analysis Claim Scale Score` =
            as.numeric(`Problem Solving and Modeling & Data Analysis Claim Scale Score`),
          `Problem Solving and Modeling & Data Analysis Claim Standard Error` =
            as.numeric(`Problem Solving and Modeling & Data Analysis Claim Standard Error`),
          `Communicating Reasoning Claim Scale Score` = 
            as.numeric(`Communicating Reasoning Claim Scale Score`),
          `Communicating Reasoning Claim Standard Error`=
            as.numeric(`Communicating Reasoning Claim Standard Error`))     



# Proficiency -------------------------------------------------------------

#3rd grade

Prof3GradeMin <- c(2001,2367,2432,2490)

Prof3GradeMax <- c(2366,2431,2489,2811)

#4th grade

Prof4Min <- c(2032,2416,2473, 2533)

Prof4Max <- c(2415,2472,2532,2867)

#5th grade

Prof5Min <- c(2056,2442,2502,2582)

Prof5Max <- c(2441,2501,2581,2916)

#6th grade

Prof6Min <- c(2079, 2257,2531,2618)

Prof6Max <- c(2456,2530,2617,2937)

#7th grade

Prof7Min <- c(2082,2479,2552,2649)

Prof7Max <- c(2478,2552,2648,2964)

#8th grade
Prof8Min <- c(2097,2487,2567,2668)

Prof8Max <- c(2486,2566,2667,2989)

#10th grade

Prof10Min <- c(2102,2491,2577,2677)

Prof10Max <- c(2490,2576,2676,3032)


# ELA/Literacy Graphics ---------------------------------------------------


TenthNumbersFinal %>%  
  ggplot(aes(y = `ELA/Literacy Scale Score`, x = `year`))+
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = year, alpha = 0.5))+
  #scale_y_discrete(breaks=seq(2300,2800,250))+
  geom_hline(yintercept = Prof10Max, color = c("#CB0000","#FB6542","#AEBD38", "#598234"), lty = 2, size = 2)+
  guides(alpha = FALSE) +
  theme_classic()


TenthNumbersFinal %>% 
  filter(`ELA/Literacy Scale Score` != "NA") %>% 
  group_by(year) %>% 
  summarise(Average = mean(`ELA/Literacy Scale Score`),
           AverageStandardError = mean(`Standard Error for ELA/Literacy Scale Score`)) %>% 
  ungroup() %>% 
  ggplot(aes(y = Average, x = year))+
  geom_hline(yintercept = Prof10Max, color = c("#CB0000","#FB6542","#AEBD38", "#598234"),lty = 2, alpha = 0.5, size = 1.5)+
  #geom_hline(yintercept = Prof10Min, color = c("#CB0000","#FB6542","#AEBD38", "#598234"),lty =2, alpha = 0.5)+
  geom_point()+
  labs(y = "Average ELA/Literacy Score", x = "School Year", color = "Legend")+
  #guides(year = "Below Basic")+
  scale_color_manual(values = c("#CB0000","#FB6542","#AEBD38", "#598234"))+
  theme_classic()



TenthNumbersFinal %>% 
  filter(`ELA/Literacy Scale Score` != "NA") %>% 
  group_by(year) %>% 
  summarise(Average = mean(`ELA/Literacy Scale Score`),
            AverageStandardError = mean(`Standard Error for ELA/Literacy Scale Score`)) %>% 
  ungroup() %>%
  ggplot(aes(y = Average, x = year))+
  geom_point(x= d$"2016-17", color = "2016-17")
  geom_point(x= d$"2017-18", color = "2016-17")
  #geom_segment(aes(xend = 2500 , yend = 2000, group = year))
  #scale_y_continuous(limits = c(2000, 3000))




# Reading Claim Score -----------------------------------------------------


# Writing Claim Score -----------------------------------------------------


# Listening Claim Score ---------------------------------------------------

# Research/Inquiry Claim Score --------------------------------------------


# Concepts and Procedures Claim Score -------------------------------------



# Problem Solving and Modeling & Data Analysis Claim  Score ---------------


# Communicating Reasoning Scale Score -------------------------------------


