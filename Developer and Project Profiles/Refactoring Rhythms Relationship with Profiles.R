rm(list = ls())
require("ScottKnott")
attach(mtcars)

# Skott-knott test on project profiles (Refactoring Rhythms)
par(mfrow=c(1,1))
rhythms_overall <- read.csv("Data/Rhythms-pro.csv")
av <- aov(bool ~ rhythm.project, data=rhythms_overall)
sk <- SK(av, which='rhythm.project',  dispersion='se', sig.level=0.05)
par(mar=c(16,6,4,1))
plot(sk, las=2,cex=1.5, cex.lab=1.5, xlab = "")
mtext(text = "A) Project Profiles",
      side = 1,#side 1 = bottom
      line = 14,
      cex = 1.5)

# Skott-knott test on developer profiles (Refactoring Rhythms)
rhythms_overall <- read.csv("Data/Rhythms-dev.csv")
av <- aov(bool ~ rhythm.dev, data=rhythms_overall)
sk <- SK(av, which='rhythm.dev',  dispersion='se', sig.level=0.05)
par(mar=c(16,6,4,1))
plot(sk, las=2, cex=1.5, cex.lab=1.5, xlab = "")
mtext(text = "A) Author Profiles",
      side = 1,#side 1 = bottom
      line = 11,
      cex = 1.5)

