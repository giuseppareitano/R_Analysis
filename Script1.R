cityCensus = read.csv("2010_Census_Populations_by_Zip_Code.csv")
options(max.print = .Machine$integer.max) #let to print all dataframe's rows without omit anyone

totPopulation=sum(cityCensus$Total.Population) # computation of the total city's population
print(paste("The total population is:" ,totPopulation))


percentMaleFemale = function(x){
  lista = c(x[1], x[4]/x[2]*100, x[5]/x[2]*100)
}
matrix = as.matrix(t(apply(cityCensus,1,percentMaleFemale)))
dimnames(matrix)[[2]]<-c("ZipCode","MalesPercent","FemalesPercent")
print(matrix)


