#package installation
install.packages('tidyverse')
install.packages('Amelia')
install.packages('corrplot')
install.packages('themis')
library(tidyverse)
library(Amelia)
library(corrplot)
library(themis)
#package installation
df <- read.csv("C:/Users/User/Desktop/data analytics/Early Stage Diabetic Risk Prediction/dataset.csv")
head(df)
str(df)
colnames(df)

#Null value analysis
colSums(is.na(df))

missmap(df,main = "Missing Data Map",col=c("yellow", "black"),legend = TRUE)

#distinguishing categorical and continuous value for EDA
cont_df <- df['Age']
cat_df <- df[,names(df)!='Age']

cat_df
cont_df

#EDA

#target value data distribution/ class imbalance
df %>% 
  ggplot(aes(x = class, fill = class)) +
  geom_bar() +
  geom_text(
    stat = "count",
    aes(label = after_stat(count)),
    vjust = -0.5
  ) +
  labs(
    title = "Target Value Data Distribution",
    x = "Class",
    y = "Count"
  )

#categorical value visualization

