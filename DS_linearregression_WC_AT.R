colnames(WC_AT)
boxplot(WC_AT$AT,range = 1.5)
boxplot(WC_AT$Waist,range = 1.5)
scatter.smooth(WC_AT,xlabel="Waist", ylabel="AT")
linearreg.model<-lm(AT~Waist,data=WC_AT)
summary(linearreg.model)
new_AT=data.frame(Waist=c(40,75,200,84))
AT1=predict(linearreg.model,new_AT); AT1
