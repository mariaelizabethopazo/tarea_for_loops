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


for(vector in listaDocumentos){
  if(vector[1]=="mp"){
    contarmp <- contarmp +1
    vector <- vectores[-1]
    print(paste("Se cuenta con mp",length(vector),"de ninos"))
  }else{
    contarof <- contarof +1
  }
}


###Ejercicio 2####

for(vector in listaDocumentos){
  if(vector[1]=="of"){
    vector <- vector[-1]
    print(vector)
  }else{
    contarmp <- contarmp +1
  }
}

###Ejercicio 3 ###


contarof <- 0
aprobado <- 0
reprobado <- 0

for (vector in listaDocumentos){
  if(vector[1]=="of"){
    contarof <- contarof +1
    nuevoVector <- vector[-1]
    if(nuevosvectores[2:3]=="ante"){
      reprobado <- reprobado +1
    }else if(nuevoVector[2:3]=="dape"||nuevoVector[2:3]=="ampr"||nuevoVector[2:3]=="meca"||nuevoVector[2:3]=="arme"){
      aprobado <- aprobado +1
    }
  }
}

print(paste("Llegaron una cantidad de ",contarof,"oficios de los cuales:",reprobado,"son reprobados", "y",aprobado,"son aprobados"))
