rm(list = ls())
require("ScottKnott")
attach(mtcars)

# rhythms Overall compare with code smells
rhythms_overall <- read.csv("Data/R_data_rhythms_overall.csv")
av <- aov(sum ~ rhythm, data=rhythms_overall)
sk <- SK(av, which='rhythm',  dispersion='se', sig.level=0.05)
sk
plot(sk, cex=1.5, cex.lab=1.5, xlab = "", ylim=c(-2000, 7000))

# Tactics Overall compare with code smells
tactics_overall <- read.csv("Data/R_data_tactics_overall.csv")
av <- aov(sum ~ tactic, data=tactics_overall)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk, cex=1.5, cex.lab=1.5, xlab = "", ylim=c(-2000, 5000))