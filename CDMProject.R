#### HI IT'S NICKY I'M JUST TESTING HOW TO COMMIT ON GIT
### hi it's nicky's second message

#Arsenal package: https://cran.r-project.org/web/packages/arsenal/vignettes/tableby.html


set.seed(5)
df <- data.frame(seq(1,250,1))


# Create height BMI -------------------------------------------------------


df$height <- rnorm(250, mean = 160, sd = 10)
summary(df$height)

df$bmi <- rnorm(250, mean = 25, sd = 2)
summary(df$bmi)

cities <- c("Lisbon", "Oporto", "Paris", "Leon", "London", "Edinburgh", "Barcelona", "Madrid", "Munich", "Berlin")

df$cities <- sample(cities, 250, replace = TRUE, c(0.02,0.01,0.27,0.03,0.02, 0.03, 0.02, 0.02, 0.13, 0.13))

gender <- c("female", "male")

df$gender <- sample(gender, 250, replace = TRUE)

table(df$gender)

case_control <- c("control", "case")

df$case_control <- sample(case_control, 250, replace = TRUE, c(0.8, 0.2))

table(df$case_control)


# Education ---------------------------------------------------------------

education <- c("primary", "highschool", "bachelor", "master", "phD")

#here's me testing
<<<<<<< HEAD
df$education <- sample(education, 250, replace = TRUE, c(0.15, 0.5, 0.2, 0.1, 0.05))

table(df$case_control)
=======
<<<<<<< HEAD
=======
# Education ---------------------------------------------------------------
# Education ---------------------------------------------------------------
# Education ---------------------------------------------------------------
# Education ---------------------------------------------------------------
# Education ---------------------------------------------------------------
# Education ---------------------------------------------------------------

>>>>>>> 01b5bc4e413503f0440743c20e559858ae69838b
<<<<<<< HEAD
>>>>>>> 0acb19f6f3947451ef08fd100ae395515891f426
=======

install.packages("randomNames")
library(randomNames)
randomNames(125,
            0 ,
            5,
            which.names="both",
            name.order="last.first",
            name.sep=", ",
            sample.with.replacement=TRUE,
            return.complete.data=FALSE)
>>>>>>> 33bdcc4465790b8744f7891695774fd4dd5c9a49
