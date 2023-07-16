
library(igraph)
library(ggplot2)

setwd(dirname(rstudioapi::getSourceEditorContext()$path))

data <- read.csv("data/social_network.csv", stringsAsFactors = FALSE)

network <- graph()

network <- add.vertices(network, n = nrow(data))

V(network)$name <- data$Name
V(network)$age <- data$Age

network <- add.edges(network, as.vector(data$Source), as.vector(data$Target))

degree <- degree(network)
closeness <- closeness(network)
betweenness <- betweenness(network)

cat("Degree Centrality:\n")
print(degree)
cat("\nCloseness Centrality:\n")
print(closeness)
cat("\nBetweenness Centrality:\n")
print(betweenness)

plot(network, edge.arrow.size = 0.5, vertex.color = "skyblue", vertex.size = degree * 2)
ggsave("output/network_visualization.png", width = 800, height = 600)
