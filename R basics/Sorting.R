#Ranking states from least to most dangerous using dslabs package

#Putting vectors in order
sort(murders$total)

index <- order(murders$total)
murders$total[index]
