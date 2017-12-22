cityCensus = read.csv("2010_Census_Populations_by_Zip_Code.csv")
options(max.print = .Machine$integer.max) #let to print all dataframe's rows without omit anyone

totPopulation=sum(mydata$Total.Population) # computation of the total city's population 
print(paste("The total population is:" ,totPopulation))
