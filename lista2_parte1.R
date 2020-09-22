setwd("C:/Users/mauri/Desktop")

install.packages('data.table')




library(data.table)

eco1 <- read.csv("demog.csv", header = TRUE, stringsAsFactors = FALSE, sep=';')



#1)a) Exibe a quantidade de pessoas para cada nível de renda
table(eco1$`Income.Group`)  



##1)b) Exibe as características da variável "internet users"

summary(eco1$Internet.users)






##1)c) Exibe certas características da distribuição da internet, baseado nos dados de renda 
income_factor = as.factor(eco1$`Income.Group`)


by(eco1$`Internet.users`, income_factor, summary) 



##1)d) Exibe as características da dispersão da variável "birth rate"
summary(eco1$`Birth.rate`) 



##1)e) Exibe as características da dispersão da variável "birth rate" para os níveis de renda
by (eco1$`Birth.rate`, income_factor, summary) 



## 1)f) Exibe as características dos países, baseadas no fator renda, dos países cuja "birth rate" é menos que 15

by (eco1$`Birth.rate`<15, income_factor, summary)



## 1)g) Exibe as características dos países, baseadas no fator renda, dos países cuja "birth rate" é maior que 25

by (eco1$`Birth.rate`>25, income_factor, summary)



##1)h) Exibe as características dos países, baseadas no fator renda, dos países cuja "internet user" é menor que 20


by (eco1$`Internet.users`<20, income_factor, summary)




##1)i) Exibe as características dos países, baseadas no fator renda, dos países cuja "internet user" é maior que 70

by (eco1$`Internet.users`<20, income_factor, summary)





## 1)j) Exibe as características do Brasil
eco1[eco1[1]=='Brazil', ]




## 1)k) Plotando gráfico birthrate X internetuser:



plot(eco1$Birth.rate, eco1$Internet.users, main="Gráfico de Dispersão 1", xlab = "Birth Rate", ylab = "Internet Users", pch = 19, col = 'red')





##  1)l) Plotando gráfico internetuser X birthrate

eco1$pch_renda = ifelse(eco1$Income.Group=='High income', 15, eco1$pch_renda)

eco1$pch_renda = ifelse(eco1$Income.Group=='Upper middle income', 16, eco1$pch_renda)

eco1$pch_renda = ifelse(eco1$Income.Group=='Lower middle income', 17, eco1$pch_renda)

eco1$pch_renda = ifelse(eco1$Income.Group=='Low income', 18, eco1$pch_renda)

col = 0

eco1$col = ifelse(eco1$Income.Group=='High income', "blue", eco1$col)

eco1$col = ifelse(eco1$Income.Group=='Upper middle income', "red", eco1$col)

eco1$col = ifelse(eco1$Income.Group=='Lower middle income', "purple", eco1$col)

eco1$col = ifelse(eco1$Income.Group=='Low income', "green", eco1$col)


plot(eco1$Birth.rate, eco1$Internet.users,main="Gráfico de Dispersão 2", xlab = "Birth rate", ylab = "Internet Users", col = eco1$col, pch = eco1$pch_renda)

legend("topright", legend=c('High income', 'Upper middle income','Lower middle income', 'Low income'), col=c("blue", "red", "purple", "green"), pch = c(15,16,17,18), bty="n", lwd)




## 1)m) 

#De certa forma, observa-se que países cuja classificação de renda é maior tendem a ter mais usuários de internet - bem como uma taxa de nascimento mais baixa












