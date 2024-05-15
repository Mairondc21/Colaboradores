```{r}
tri_1 <- c(25, 30, 22, 28, 18)
tri_2 <- c(20, 15, 22, 28, 32)
tri_3 <- c(30, 35, 10, 15, 8)
tri_4 <- c(12, 28, 25, 20, 22)

```

```{r}
trimestres <- c(tri_1,tri_2,tri_3,tri_4)
```

```{r}
matriz_tri <- matrix(data = trimestres,nrow =  4,byrow = TRUE)
matriz_tri
```

```{r}
colnames(matriz_tri)<-c('São Paulo','Rio de Janeiro','Belo Horizonte','Salvador','Porto Alegre')
rownames(matriz_tri)<-c('trimestre 1','trimestre 2','trimestre 3','trimestre 4')

matriz_tri
```

```{r}
# Matriz representando as vendas mensais (em milhares de unidades)
dados_vendas <- matrix(c(50, 60, 45, 30, 55, 65, 40, 35, 60, 70, 55, 50), nrow = 3, byrow = TRUE)

# Nomes das regiões e dos meses
regioes <- c("Norte", "Sul", "Nordeste")
meses <- c("Jan", "Fev", "Mar", "Abr")

rownames(dados_vendas) <- regioes
colnames(dados_vendas) <- meses

dados_vendas

```

```{r}
dados_vendas[2,2]
```

```{r}
total_por_mes<-colSums(dados_vendas)
total_por_mes
```

```{r}
total_por_regiao <- rowSums(dados_vendas)
total_por_regiao
```

```{r}
centro_oeste <- c(35,40,30,25)

centro_oeste_new <- rbind(dados_vendas,centro_oeste)
centro_oeste_new
```

```{r}
# Definir a distância da corrida (metros)
distancia <- 200

# Lista de velocidades dos corredores em m/s
velocidades <- c(5, 7, 10, 12, 15)

for (i in velocidades) {
  tempo_estimado <- distancia / velocidade
  
  if(tempo_estimado[i] < 10){
    paste('Rapido')
  }else if (tempo_estimado[i] > 10 & tempo_estimado[i] < 20) {
    paste('Bom desempenho!')
  } else{
    paste('Desempenho a melhorar')
  }
  
}
velocidades

```

```{r}

# Definir a distância da corrida (metros)
distancia <- 200

# Lista de velocidades dos corredores em m/s
velocidades <- c(5, 7, 10, 12, 15)

# Iterar sobre a lista de velocidades
for (velocidade in velocidades) {
  # Calcular o tempo estimado para percorrer a distância
  tempo_estimado <- distancia / velocidade
  
  # Exibir o tempo estimado
  cat("Tempo estimado:", round(tempo_estimado, 2), "segundos - ")
  
  # Verificar as condições e fornecer feedback
  if (tempo_estimado < 10) {
    cat("Rápido!\n")
  } else if (tempo_estimado <= 20) {
    cat("Bom desempenho!\n")
  } else {
    cat("Desempenho a melhorar!\n")
  }
}

```

```{r}
# Dados de temperatura média diária em graus Celsius
temperaturas_diarias <- c(25.5, 28.2, 22.8, 30.3, 18.6, 20.7, 15.9)

round(mean(temperaturas_diarias),2)
```

```{r}
which.max(temperaturas_diarias)
```

```{r}
which.min(temperaturas_diarias)
```

```{r}
pontualidade <- c(4, 5, 3, 4, 2)
qualidade_comida <- c(5, 3, 4, 2, 5)
atendimento <- c(3, 4, 5, 2, 4)

fator_pontualidade <- factor(pontualidade, levels = 1:5, ordered = TRUE)
fator_qualidade_comida <- factor(qualidade_comida, levels = 1:5, ordered = TRUE)
fator_atendimento <- factor(atendimento, levels = 1:5, ordered = TRUE)

```

```{r}
media_pontualidade <- mean(as.numeric(fator_pontualidade))
media_qualidade <- mean(as.numeric(fator_qualidade_comida))
media_atendimento <- mean(as.numeric(fator_atendimento))

media_pontualidade
media_qualidade
media_atendimento


```

```{r}
medias<- c(media_qualidade,media_pontualidade,media_atendimento)

max(medias)
min(medias)
```
