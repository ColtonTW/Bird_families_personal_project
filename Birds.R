library("ggplot2")
library("plotly")
birds <- read.csv(file='All_birds.csv')
summary(birds)
head(birds)



par(mfrow = c(1,1))

Eng <- table(birds$family_english)
plot(Eng)
barplot(Eng)
pie(Eng)
hist(Eng)
summary(Eng)
head(Eng)
length(Eng)
lat <- table(birds$family_latin)
plot(lat)
length(lat)


length(birds$order)
ords <- table(birds$order)
length(ords)
pie(ords)


passes <- subset.data.frame(birds, birds$order == "Passeriformes")
summary(passes)
pie(table(passes$family_latin)) ## need to add table to get counts 
perc_passes <- prop.table((table(passes$family_english)))*100
plot(perc_passes, ylim=c(0,7), las = 2, cex.axis=0.5)

## getting percentages of each family/order 
prop_eng<- prop.table(table(birds$family_english))
perc_eng <- prop_eng*100 
perc_eng
plot(perc_eng, ylim = c(0,4), las=2, cex.axis = 0.5) ## las rotates labels # cex.axis alters label size

perc_order <- prop.table(table(birds$order))*100
plot(perc_order, ylim=c(0,70), cex.axis=0.5, las=2, col="Blue")
## without passes for a better look at less common bird orders
perc_order[perc_order != 'Passeriformes']
