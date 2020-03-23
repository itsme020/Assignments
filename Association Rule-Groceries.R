
View(groceries)
#association Rule
library(arules)
#attach titanic


rules<-apriori(groceries)
arules::inspect(rules)
rules.sorted<-sort(rules,by="lift")
arules::inspect(rules.sorted)

#rules with rhs 
groceries_rules<-apriori(groceries,parameter = list(support = 0.2,confidence = 0.5,minlen=3))

library(arulesViz)
plot(groceries_rules,method = "scatterplot")

arules::inspect(rules)


#change in ratio
groceries_rules<-apriori(groceries,parameter = list(support = 0.2,confidence = 0.5,minlen=2))

library(arulesViz)
plot(groceries_rules,method = "scatterplot")

arules::inspect(rules)
