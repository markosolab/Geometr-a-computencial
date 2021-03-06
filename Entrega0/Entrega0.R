#################################################################
#T�tulo: C�lculo �rea paralelogramos  
#Autores: Iv�n Mart�n G�mez y Markos Aguirre Elorza
#Fecha: 24 de febrero de 2021
#Descripci�n:C�lcula el �rea de un paralelogramo definido por los vectores (1,2) y (-1,1).
#Tambi�n funciona para otros paralelogramos cuyos vectores se encuentran en el primer y segundo cuadrante.
#Sin embargo, el programa no calcula el �rea de cualquier paralelogramo que se pueda definir con dos vectores.
#################################################################
calcAreaParalelogramo<-function(u,v){
  c=v[2]+(u[1]/u[2])*v[1]
  pC1=c/((u[2]/u[1])+(u[1]/u[2]))#primer t�rmino del punto de corte
  puntCorte<-c(pC1, (u[2]/u[1])*pC1)#punto de corte entre el vector u y el perpendicular a u que pasa por v
  altTri=sqrt((v[1]-puntCorte[1])^2+(v[2]-puntCorte[2])^2)
  baseTri=sqrt((u[1])^2+(u[2])^2)
  areaTri=(altTri*baseTri)/2
  areaParalelogramo=2*areaTri
  cat(areaParalelogramo)
}
calcAreaParalelogramo(c(1,2),c(-1,1))
