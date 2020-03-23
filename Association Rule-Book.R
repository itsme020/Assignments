library(arules)

rules <- apriori(as.matrix(book),parameter=list(support=0.02, confidence = 0.5,minlen=5))

inspect(head(sort(rules, by = "lift"))) 
library(arulesViz)
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")

