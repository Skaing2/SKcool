---
title: "Snake River School District: Standardized Test Scores"
output:
  html_document:  
    keep_md: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---





```r
#3rd grade

Prof3Min <- c(2001,2367,2432,2490)

Prof3Max <- c(2366,2431,2489,2811)

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

# Colors
COLORS <- c("#CB0000","#FB6542","#AEBD38", "#598234")
```


## Grades {.tabset}

### 3rd Grade {.tabset .tabset-fade .tabset-pills}

#### ELA Literacy Scores



```r
ThirdGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

#### Reading Scores


```r
ThirdGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-4-1.png)<!-- -->


#### Writing Scores


```r
ThirdGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

#### Listening Scores

```r
ThirdGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

#### Research Inquiry Scores

```r
ThirdGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-7-1.png)<!-- -->

#### Mathematics Scores

```r
ThirdGrade %>%  
  ggplot(aes(y = MathematicsScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-8-1.png)<!-- -->

#### Concepts And Procedures Scores

```r
ThirdGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
ThirdGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-10-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
ThirdGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof3Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-11-1.png)<!-- -->


### 4th Grade {.tabset .tabset-fade .tabset-pills}


#### ELA Literacy Scores



```r
FourthGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

#### Reading Scores


```r
FourthGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-13-1.png)<!-- -->


#### Writing Scores


```r
FourthGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-14-1.png)<!-- -->

#### Listening Scores

```r
FourthGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-15-1.png)<!-- -->

#### Research Inquiry Scores

```r
FourthGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-16-1.png)<!-- -->


#### Concepts And Procedures Scores

```r
FourthGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-17-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
FourthGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-18-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
FourthGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof4Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-19-1.png)<!-- -->

### 5th Grade {.tabset .tabset-fade .tabset-pills}

#### ELA Literacy Scores



```r
FifthGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-20-1.png)<!-- -->

#### Reading Scores


```r
FifthGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-21-1.png)<!-- -->


#### Writing Scores


```r
FifthGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-22-1.png)<!-- -->

#### Listening Scores

```r
FifthGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-23-1.png)<!-- -->

#### Research Inquiry Scores

```r
FifthGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-24-1.png)<!-- -->

#### Concepts And Procedures Scores

```r
FifthGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-25-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
FifthGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-26-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
FifthGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-27-1.png)<!-- -->


### 6th Grade {.tabset .tabset-fade .tabset-pills}

#### ELA Literacy Scores



```r
SixthGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-28-1.png)<!-- -->

#### Reading Scores


```r
SixthGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-29-1.png)<!-- -->


#### Writing Scores


```r
SixthGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-30-1.png)<!-- -->

#### Listening Scores

```r
SixthGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-31-1.png)<!-- -->

#### Research Inquiry Scores

```r
SixthGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-32-1.png)<!-- -->

#### Concepts And Procedures Scores

```r
SixthGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-33-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
SixthGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-34-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
SixthGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof6Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-35-1.png)<!-- -->

### 7th Grade {.tabset .tabset-fade .tabset-pills}

#### ELA Literacy Scores


```r
SeventhGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-36-1.png)<!-- -->

#### Reading Scores


```r
SeventhGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-37-1.png)<!-- -->


#### Writing Scores


```r
SeventhGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-38-1.png)<!-- -->

#### Listening Scores

```r
SeventhGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-39-1.png)<!-- -->

#### Research Inquiry Scores

```r
SeventhGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-40-1.png)<!-- -->

#### Concepts And Procedures Scores

```r
SeventhGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-41-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
SeventhGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-42-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
SeventhGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof7Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-43-1.png)<!-- -->


### 8th Grade {.tabset .tabset-fade .tabset-pills}

#### ELA Literacy Scores


```r
EighthGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-44-1.png)<!-- -->

#### Reading Scores


```r
EighthGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-45-1.png)<!-- -->


#### Writing Scores


```r
EighthGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-46-1.png)<!-- -->

#### Listening Scores

```r
EighthGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-47-1.png)<!-- -->

#### Research Inquiry Scores

```r
EighthGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-48-1.png)<!-- -->

#### Concepts And Procedures Scores

```r
EighthGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-49-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
EighthGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-50-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
EighthGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof8Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-51-1.png)<!-- -->


### 10th Grade {.tabset .tabset-fade .tabset-pills}

#### ELA Literacy Scores


```r
TenthGrade %>%  
  ggplot(aes(y = ElaLiteracyScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-52-1.png)<!-- -->

#### Reading Scores


```r
TenthGrade %>%  
  ggplot(aes(y = ReadingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof5Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-53-1.png)<!-- -->


#### Writing Scores


```r
TenthGrade %>%  
  ggplot(aes(y = WritingClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-54-1.png)<!-- -->

#### Listening Scores

```r
TenthGrade %>%  
  ggplot(aes(y = ListeningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-55-1.png)<!-- -->

#### Research Inquiry Scores

```r
TenthGrade %>%  
  ggplot(aes(y = ResearchInquiryClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-56-1.png)<!-- -->

#### Concepts And Procedures Scores

```r
TenthGrade %>%  
  ggplot(aes(y = ConceptsAndProceduresClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-57-1.png)<!-- -->

#### Problem Solving And Modeling Data Analysis Scores

```r
TenthGrade %>%  
  ggplot(aes(y = ProblemSolvingAndModelingDataAnalysisClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-58-1.png)<!-- -->

#### Communicating Reasoning Scores


```r
TenthGrade %>%  
  ggplot(aes(y = CommunicatingReasoningClaimScaleScore, x = Year))+ 
  geom_jitter()+
  coord_flip()+
  geom_boxplot(aes(group = Year, alpha = 0.5))+
  geom_hline(yintercept = Prof10Max, color = COLORS, lty = 2, size = 2)+
  guides(alpha = FALSE) +
  labs(title = "Distribution of Scores")+
  theme_classic()
```

![](FInal-File_files/figure-html/unnamed-chunk-59-1.png)<!-- -->



