# use with execute
data(esoph) # load dataframe
esoph # print dataframe
dim(esoph) # get dimensions
nrow(esoph) # get number of rows
esoph[1:10, ] # first ten row of dataframe
names(esoph) # header names
head(esoph)
tail(esoph)
str(esoph) # structure of dataframe
summary(esoph) # basic statistics

# or get statistics separate from each other
mean(esoph)
median(esoph)
mean(esoph$ncases[1:15]) # first 15 cases of 25-34 age range
min(esoph)
max(esoph)

# standard deviation
sd(esoph$ncases)

# variance
var(esoph$ncases)

# mean/average numbers of cases, in smokers’ "20-29" group
mean (subset(esoph$ncases, esoph$tobgp == "20-29"))



# plot diagram on number of controls per cases
plot(esoph$ncases, esoph$ncontrols, xlab="Number of Cases", ylab="Number of Controls",
     main="Number of Cases vs Number of Controls", pch=15, col="blue")


# print a boxplot of cancer cases, according to each level of alcohol consumption
boxplot(esoph$ncases ~ esoph$alcgp)

# ... or prettier
boxplot(esoph$ncases ~ esoph$agegp, main="Esoph", border="gray", lwd=1, col=rainbow(5))

# print a strip chart of cancer cases, according to each level of alcohol consumption
stripchart(esoph$ncases ~ esoph$agegp)