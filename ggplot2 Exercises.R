library(ggplot2)
library(ggthemes)
head(mpg)
df = mpg

#histogram
pl <- ggplot(df,aes(x=hwy))
pl + geom_histogram(fill='red',alpha=.5)

#Barplot of car counts per manufacturer with color fill defined by cyl count

pl <- ggplot(df,aes(manufacturer))
pl + geom_bar(aes(fill = factor(cyl)))
print(pl)

#Switch now to use the txhousing dataset that comes with ggplot2

df=txhousing
head(df)

#Create a scatterplot of volume versus sales. 
#Afterwards play around with alpha and color arguments to clarify information.

pl <- ggplot(data = df, aes(x=volume ,y=sales))
pl + geom_point(alpha=.5,color='purple') + geom_smooth(color='red',linewidth=2)
    