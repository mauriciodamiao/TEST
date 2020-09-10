
setwd('D:/Git projects/TEST')



x0 = c('ana', 'jonas', 'paulo', 'maria', 'pedro', 'joão', 'carla', 'fernanda')
x1 = c(4.6, 9.5, 4.5, 7, 8, 4, 5.6, 9)
x2 = c(18, 31, 19, 20, 22, 30, 25, 24)
x3 = c('female', 'male', 'male', 'female', 'male', 'male', 'female', 'female')



#criando data frame




df = data.frame(x0, x1, x2, x3)



#Vendo elementos

#a função head(df, m) ve os m primeiros elementos do data frame df

a = head(df, 4) #Aqui, cria-se um dataframe a partir dos elementos do dataframe df


#a função tail(df, n) ve os n últimos elementos do data frame df

b = tail(df, 2)


#vendo a quantidade de linhas e colunas de um data frame

nrow(df)
ncol(df)


#vendo a estrutura de um data frame


str(df)


#descobrindo os nomes das colunas de um data frame


names(df)
names(a)
names(b)


#mudando nome das colunas de um dataframe


names(df)[n] #mostra o nome da n-ésima variável do dataframe "df"

names(df)[6]

names(df)[1] = "names"

names(a) = c("names", "grades", "age", "sex")


#adicionando colunas no data frame

df$monitoring = c("no", "yes", "yes", "no","no", "no", "yes", "no")


#operações

a$inter = a$age * a$grades


#slicing


df["names"] #retorna o dataframe

df[["names"]] #retorna uma lista

df$names #retorna uma lista

df[1, "names"]

df[2, ]


#filtros


df[df$grades>5, ] #retorna o data frame dos indivíduos cuja nota é superior a 5


df[df$sex == "male", ]

df[df$age>25, ]


#mudando o nome das linhas

install.packages("zoo")

library(zoo)

index(df)


row.names(df) = x0


df[1] = NULL #remove a primeira coluna, identificada por "1", chamada "names"


df["ana", ]#retorna as informações do objeto "ana"



#dropando (removendo) colunas

df[-5] #remove-se a coluna "5"

df["pedro", 1] = NaN

na.omit(df) #omite a linha onde existe "NaN"

mean(df$grades, na.rm=T) #calcula a média da coluna "grades", removendo eventuais "NaN"

summary #retorna informações relevantes sobre um determinado conjunto de dados

df["pedro", 1] = 8


#usando table - devolve uma tabela organizando dados, contabilizandos suas ocorrências

table(df$grades)
