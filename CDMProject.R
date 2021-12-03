
set.seed(5)
df <- data.frame(seq(1,250,1))

df$height <- rnorm(250, mean=160, sd=10)
summary(height)

df$bmi <- rnorm(250, mean=25, sd=2)
summary(bmi)

country <- c("Portugal", "France", "UK", "Germany", "Spain")

country2 <- sample(country, 250, replace =TRUE, c(0.1,0.3,0.4,0.1,0.1))

table(country2)

cities <- c("Lisbon", "Oporto", "Paris", "Leon", "London", "Edinburgh", "Barcelona", "Madrid", "Munich", "Berlin")

df$cities <- sample(cities, 250, replace =TRUE, c(0.02,0.01,0.27,0.03,0.02, 0.03, 0.02, 0.02, 0.13, 0.13))

gender <- c("female", "male")

df$gender <- sample(gender, 250, replace =TRUE)

table(df$gender)

case_control <- c("control", "case")

df$case_control <- sample(case_control, 250, replace =TRUE, c(0.8, 0.2))

table(df$case_control)


# Education ---------------------------------------------------------------

education <- c("primary", "highschool", "bachelor", "master", "phD")

# Education ---------------------------------------------------------------
