#' ---
#' title: "Class 5: R Graphics"
#' author: Elliot Suh
#' date: Thu Apr 18 2019
#' ---
#Plots
  #Children Birth Weight Line Graph


par(mar=c(5,4,4,2)+0.1)
weight <- read.table("Data_Onion/weight_chart.txt", header=TRUE)
plot(weight, type="b", pch=15, cex=1.5,lwd=2,ylim=c(2,10),
     xlab="Age (months)",ylab="Weight (kg)", main="Children Nuggets")
par( mar=c(2,12,3,2))
  #Mice Gene Expression Bar Plot
mice <- (read.table("Data_Onion/feature_counts.txt", sep="\t", header=TRUE))
barplot(mice$Count, names.arg=mice$Feature, horiz=TRUE, las=1, 
        col="yellow", xlab="Count", main="Swirly Whirlies")
  #Men V Women the Ultimate Fight
par( mar=c(2,8,3,2))
gender <- read.table("Data_Onion/male_female_counts.txt", sep="\t", 
                     header=TRUE)
barplot(gender$Count, names.arg=gender$Sample, 
        col=c("blue","red"), horiz=TRUE, las=1,main="Men vs. Women")
  #Big Data
par(mar=c(5,4,4,2)+0.1)
expression <- read.table("Data_Onion/up_down_expression.txt", sep="\t", 
                         header=TRUE)
palette(c("yellow","steelblue","turquoise"))
plot(expression$Condition1, expression$Condition2, 
     col=expression$State, main="Expression")