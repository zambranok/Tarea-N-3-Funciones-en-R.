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

#funci?n para obtener el factor de capitalizaci?n de una inversi?n
#esta funcion se ultiliza cuando c1, i y n son cocidos y queremos saber el valor 
#futuro de inversi?n.

capitalfinal <- function(c0,i,n){
  #funci?n que calcula el factor de capitalizaci?n
  c0*(1+i)^n
}

#para obtener la funci?n de capital inicial necesario para obtener un monto c1 al 
#final de un periodo de deben realizar unos ajustes a la formula incial
#esta funci?n servira para obtener el factor de actualizaci?n de una inversion 
#dado unvalor final c1 obtendremos c0 

capitalinicial<- function(c1,i,n){
  #funci?n que calcula el factor de actualizaci?n
c1*((1+i)^(-n))
}

#EJERCICIO N?4-------------------------------------------------------------------------------

#cree la función CONTARPUNTOS, donde recibe una lista de cartas con la frecuencia 
#de esa carta, y devulve los puntos totales del mazo. los puntajes de las cartas
#A,J,Q,K.son 20,11,12,13, respectivament, el resto de las cartas vale el valor que 
#representan.

#crear una funcion contarpuntos de un juego de cartas
#crear lista juego, en ella se incluiran los resultados pósibles junto con su 
#frecuencia
#J=11,Q=12,K=13,A=20,Se definen los valores de aquellas cartas representadas por
#letras.
#se crean las variables A,J,Q,K
#SE OBTIENE PUNTAJE FINAL

contarpuntos<-function (juego){
  #funcion que sirve para contar los puntos obtenidos en un mazo
  for(x in 1 :length(juego)){
    PUNTOSDEljuego<-unlist(juego[x])
    PUNTAJEfinal<-PUNTOSDELjuego[1]*PUNTOSDELjuego[2]+totalpuntos
  }
  return(PUNTAJEfinal)
}

#EJERCICIO N°1-------------------------------------------------------------------

#PADRON ELECTORAL = TOTAL DE PERSONAS HABILITALAS PARA VOTAR (NUMERO ENTERO)
#HAY DOS OPCIONES DE VOTO = SI O NO
#LA CANTIDAD DE VOTOS EMITIDOS SE REPRESENTA POR LAS VARIABLES VOTOSSI Y VOTOSNO
#EL QUORUM CORRESPONDE A = 50%+1 

#SI HAY MENOS VOTOS QUE EL QUORUM, PERO UNA DE LAS OPCIONES DE VOTO (SI O NO)
#TIENE UNA VOTACIÓN MAYOR O IGUAL AL 30%, GANA DICHA OPCION
#SI  NO, NO HAY QUORUM Y GANA LA OPCION no
#SI HAY VOTOS SUFICIENTES PARA EL QUORUM, GANA LA OPCION CON MAS VOTOS
#EN CASO DE EMPATE, GANA LA OPCION NO

#NO HAY VOTOS NULOS NI EN BLANCO
#PARA SABER SI EXISTE QUORUM DESPEJAMOS UNA REGLA DE 3 Y OBTENEMOS QUE EL QUORUM
#SE EL TOTAL DE VOTOS EMITIDOS * 100 / EN EL TOTAL DEL PADRON ELECTORAL, ADEMAS
#ELquorum tiene una condición de que este debe representar el 50%+1 del resultado 


#CREAR UNA FUNCION DE PARAMETROS; total, votosSI y votosNO

RESULTADOVOT<-function(total,votosSI,votosNO){
  TOTALVOTOSEMITIDOS<-votosSI+votosNO
  quorum<-(TOTALVOTOSEMITIDOS*100)/total
  if (quorum>50+1){
    if (votosSI>votosNO){
      resultadovotacion<-"SI"
    }else if (votosSI<votosNO){
      resultadovotacion<-"NO"
    }else if (votosSI==votosNO){
      resultadovotacion<-"NO"
    }else{
      resultadovotacion<-"nula"
    }
  }
  if (quorum<50+1){
    if(((votosNO*100)/total)>=30){
      resultadovotacion<-"NO"
    }else if(((votosSI*100)/total)>=30){
      resultadovotacion<-"SI"
    }else if((((votosNO*100)/total)<30)&&(((votosSI*100)/total)<30)){
      resultadovotacion<-"NO"
    }else {
      resultadovotacion<- "nula"
    }
  }
  return(resultadovotacion)
}
 

