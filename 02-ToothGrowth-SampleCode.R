library(ggplot2)
library(datasets)
library(gridExtra)
data("ToothGrowth")
attach(ToothGrowth)
set.seed(123)
#require(graphics)
#coplot(len ~ dose | supp, data = ToothGrowth, panel = panel.smooth,
#       xlab = "ToothGrowth: Length vs Dosage, given type of supplement")

ToothGrowth$dose <- factor(ToothGrowth$dose)

ggplot(ToothGrowth,aes(dose,len)) + 
    geom_boxplot(aes(fill=supp)) + 
    scale_fill_brewer(palette="YlOrRd") +
    theme(legend.position=c(1,0.4),legend.justification=c(1,1)) + 
    labs(title="Scatter Plot of Tooth Length vs. Dosage Levels",x="Dosage Levels (mg)",y="Tooth Length")

plot_right <- ggplot(ToothGrowth,aes(len,fill=supp)) + 
    geom_density(alpha=.5) + 
    coord_flip() + 
    scale_fill_manual(values=c("orange","purple")) + 
    theme(legend.position="none") + 
    labs(title="Density Plot",y="Density",x="Tooth Length")
grid.arrange(scatter, plot_right, ncol=2, nrow=1, widths=c(4, 2))

# test delivery method
t.test(len ~ supp, paired = F, var.equal = F, data = ToothGrowth)

# test dosage levels
dose_05_10 <- subset(ToothGrowth, dose %in% c(0.5, 1.0))
dose_05_20 <- subset(ToothGrowth, dose %in% c(0.5, 2.0))
dose_10_20 <- subset(ToothGrowth, dose %in% c(1.0, 2.0))

t.test(len ~ dose, paired = F, var.equal = F, data = dose_05_10)
t.test(len ~ dose, paired = F, var.equal = F, data = dose_05_20)
t.test(len ~ dose, paired = F, var.equal = F, data = dose_10_20)
