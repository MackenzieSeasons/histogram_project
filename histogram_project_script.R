library(tidyverse)

#loading data
final.data <- read_csv("finalData.csv")

#making a graph
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth=.25, fill="black", color="black")
print(my.hist)
#to see the graph you have to print it

#now we're adding labels
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth = .25, fill="black", color="black")
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
print(my.hist)

#now we're adjusting the x and y axis ranges
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth = .25, fill="black", color="black")
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(1, 5), ylim=c(0, 125))
print(my.hist)

#making it more APA for funsies
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth = .25, fill="black", color="black")
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(1, 5), ylim=c(0, 125))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = "black" , size=0.5, linetype='solid'), axis.line.y = element_line(colour = "black" , size=0.5, linetype='solid'))
print(my.hist)

#now changing the bin width
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth = 1, fill="black", color="black")
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5, 5.5), ylim=c(0, 400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = "black" , size=0.5, linetype='solid'), axis.line.y = element_line(colour = "black" , size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous( breaks=seq(0.5,5.5,by=1) )
print(my.hist)

#now making it sink lower to meet the x axis (adding line 52)
my.hist <- ggplot(final.data,aes(se.measure))
my.hist <- my.hist + geom_histogram(aes(y= ..count..), binwidth = 1, fill="black", color="black")
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5, 5.5), ylim=c(0, 400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour = "black" , size=0.5, linetype='solid'), axis.line.y = element_line(colour = "black" , size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous( breaks=seq(0.5,5.5,by=1) )
my.hist <- my.hist + scale_y_continuous( expand = c(0,0) )
print(my.hist)

#saving the graph below in 6 inches by 6 inches
ggsave(filename="myHistograph.pdf", plot= my.hist, width=6,height=6, units="in")

#now using quickplot for some reason i'm unsure of
my.hist <- qplot(se.measure,data=final.data,binwidth=1, fill=I("black"), colour=I("black"))
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5, 5.5), ylim=c(0, 400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour =  "black" , size=0.5, linetype='solid'),axis.line.y=element_line(colour =  "black" , size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous( breaks=seq(0.5,5.5,by=1) )
my.hist <- my.hist + scale_y_continuous( breaks=seq(0,400,by=25), expand = c(0,0) )
print(my.hist)

#could also use the below syntax to make the graph, but don't because it'll give you white lines in between bars
my.hist <- qplot(se.measure,data=final.data,binwidth=1)
my.hist <- my.hist + labs(title="Self-esteem Histogram",x="Self-esteem Level", y="Frequency")
my.hist <- my.hist + coord_cartesian(xlim=c(0.5, 5.5), ylim=c(0, 400))
my.hist <- my.hist + theme_classic()
my.hist <- my.hist + theme(axis.line.x = element_line(colour =  "black" , size=0.5, linetype='solid'),axis.line.y=element_line(colour =  "black" , size=0.5, linetype='solid'))
my.hist <- my.hist + scale_x_continuous( breaks=seq(0.5,5.5,by=1) )
my.hist <- my.hist + scale_y_continuous( breaks=seq(0,400,by=25), expand = c(0,0) )
print(my.hist)






