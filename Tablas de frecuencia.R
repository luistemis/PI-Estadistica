#______________ TABLAS DE FRECUENCIAS Y GRÁFICOS ________________

# Se implementa la matriz iris

#--------------------------------------------------------
#        Exploración de la Matriz  Iris
#--------------------------------------------------------

# 1.- Importación de la matriz
data(iris)

# 2.- Exploración de la matriz
#dimensión de la matriz
dim(iris)
#Iris tiene 150 individuos (observaciones) y 5 variables

# 3.- Nombre de las columnas (variables)
colnames(iris)

# 4.- Tipo de variables
str(iris)

# 5.- En busca de datos perdidos (NA)
anyNA(iris)

#-------------------------------------------------
#     Generación de tablas
#-------------------------------------------------

# 1.- Convertimos la matriz de datos a un data frame, 
#Se agrupan los valores para la variable Petal.Length 
#Indico que el nombre me lo abrevie en PL.
#Lo que resulte quiero que me lo ponga en formato tabla.
#Lo que resulte quiero que adquiera formato data.frame.
#A partir de eso, se genera una nueva variable (objeto) llamada tabla_PL

tabla_PL<-as.data.frame(table(PL = iris$Petal.Length))


# 2.- Frecuencia absoluta de la variable Petal.Length (PL)
#    Se visualiza la tabla de contingencia para la variable PL
#    con su respectiva frecuencia absoluta (no. de observaciones de la variable PL).
tabla_PL

# 3.- Se contruye la tabla de frecuencias completas redondeando 
#las frecuencias absolutas a 3 decimales
tabla_PL1<-transform(tabla_PL,
                     freqAc=cumsum(Freq),
                     Rel= round(prop.table(Freq),3),
                     RelAc=round(cumsum(prop.table(Freq)),3))

#3.1- Visualizar la variable tabla_PL1
tabla_PL1

#--------------------------------------------------------------------
#Generación de tablas agrupadas
#--------------------------------------------------------------------

# 1.- Agrupación de la variable PL a 8 de amplitud.
#Agruparemos las variables en 8 clases 
# y se calcula la frecuencia absoluta

tabla_clases<-as.data.frame(table(Petal.length = factor
                                  (cut(iris$Petal.Length,
                                       breaks = 8))))

# 2.- Visualizamos la tabla de clases
tabla_clases

# 3.- Contrucción de la tabla de frecuencias completa 
#redondeando las frecuencias relativas a 3 decimales
tabla_PL2<-transform(tabla_clases,
                     freqAc=cumsum(Freq),
                     Rel= round(prop.table(Freq),3),
                     RelAc=round(cumsum(prop.table(Freq)),3))

#4.-Visualizar la tabla (Organización visual de la tabla (variable Petal.length))
tabla_PL2