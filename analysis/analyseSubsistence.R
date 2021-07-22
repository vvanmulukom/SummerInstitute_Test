try(setwd("~/Documents/Conferences/EmberWorkshop/Live/Github/analysis//"))


d = read.csv("../data/SubsistenceType.csv",stringsAsFactors = F)

tab = table(d$subsistenceType)

bplot = barplot(tab)

pdf("../results/SubsistenceTypes.pdf")
bplot
dev.off()
