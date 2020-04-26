        ;Ejercicio 1
        mov ax, 0
        mov bx, 8
        add ax,bx
        mov bx, 5
        add ax, bx
        mov bx, 1
        add ax, bx
        mov bx, 7
        add ax, bx
        mov bx, 5
        div bx
        
        mov cl, "M"
        mov  [200h], cl
        mov cl, "E"
        mov  [201h], cl
        mov cl, " "
        mov  [202h], cl
        mov cl, "R"
        mov  [203h], cl
        mov cl, "E"
        mov  [204h], cl
        mov cl, "C"
        mov  [205h], cl
        mov cl, "U"
        mov  [206h], cl
        mov cl, "P"
        mov  [207h], cl
        mov cl, "E"
        mov  [208h], cl
        mov cl, "R"
        mov  [209h], cl
        mov cl, "0"
        mov  [20Ah], cl
        
        int 20h
 
      
       ;ejercicio 2
        mov al, 2d
        mov bl, 2d
        mov bx, 2d
        mov cx, 11d
        mov di, 0d
        ciclo:
            mul bl
            jo foverflow
            mov [di+200h], al
            add di, 1d
            loop ciclo
            int 20h
            
        foverflow:
            mov [di+200h], al
            add di, 1
            mov [di+200h], ah
            add di, 1
            mul bx
            loop fcarry
            int 20h