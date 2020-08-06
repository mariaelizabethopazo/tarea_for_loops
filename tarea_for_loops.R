listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))
contarmp <- 0
contarof <- 0

##Ejercicio 1##
contarmp <- 0
contarof <- 0


for(vectores in listaDocumentos){
  if(vectores[1]=="mp"){
    contarmp <- contarmp +1
    vectores <- vectores[-1]
    print(paste("Se cuenta con mp",length(vectores),"de ninos"))
  }else{
    contarof <- contarof +1
  }
}


###Ejercicio 2####

for(vectores in listaDocumentos){
  if(vectores[1]=="of"){
    vectores <- vectores[-1]
    print(vectores)
  }else{
    contarmp <- contarmp +1
  }
}

###Ejercicio 3 ###


contarof <- 0
aprobado <- 0
reprobado <- 0

for (vectores in listaDocumentos){
  if(vectores[1]=="of"){
    contarof <- contarof +1
    nuevosvectores <- vectores[-1]
    if(nuevosvectores[2:3]=="ante"){
      reprobado <- reprobado +1
    }else if(nuevosvectores[2:3]=="dape"||nuevosvectores[2:3]=="ampr"||nuevosvectores[2:3]=="meca"||nuevosvectores[2:3]=="arme"){
      aprobado <- aprobado +1
    }
  }
}

print(paste("Llegaron una cantidad de ",contarof,"oficios de los cuales:",reprobado,"son reprobados", "y",aprobado,"son aprobados"))
