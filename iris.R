
# print iris
iris

# do stuff

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", size = 2, color = "orange")

cor(iris$Petal.Width, iris$Petal.Length, use = "complete.obs")

lm_pl_pw<-
  lm(Petal.Width~ Petal.Length, data = iris)
summary(lm_pl_pw)

i1<- filter(iris, Species == "setosa")
i1

ggplot(data = i1, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", size = 2, color = "yellow")

cor(i1$Petal.Width, i1$Petal.Length, use = "complete.obs")

i2<-
  lm(Petal.Width~ Petal.Length, data = i1)
summary(i2)

