# Lista 1

## EXERCÍCIO 1
### item a)

a = seq(10, 30, 1)

a = a^2

a = sum(a)

### item b)

b = c(10, 100, 1000, 10000, 100000,1000000)

b = log(b, base=10)

b = b^{1/2}

b = sum(b)


### item c)

c = seq(0, 200, 10)

c = sin(c)

c = sum(c)


### item d)

d = c(1, 1, 1, 2, 2, 3)

d = log(d, base=10)

d = sum(d)


### item e)

e = c(1, 3, 3, 4)

e = tan(e)

e = sum(e)


## EXERCÍCIO 2
### item a)

x = c(1, 4, 5, 10, 22, 3, 11)

n = length(x)

fatorial = factorial(x)
fatorial = log(fatorial, base=10)

V = -10*n + 10*(sum(x)) - sum(fatorial)


### item b)

vetor_1pi = c(1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

vetor_1pi = pi*vetor_1pi

vetor_1pi = (vetor_1pi)^2

V = sum(vetor_pi)


### item c)

vetor_pi = c(1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

vetor_pi = vetor_pi*pi

vetor_pi = vetor_pi^(seq(1, 11, 1))

vetor_pi = sum(vetor_pi)


### item d)

soma_vec = seq(1, 30, 1)

soma_vec = 
  



## EXERCÍCIO 3

v = c(1, 4, 9, 10, 11, 3, 0.33, 5, 1)

z = c(21, 1, 6, 30, 11, 3, 44, 5.6, 5)

### item a)

v[1] + z[4]

### item b)

v[2]*z[5]

### item c)

v[3]/v[4] + 3

### item d)

v[3] - v[4]*v[2] - z[9]/v[1]

### item e)

z[4] + v[3]

### item f)

z[1]/z[3] + v[4] - z[8]

### item g)

z[-2:-5, -8:-9] + v[-1, -3:-4, -7:-9]

### item h)

z[-2:-4, -6:-7, -9]/v[3]


## EXERCÍCIO 4

y = c(2, 3, 6.5, 11, 0.33, 15)

x1 = c(3, 4, 7, 0.9, 16, 33)

x2 = c(2, 1, 10, 0.11, -3, 2)

### item a)

X = cbind(x1, x2)

library(matlib)

beta = inv(t(X)%*%X)%*%t(X)%*%y

### item b)

x0 = c(1, 1, 1, 1, 1, 1)

X_b = cbind (x0, x1, x2)

beta_b = inv(t(X_b)%*%X_b)%*%t(X_b)%*%y

reg_b = lm(y ~ x1 + x2 - 1)

### item c)



### item d)

reg_d = lm(y ~ x1 + x2 - 1)

summary(reg)



