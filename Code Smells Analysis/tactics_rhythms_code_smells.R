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



# Code smells one by one analysis by tactics
overall <- read.csv("Data/R_data_tactics.csv")

myvars = c("Cyclic.dependency", "tactic")
new_data = overall[myvars]
av <- aov(Cyclic.dependency ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("God.component", "tactic")
new_data = overall[myvars]
av <- aov(God.component ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Ambiguous.interface", "tactic")
new_data = overall[myvars]
av <- aov(Ambiguous.interface ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Feature.concentration", "tactic")
new_data = overall[myvars]
av <- aov(Feature.concentration ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Unstable.dependency", "tactic")
new_data = overall[myvars]
av <- aov(Unstable.dependency ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Scattered.functionality", "tactic")
new_data = overall[myvars]
av <- aov(Scattered.functionality ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Dense.structure", "tactic")
new_data = overall[myvars]
av <- aov(Dense.structure ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Imperative.abstraction", "tactic")
new_data = overall[myvars]
av <- aov(Imperative.abstraction ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Multifaceted.abstraction", "tactic")
new_data = overall[myvars]
av <- aov(Multifaceted.abstraction ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Unnecessary.abstraction", "tactic")
new_data = overall[myvars]
av <- aov(Unnecessary.abstraction ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Unutilized.abstraction", "tactic")
new_data = overall[myvars]
av <- aov(Unutilized.abstraction ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Feature.envy", "tactic")
new_data = overall[myvars]
av <- aov(Feature.envy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Deficient.encapsulation", "tactic")
new_data = overall[myvars]
av <- aov(Deficient.encapsulation ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Unexploited.encapsulation", "tactic")
new_data = overall[myvars]
av <- aov(Unexploited.encapsulation ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Broken.modularization", "tactic")
new_data = overall[myvars]
av <- aov(Broken.modularization ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Cyclically.dependent.modularization", "tactic")
new_data = overall[myvars]
av <- aov(Cyclically.dependent.modularization ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Hub.like.modularization", "tactic")
new_data = overall[myvars]
av <- aov(Hub.like.modularization ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Insufficient.modularization", "tactic")
new_data = overall[myvars]
av <- aov(Insufficient.modularization ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Broken.hierarchy", "tactic")
new_data = overall[myvars]
av <- aov(Broken.hierarchy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Cyclic.hierarchy", "tactic")
new_data = overall[myvars]
av <- aov(Cyclic.hierarchy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Deep.hierarchy", "tactic")
new_data = overall[myvars]
av <- aov(Deep.hierarchy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Missing.hierarchy", "tactic")
new_data = overall[myvars]
av <- aov(Missing.hierarchy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Multipath.hierarchy", "tactic")
new_data = overall[myvars]
av <- aov(Multipath.hierarchy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Rebellious.hierarch", "tactic")
new_data = overall[myvars]
av <- aov(Rebellious.hierarch ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Wide.hierarchy", "tactic")
new_data = overall[myvars]
av <- aov(Wide.hierarchy ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Abstract.function.call.from.constructor", "tactic")
new_data = overall[myvars]
av <- aov(Abstract.function.call.from.constructor ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Complex.conditional", "tactic")
new_data = overall[myvars]
av <- aov(Complex.conditional ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Complex.method", "tactic")
new_data = overall[myvars]
av <- aov(Complex.method ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Empty.catch.clause", "tactic")
new_data = overall[myvars]
av <- aov(Empty.catch.clause ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Long.identifier", "tactic")
new_data = overall[myvars]
av <- aov(Long.identifier ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Long.method", "tactic")
new_data = overall[myvars]
av <- aov(Long.method ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Long.parameter.list", "tactic")
new_data = overall[myvars]
av <- aov(Long.parameter.list ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Long.statement", "tactic")
new_data = overall[myvars]
av <- aov(Long.statement ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Magic.number", "tactic")
new_data = overall[myvars]
av <- aov(Magic.number ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)

myvars = c("Missing.default", "tactic")
new_data = overall[myvars]
av <- aov(Missing.default ~ tactic, data=new_data)
sk <- SK(av, which='tactic',  dispersion='se', sig.level=0.05)
sk
plot(sk)
