cityCensus = read.csv("2010_Census_Populations_by_Zip_Code.csv")
options(max.print = .Machine$integer.max) #let to print all dataframe's rows without omit anyone

totPopulation=sum(cityCensus$Total.Population) # computation of the total city's population
print(paste("The total population is:" ,totPopulation))

#this is the function to apply to all dataframe
#it extracts a list of triples that contain the ZipCode, the male percent and the female percent
percentMaleFemale = function(x){
  lista = c(x[1], x[4]/x[2]*100, x[5]/x[2]*100)
}
matrix = as.matrix(t(apply(cityCensus,1,percentMaleFemale))) #conversion from list to matrix
dimnames(matrix)[[2]]<-c("ZipCode","MalesPercent","FemalesPercent") #renaming of matrix columns
print(matrix)

#Now extract a subset of dataframe compound by ZipCode and Total Population of all districts with Average Household Size >3
subCensus = subset(cityCensus,subset = (Average.Household.Size>3),select = c(Zip.Code, Total.Population))
write.table(subCensus,"Output3.txt",sep="\t",row.names=FALSE) #Saving subset into a file Output3.txt

#Now extract a subset of dataframe compound by Total Males and Total Females of all district with Median Age > 35
print(subset(cityCensus,subset = (Median.Age>35),select = c(Total.Males,Total.Females)))