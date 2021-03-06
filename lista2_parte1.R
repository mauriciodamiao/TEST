setwd("C:/Users/mauri/Desktop")

install.packages('data.table')




library(data.table)

eco1 <- read.csv("demog.csv", header = TRUE, stringsAsFactors = FALSE, sep=';')



#1)a) Exibe a quantidade de pessoas para cada n�vel de renda
table(eco1$`Income.Group`)  



##1)b) Exibe as caracter�sticas da vari�vel "internet users"

summary(eco1$Internet.users)






##1)c) Exibe certas caracter�sticas da distribui��o da internet, baseado nos dados de renda 
income_factor = as.factor(eco1$`Income.Group`)


by(eco1$`Internet.users`, income_factor, summary) 



##1)d) Exibe as caracter�sticas da dispers�o da vari�vel "birth rate"
summary(eco1$`Birth.rate`) 



##1)e) Exibe as caracter�sticas da dispers�o da vari�vel "birth rate" para os n�veis de renda
by (eco1$`Birth.rate`, income_factor, summary) 



## 1)f) Exibe as caracter�sticas dos pa�ses, baseadas no fator renda, dos pa�ses cuja "birth rate" � menos que 15

by (eco1$`Birth.rate`<15, income_factor, summary)



## 1)g) Exibe as caracter�sticas dos pa�ses, baseadas no fator renda, dos pa�ses cuja "birth rate" � maior que 25

by (eco1$`Birth.rate`>25, income_factor, summary)



##1)h) Exibe as caracter�sticas dos pa�ses, baseadas no fator renda, dos pa�ses cuja "internet user" � menor que 20


by (eco1$`Internet.users`<20, income_factor, summary)




##1)i) Exibe as caracter�sticas dos pa�ses, baseadas no fator renda, dos pa�ses cuja "internet user" � maior que 70

by (eco1$`Internet.users`<20, income_factor, summary)





## 1)j) Exibe as caracter�sticas do Brasil
eco1[eco1[1]=='Brazil', ]




## 1)k) Plotando gr�fico birthrate X internetuser:



plot(eco1$Birth.rate, eco1$Internet.users, main="Gr�fico de Dispers�o 1", xlab = "Birth Rate", ylab = "Internet Users", pch = 19, col = 'red')





##  1)l) Plotando gr�fico internetuser X birthrate

eco1$pch_renda = ifelse(eco1$Income.Group=='High income', 15, eco1$pch_renda)

eco1$pch_renda = ifelse(eco1$Income.Group=='Upper middle income', 16, eco1$pch_renda)

eco1$pch_renda = ifelse(eco1$Income.Group=='Lower middle income', 17, eco1$pch_renda)

eco1$pch_renda = ifelse(eco1$Income.Group=='Low income', 18, eco1$pch_renda)

col = 0

eco1$col = ifelse(eco1$Income.Group=='High income', "blue", eco1$col)

eco1$col = ifelse(eco1$Income.Group=='Upper middle income', "red", eco1$col)

eco1$col = ifelse(eco1$Income.Group=='Lower middle income', "purple", eco1$col)

eco1$col = ifelse(eco1$Income.Group=='Low income', "green", eco1$col)


plot(eco1$Birth.rate, eco1$Internet.users,main="Gr�fico de Dispers�o 2", xlab = "Birth rate", ylab = "Internet Users", col = eco1$col, pch = eco1$pch_renda)

legend("topright", legend=c('High income', 'Upper middle income','Lower middle income', 'Low income'), col=c("blue", "red", "purple", "green"), pch = c(15,16,17,18), bty="n", lwd)




## 1)m) 

#De certa forma, observa-se que pa�ses cuja classifica��o de renda � maior tendem a ter mais usu�rios de internet - bem como uma taxa de nascimento mais baixa












