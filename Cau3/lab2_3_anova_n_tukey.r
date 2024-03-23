require(readxl)
data <- read_excel(file.choose())

anova_result <- aov(Satisfaction ~ Education, data = data)
summary(anova_result)
qf(p=.05,3-1,24-3, lower.tail=FALSE)

tukey_result <- TukeyHSD(anova_result)
tukey_result
