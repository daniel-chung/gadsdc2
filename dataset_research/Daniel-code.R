### Processing abalone data

# Pull in abalone data
abalone.data <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data", 
                         header=F)

# Define column names
abalone.columns <- c("Sex","Length","Diameter","Height",
                     "Weight.Whole","Weight.Shucked",
                     "Weight.Viscera","Weight.Shell","Rings")

# Rename variables
colnames(abalone.data) <- c(abalone.columns)

# Summarize data
summary(abalone.data)

# Loop over variables and count the number of missing records
for (i in abalone.columns){
  x <-abalone.data[[i]]
  print(i)
  print(sum(is.na(x)==T))
}

# Data visualizations

ggplot(data = abalone.data) + aes(x = Length) + geom_density()
ggplot(data = abalone.data) + aes(x = Length) + geom_density(adjust=.25)

ggplot(data = abalone.data) + 
  aes(x = Length, y=Weight.Whole) + 
  geom_point() +
  ggtitle("Length vs Whole weight")

ggplot(data = abalone.data) + 
  aes(x = Length, y=Weight.Shucked) + 
  geom_point() +
  ggtitle("Length vs Shucked weight")

ggplot(data = abalone.data) + 
  aes(x = Length, y=Weight.Viscera) + 
  geom_point() +
  ggtitle("Length vs Viscera weight") + 
    xlim(0,1)

### EOF ###

