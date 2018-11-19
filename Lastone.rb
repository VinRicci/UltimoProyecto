
$cont=0

def limpiar
    system ('clear')
end

 def ver (cola)
     limpiar()
    as = cola[:tope] 
    $cont+=1
    while as[:siguiente] != nil
    $cont+=1
    puts as[:valor]
    as=as[:siguiente] 
    $cont+=1    
    end
    puts as[:valor]
    puts ''
    puts ''
 end

 def insertar (cola)
    limpiar()
     print 'Inserte Un Numero: '
    n = gets.chomp.to_i
         elemento = {
        valor: n,
        siguiente: nil
        }
    if cola[:esta_vacia] == true
        cola[:tope] = elemento
        cola[:fondo] = elemento
        cola[:esta_vacia] = false
        cola[:tamaño] = cola[:tamaño] +1 
    else 
        #aux = cola[:tope] 
        aux=cola[:fondo]
        aux[:siguiente] = elemento 
        elemento[:siguiente] = nil
        #cola[:tope] = elemento
        cola[:fondo]=elemento
        cola[:tamaño]=cola[:tamaño]+1
    end
end

    def eliminar(cola)

        limpiar()    
        aux = cola[:tope]
        aux = aux[:siguiente]
        cola[:tope] = nil
        cola[:tope] = aux 
    end

 def verl (lista)
    aux = lista[:fondo]
    auxb = lista[:fondo]
    for x in (1..(lista.size-1))
        $cont+=1
        for y in (1..(lista.size-1))
            $cont+=1
            if auxb[:valor] > aux[:valor]
            asd = aux[:valor]
            aux[:valor] = auxb[:valor]
            auxb[:valor] = asd
            $cont+=1
            end
         auxb=auxb[:siguiente]
        end
        $cont+=1
        aux= aux[:siguiente]
        auxb = lista[:fondo]
        $cont+=1
    end
    aux = lista[:fondo]
    while aux != nil
        puts aux[:valor]
        aux = aux[:siguiente] 
        $cont+=1
    end  
end

 def eliminarl(lista)
    limpiar()    
    aux = lista
    aux2 = aux[:siguiente]
    lista[:tope] = nil
    lista[:tope] = aux 
   
   # aux = lista
   #if  lista[:tope] = nil
    #lista[:tope] = aux[:siguiente]

   #end
    
end

 def insertarl (lista)
    limpiar()
     print 'Inserte Un Numero: '
    n = gets.chomp.to_i
         elemento = {
        valor: n,
        siguiente: nil
        }
     if lista[:esta_vacia] == true
        lista[:tope] = elemento
        lista[:fondo] = elemento
        lista[:esta_vacia] = false
    else 
        aux = lista[:tope] 
        aux[:siguiente] = elemento 
        elemento[:siguiente] = nil
        lista[:tope] = elemento
    end
end

def insertarp (pila)
    limpiar()
    print 'Inserte Un Numero: '
    n = gets.chomp.to_i
    elemento = {
        valor: n,
        siguiente: nil
    }
    if pila[:esta_vacia]
        pila[:tope] = elemento
        pila [:esta_vacia] = false
    else 
        tope = pila[:tope]
        elemento[:siguiente] = tope
        pila[:tope] = elemento
    end
end

def mostrarp (pila)
        limpiar()
        elemento = pila[:tope]
        $cont+=1
        while elemento[:siguiente] != nil
            nuevo_elemento = elemento[:siguiente]
            elemento = nuevo_elemento
            puts elemento[:valor]
            $cont+=1
        end while elemento[:siguiente] != nil
        gets
end

def eliminarp (pila)

    limpiar()    
    aux = pila[:tope]
    aux = aux[:siguiente]
    pila[:tope] = nil
    pila[:tope] = aux 

end


 cola = {
    tope: nil,
    fondo: nil,
    max: -1,
    tamaño:0,
    esta_vacia: true 
}
 lista ={
    tope: nil,
    fondo: nil,
    max: -1,
    esta_vacia: true
}
 pila = {
    tope: nil,
    max: -1,
    esta_vacia: true,
    esta_llena: false 
}
 ap =0
op = 0
 puts "-----------------------------"
puts "Proyecto #3"
puts "En que de sea trabajar?"
puts "1. Colas"
puts "2. Pilas"
puts "3. Listas"
ap = gets.chomp.to_i
 while op != 4
puts "Ingrese la opcion que desea"
puts "1. Insertar"
puts "2. Establecer el orden de la cola"
puts "3. Eliminar un elemento"
puts "4. Salir"
op = gets.chomp.to_i
limpiar()
if ap ==1
if op == 1
insertar(cola)
end
if op == 2
ver(cola)
end
if op == 3 
eliminar(cola)
end
end
 if ap ==2
    if op == 1
    insertarp(pila)
    end
    if op == 2
    mostrarp(pila)
    end
    if op == 3 
    eliminarp(pila)
    end
end
 if ap ==3
    if op == 1
    insertarl(lista)
    end
    if op == 2
    verl(lista)
    end
    if op == 3 
    eliminarl(lista)
    end
end

end

puts "El método que resulta mas eficiente segun mi punto de vista es pilas"
puts "con el metodo que usted selecciono se relizan #{$cont} pasos"
