try(setwd("~/Documents/Conferences/EmberWorkshop/Live/Github/analysis//"))


d = read.csv("../data/polygamousMarriage.csv",stringsAsFactors = F)

tab = table(d$polygamousMarriage)

barplot(tab)

pdf("../results/polygamousMarriage.pdf")
barplot(tab)
dev.off()
