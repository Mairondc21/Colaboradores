```{r}
dados_vendas <- matrix(c(
  1230.75, 20, 24615,
  840.46, 35, 29416.10,
  110.20, 15, 1653,
  519.67, 10, 5196.70,
  650.90, 25, 16272.50

), ncol = 3, byrow = TRUE)

colnames(dados_vendas) <- c("Preco", "Quantidade", "Valor Total")
rownames (dados_vendas) <- c("Laptop", "Smart TV", "Webcam", "Microfone", "Smartwatch")

dados_vendas

```

```{r}
dados_vendas[dados_vendas[,1] > 600, ]

```

```{r}
dados_filtrados <- dados_vendas[dados_vendas[,1] > 600, ]

qtd_filtrada <- sum(dados_filtrados[,2])
qtd_filtrada
```

```{r}
qtd_total <- sum(dados_vendas[,2])

resultado_porcentagem <- (qtd_filtrada / qtd_total ) * 100

round(resultado_porcentagem,2)
```

```{r}
dados_vendas[,3]
```

```{r}
mean(dados_vendas[,3])
```

```{r}
median(dados_vendas[,3])
```

```{r}
valor_maior<- which.max(dados_vendas[,1])
valor_maior
```

```{r}
dados_vendas[valor_maior,1]
```

```{r}
valor_menor<-which.min(dados_vendas[,1])
valor_menor
```

```{r}
dados_vendas[valor_menor,1]
```

```{r}
status_entrega <- c("Entregue", "Em Trânsito", "Pendente", "Entregue", "Em Trânsito")
nomes_produtos <- c("Smartphone", "Notebook", "Monitor", "Mouse", "Tablet")
names(status_entrega) <- nomes_produtos
status_entrega

```

```{r}
fator_entrega<- factor(status_entrega)
fator_entrega
```

```{r}
fator_entrega<- factor(status_entrega,ordered = TRUE, levels = c('Em Trânsito','Pendente','Entregue'))

fator_entrega
```

```{r}
levels(fator_entrega)<- c('Pendente','Em Trânsito','Entregue')

fator_entrega
```

```{r}
fator_entrega[3] > fator_entrega[4]
```

```{r}
prioridade <- fator_entrega %in% c('Pendente','Em Trânsito')

prioridade
```

```{r}
fator_entrega[prioridade]
```

```{r}
cont_pendente <- sum(fator_entrega == 'Pendente')
cont_transito <- sum(fator_entrega == 'Em Trânsito')
cont_entregue <- sum(fator_entrega == 'Entregue')

cont_pendente
cont_transito
cont_entregue
```
