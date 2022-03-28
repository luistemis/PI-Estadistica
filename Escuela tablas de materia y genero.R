
#________RECODIFICACION DE VARIABLES___________

# Se trabaja con la matriz "escuela.xslx"

# 1.- Importacion de la matriz 


#------------------------------------------
#    Exploracion de la matriz

#------------------------------------------
#vamos a configurar de manera individual 
dim(Escuela)
str(Escuela)
  summary(Escuela)
colnames(Escuela)

#-------------------------------------------
#      Configuration de variables
#--------------------------------------------

Escuela$genero<-factor(Escuela$genero,
                       levels=c("Femenino","Masculino"))

Escuela$Matematicas<-factor(Escuela$Matematicas,
                       levels=c("5","6","7","8","9","10"))
str(Escuela$Matematicas)
summary(Escuela$Matematicas)

Escuela$Español<-factor(Escuela$Español,
                            levels=c("5","6","7","8","9","10"))

Escuela$Ciencias<-factor(Escuela$Ciencias,
                            levels=c("5","6","7","8","9","10"))

Escuela$Geografia<-factor(Escuela$Geografia,
                            levels=c("5","6","7","8","9","10"))

#Generacion de tabla}
table<-table(Escuela$genero)
table

table<-table(Escuela$Matematicas)
table

table<-table(Escuela$Español)
table

table<-table(Escuela$Ciencias)
table

table<-table(Escuela$Geografia)
table

--------------------------------------
  #            Gráfico de barras
  #--------------------------------------------------

# 1.- Creación de un vector de color
color=c("darkseagreen", "lavenderblush3")

# 2.- Creación del gráfico
GB1<-ggplot(Escuela, aes(x=genero))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("genero")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB1




# 2.- Creación del gráfico Matematicas 
GB2<-ggplot(Escuela, aes(x=Matematicas))+
  geom_bar(colour= "black", fill="darkseagreen")+
  ggtitle("Gráfico de Barras")+
  xlab("Matematicas")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB2

# 2.- Creación del gráfico Español
GB2<-ggplot(Escuela, aes(x=Español))+
  geom_bar(colour= "black", fill="chocolate")+
  ggtitle("Gráfico de Barras")+
  xlab("Español")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico Español
GB2

# 2.- Creación del gráfico Ciencias
GB2<-ggplot(Escuela, aes(x=Ciencias))+
  geom_bar(colour= "black", fill=cyan")+
  ggtitle("Gráfico de Barras")+
  xlab("Ciencias")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico Ciencias
GB2

# 2.- Creación del gráfico geografia
GB2<-ggplot(Escuela, aes(x=Geografia))+
  geom_bar(colour= "black", fill="chocolate")+
  ggtitle("Gráfico de Barras")+
  xlab("Geografia")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico Español
GB2
