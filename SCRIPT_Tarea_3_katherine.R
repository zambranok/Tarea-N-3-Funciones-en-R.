#------------------------------TAREA NUMERO 3--------------------------------------
#----------------------------------------------------------------------------------

#EJERCICIO N?2---------------------------------------------------------------------
#Sea C el capital invertido a una tasa de interes i por una cantidad de n a?os.
#Al cabo de losn a?os, el capital inicial se habra incrementado de acuerdo a la 
#siguiente formula: Cn=C(1+i)n. Notar que en la f?rmula el valor i se representa
#como un n?mero decimal: siel inter?s es de 8% entonces i=0.08. 

#por ejemplo, si el capital inicial es de $1.200.000, la tasa de inter?s es de 8%
#y se ahora por 5 a?os, el capital final es de 1.200.000(1+0.08)5=1763193,69216
#Implemente la funci?n CAPITALINICIAL, que reciba como par?metros el capital final
#Cn que se quiere obtener, la tasa de interes i y el numero de a?os, y retorne el 
#capital inicial c que ser?a necesario invertir para obtener Cn.

#sea:
#c0=capital inicial o capital invertido
#n=cantidad de a?os
#i=tasa de inter?s

#ejemplo
c0<-500000
i<-0.08
n<-5

capitalfinal(500000,0.08,5)

#sea:
#c1=incremento del capital inicial
#n=cantidad de a?os
#i=tasa de inter?s

c1<-800000
i<-0.08
n<-5

capitalinicial(800000,0.08,5)

#[1] 544466.6

#EJERCICIO N?4-------------------------------------------------------------------------------

#cree la función CONTARPUNTOS, donde recibe una lista de cartas con la frecuencia 
#de esa carta, y devulve los puntos totales del mazo. los puntajes de las cartas
#A,J,Q,K.son 20,11,12,13, respectivament, el resto de las cartas vale el valor que 
#representan.

A<-20
J<-11
Q<-12
K<-13

totalpuntos<-0

#ejemplo

juego<-list(c(A,2),c(9,1),c(J,4),c(2,4))
contarpuntos(juego)

#[1] 101

#EJERCICIO N°1-------------------------------------------------------------------

#PADRON ELECTORAL = TOTAL DE PERSONAS HABILITALAS PARA VOTAR (NUMERO ENTERO)
#HAY DOS OPCIONES DE VOTO = SI O NO
#LA CANTIDAD DE VOTOS EMITIDOS SE REPRESENTA POR LAS VARIABLES VOTOSSI Y VOTOSNO
#EL QUORUM CORRESPONDE A = 50%+1 DEL PADRON ELECTORAL

#SI HAY MENOS VOTOS QUE EL QUORUM, PERO UNA DE LAS OPCIONES DE VOTO (SI O NO)
#TIENE UNA VOTACIÓN MAYOR O IGUAL AL 30%, GANA DICHA OPCION
#SI  NO, NO HAY QUORUM Y GANA LA OPCION no
#SI HAY VOTOS SUFICIENTES PARA EL QUORUM, GANA LA OPCION CON MAS VOTOS
#EN CASO DE EMPATE, GANA LA OPCION NO

#NO HAY VOTOS NULOS NI EN BLANCO

#ejemplo

#total = 320
#votossi=60
#votosno=87

RESULTADOVOT(320,60,87)

#[1] "NO"

#total = 100
#votossi=60
#votosno=20  
  
RESULTADOVOT(100,60,20) 

#[1] "SI" 
  
  