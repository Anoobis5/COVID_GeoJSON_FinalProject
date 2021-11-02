#Read in data
df <- read.csv(file="clean_df.csv")

#Perform multiple linear regression
lm(Vax_Rate ~ POP100 + P0010003 + P0010004 + P0010005 + P0010006 + P0010007 + P0010008 + P0010009,data=df) 

#Determine p-value and r-squared value
summary(lm(Vax_Rate ~ POP100 + P0010003 + P0010004 + P0010005 + P0010006 + P0010007 + P0010008 + P0010009,data=df))
