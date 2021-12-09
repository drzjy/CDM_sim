#CDM Simulation

#Arsenal package: https://cran.r-project.org/web/packages/arsenal/vignettes/tableby.html


set.seed(5)
df <- data.frame(seq(1,250,1))


# Create Height and BMI -------------------------------------------------------


df$height <- rnorm(250, mean = 160, sd = 10)
summary(df$height)

df$bmi <- rnorm(250, mean = 25, sd = 2)
summary(df$bmi)

# Create Cities -------------------------------------------------------

cities <- c("Lisbon", "Oporto", "Paris", "Leon", "London", "Edinburgh", "Barcelona", "Madrid", "Munich", "Berlin")

df$cities <- sample(cities, 250, replace = TRUE, c(0.02,0.01,0.27,0.03,0.02, 0.03, 0.02, 0.02, 0.13, 0.13))

# Create Gender -------------------------------------------------------

gender <- c("female", "male")

df$gender <- sample(gender, 250, replace = TRUE)

table(df$gender)

# Create Case & Controls -------------------------------------------------------

case_control <- c("control", "case")

df$case_control <- sample(case_control, 250, replace = TRUE, c(0.8, 0.2))

table(df$case_control)


# Education ---------------------------------------------------------------

education <- c("primary", "highschool", "bachelor", "master", "phD")


df$education <- sample(education, 250, replace = TRUE, c(0.15, 0.5, 0.2, 0.1, 0.05))

# Names -------------------------------------------------------

install.packages("randomNames")
library(randomNames)
randomNames(125,
            0 ,
            5,
            which.names = "both",
            name.order = "last.first",
            name.sep = ", ",
            sample.with.replacement = TRUE,
            return.complete.data = FALSE)


# SNPs -------------------------------------------------------

snpv <- c(0,1,2)

df$SNP1 <- sample(snpv, 250, replace = TRUE)
df$SNP2 <- sample(snpv, 250, replace = TRUE)
df$SNP3 <- sample(snpv, 250, replace = TRUE)
df$SNP4 <- sample(snpv, 250, replace = TRUE)
df$SNP5 <- sample(snpv, 250, replace = TRUE)

# Expression -------------------------------------------------------

set.seed(5)

exp <- as.data.frame(replicate(n = 10, 
          expr = rnorm(n = 250, mean = 0, sd = 0.3), 
          simplify = FALSE),
          col.names = c("exp1", "exp2", "exp3", "exp4", "exp5", "exp6", "exp7", "exp8", "exp9", "exp10"))

summary(exp)

df <- cbind(df, exp)