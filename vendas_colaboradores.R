```{r}
# Vetor com valores das vendas
vendas_jan <- c(20, 18, 25, 16, 23)
vendas_fev <- c(15, 20, 22, 18, 19)
vendas_mar <- c(25, 23, 20, 17, 21)
vendas_abr <- c(18, 15, 19, 20, 24)
vendas_mai <- c(22, 25, 21, 15, 18)
vendas_jun <- c(21, 22, 19, 17, 20)

# Nomes das pessoas
pessoas <- c("Pedro Santos", "Carla Nunes", "Maria Eduarda", "Luiz Felipe", "Julio Costa")

# Nomes dos meses
meses <- c("Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho")

# Combinar as vendas
vendas_semestre <- c(vendas_jan, vendas_fev, vendas_mar, vendas_abr, vendas_mai, vendas_jun)

# Vendas de cada pessoa por mês (em milhares)
matriz_vendas <- matrix(vendas_semestre, nrow = 5, byrow = FALSE)

# Nomear a matriz
rownames(matriz_vendas) <- pessoas
colnames(matriz_vendas) <- meses

# Exibir a matriz
matriz_vendas

```

```{r}
vendas_jan
```

```{r}
vendas_jan[3]
```

```{r}
matriz_vendas[4,]
```

```{r}
matriz_vendas["Luiz Felipe",]
```

```{r}
# Criando uma sequência de 50 a 1 com 10 elementos
sequencia2 <- seq(1, 50,length.out=4)

# Imprimindo a sequência
print(sequencia2)

```

```{r}
# Criando uma sequência de datas de hoje a 6 meses no futuro
sequencia_datas <- seq(Sys.Date(), by = "1 month", length.out = 6)

# Imprimindo a sequência de datas
print(sequencia_datas)


```

```{r}
soma_linhas <- rowSums(matriz_vendas)
max(soma_linhas)
```

```{r}
colSums(matriz_vendas)
```

```{r}
matriz_total <- cbind(matriz_vendas,soma_linhas)
matriz_total
```

```{r}
soma_meses<-colSums(matriz_vendas)
matriz_total_meses <- rbind(matriz_vendas,soma_meses)

matriz_total_meses
```
