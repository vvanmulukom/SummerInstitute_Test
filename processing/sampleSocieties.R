try(setwd("~/Documents/Conferences/EmberWorkshop/Live/Github/processing/"))

# Load data
srs = read.csv("../data/SRS.csv",stringsAsFactors = F)

# Set random seed so that the script is deterministic
set.seed(2389)
# Sample 20 societies
socSample = srs[sample(1:nrow(srs),20),]

# Coder names
coders = c("HM","JH","KT","EP","ES","VH","LC","BM", "MY", "VM", "CB", "DX", "MZ", "JJ", "SC", "KK", "TF", "LM", "CM", "GM")

# Create columns for coder and subsitence type
socSample$Coder = sort(coders)
socSample$subsistenceType = "NOT CODED YET"
          
write.csv(socSample, "../data/SubsistenceType.csv",row.names = F)
