
setwd("C:/Users/Professional/Desktop/Faculdade/Econometria I/R")


##Lista 2


x = c(1, 2, 4, 8, 5, 4, 6, 8, 3, 1, 5, 6, 3, 1.1, 7, 0.9, 1, 3, 4, 7, 8)
y = c(0, 1, 3, 1, 3, 4, 6.6, 8, 1, 4.1, 6, 7, 4, 3.6, 5, 3, 1, 2, 2.2, 1, 5.7)


df = data.frame(x, y)

# Exercício 2)a)

n = length(x)


aa = sum((x - mean(x))*(y - mean(y))) 


bb = sqrt(sum((x- mean(x))^2)*sum((y- mean(y))^2)) ## (Variância de X) * (Variância de Y)


c = aa/bb


# b)

reg = lm(y~x)


library(optimx)


beta = c(4,5)

freg = function(beta, data){
  with(data, sum((y - beta[1] - beta[2]*x)^2 ) )
}


freg(beta, df)



my_reg = optim(par = beta, fn=freg, data=df)

beta1 = my_reg$par[1]
beta2 = my_reg$par[2]


# c)

y_hat = beta1 + beta2*x   # Y estimado


epsilon = y - y_hat # epsilon estimado


erro_padrao = sqrt(sum(epsilon^2)/(n - length(my_reg$par)))



erro_padrao_beta2 = erro_padrao / sqrt(sum((x - mean(x))^2))


erro_padrao_beta1 = erro_padrao* sqrt( (sum(x^2))/(n * sum((x - mean(x))^2 ) )   )


# d)

t_beta1 = (beta1 - 0 )/ erro_padrao_beta1

2*pt(t_beta1, df = n-2, lower.tail = F)


t_beta2 = (beta2 - 0)/ erro_padrao_beta2

2*pt(t_beta2, df = n-2, lower.tail = F)



# e)


#Intervalo de confiança para Beta1

int1_superior = beta1 + t_beta1*erro_padrao_beta1
int1_inferior = beta1 - t_beta1*erro_padrao_beta1

#Intervalo de confiança para Beta2

int2_superior = beta2 + t_beta2*erro_padrao_beta2
int2_inferior = beta2 - t_beta2*erro_padrao_beta2


# f)

y_estimado = beta1 + beta2*x

erro_estimacao = y - y_estimado

soma_erros = sum(erro_estimacao)

# g)

erro_estimacao_quad = erro_estimacao^2
SQR = sum(erro_estimacao_quad)

SQE = sum((y_estimado - mean(y))^2)


SQT = SQR + SQE

# h)

R_quad = SQE/SQT


# i)

plot(x, y, pch = 16, col = 'green', main = "Regressão e Gráfico de Dispersão")
abline(beta1, beta2, lwd = 3, col = 'red')







