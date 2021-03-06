#FAMD - Universal Bank
UB=read.csv(file.choose())
str(UB)
UB$Education= as.factor(UB$Education)
UB$Securities.Account= as.factor(UB$Securities.Account)
UB$CD.Account= as.factor(UB$CD.Account)
UB$Online= as.factor(UB$Online)
UB$CreditCard= as.factor(UB$CreditCard)
UB$Personal.Loan= as.factor(UB$Personal.Loan)
str(UB)
attach(UB)
names(UB)
res1 <- FAMD(UB[c(-1,-5)])
res1<-FAMD(UB, ncp=10)
summary.FAMD(object = res1,nbelements = 10, axes = c(1,10))# for first 10 elements
summary.FAMD(object = res1, nbelements=20)# for all elements/rows
summary.FAMD(object = res1,ncp=10)
summary.FAMD(object = res1,ncp=10,graph=FALSE)# increase Dimension, No Graph
write.csv(res1$ind$coord,"transformed.csv") # extracts only Dim scores (factor scores)
write.csv(res1$quali.var$coord,"qual.coord1.csv")
dimdesc(res1)
dimdesc(res1, axes=1:10)
write.csv(res1$ind$contrib,"contrib.csv")
write.csv(res1$quali.var$contrib,"quali_con.csv")
write.csv(res1$quanti.var$contrib,"quanti_con.csv")
write.csv(res1$quali.var$coord,"quali_dimscore.csv")
write.csv(res1$quanti.var$coord,"quanti_dimscore.csv")
plot(res1,choix="ind",habillage=8, axes = c(2, 3))
plot(res1,choix="ind",habillage=14)
dimdesc(res, proba=0.2)
