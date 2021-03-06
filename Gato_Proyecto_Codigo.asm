.model large
.stack
.data 
;Logo
logo1 dw 4,4,4,4,4,4,32,32,32,4,32,32,32,4,4,4,4,4,4,4,32,32,4,4,4,4,4,32,'$'
logo2 dw 4,32,32,32,32,32,32,32,4,32,4,32,32,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,'$'
logo3 dw 4,32,32,32,32,32,32,4,32,32,32,4,32,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,'$'
logo4 dw 4,32,32,32,32,32,32,4,32,32,32,4,32,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,'$'
logo5 dw 4,32,32,4,4,4,32,4,4,4,4,4,32,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,'$'
logo6 dw 4,32,32,32,32,4,32,4,32,32,32,4,32,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,'$'
logo7 dw 4,32,32,32,32,4,32,4,32,32,32,4,32,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,'$'
logo8 dw 4,4,4,4,4,4,32,4,32,32,32,4,32,32,32,32,4,32,32,32,32,32,4,4,4,4,4,32,'$' 
logo9 dw 32,32,32,32,32,32,32,32,32,32,32,'El Videojuego',32,32,32,32,32,32,32,32,32,'$'
logo10 dw 'Hecho por: Joshua Sancho, Samantha Acuna y Katherine Amador','$'
logo11 dw 32,32,32,32,32,32,32,'Presione enter para continuar: ',10,13,'$'
;Reglas
rule1 db '#1. Los jugadores deben elegir un acronimo de 3 letras antes de empezar.','$'
rule2 db '#2. Los jugadores pueden elegir si ser el jugador X o el jugador O.', '$'
rule3 db '#3. Los jugadores tendran un turno de por medio cada uno.','$' 
rule4 db '#4. Para jugar, el jugador en turno debe hacer click izquierdo sobre la casilla en la que se quiere jugar, si realiza un click derecho perdera 5 puntos.', '$'
rule5 db '#5. Por cada partida ganada, el jugador recibira 20 puntos. Cuando alguno de los dos llegue a 50 o mas, ganara la partida.','$' 
rule6 db '#6. Luego de 9 turnos jugados el juego se declara empate y los jugadores no obtendran puntos.','$'
rule7 db '#7. Si el jugador en turno hace click en una posicion que no es valida, perdera 1 punto.', '$' 
rule8 db '#8. Si el jugador en turno hace click en una posicion que ya fue jugada, perdera 10 puntos.', '$'
rule9 db '#9. El jugador en turno podra hacer click en las opciones "Rendirse" para rendirse ante el otro jugador, "Resetear" para empezar de nuevo y "Salir" para salir del juego.','$'
rule10 dw 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,'Buena suerte!',10,13,'$' 
rule11 dw 32,32,32,32,32,32,33,32,32,32,32,32,'Presione enter para continuar: ',10,13,'$'
;Mensajes 
enter dw 32,32,32,32,32,32,32,32'Presione enter para continuar',10,13,'$'
enter2 db 'Presione enter para continuar','$'
salto db 10, 13, '$'
;Inputs de jugadores:
decisionJX db 'Jugador X, escriba un nickname de 3 letras:',32,'$'
decisionJO db 'Jugador O, escriba un nickname de 3 letras:',32,'$'
;Nombres de Jugador
nameplayerX db 3 dup (?), '$'
nameplayerO db 3 dup (?), '$'  
;Variables impresas en pantalla de juego
playerX db 'Jugador X','$' 
playerO db 'Jugador O','$'
symbol db 'Simbolo','$'
score db 'Puntaje' ,'$' 
wins db 'Ha ganado    !','$'
playerturnX db 'Turno de X','$'
playerturnO db 'Turno de O','$' 
zero db '00','$'
one db '01','$'
two db '02','$'
three db '03','$'
four db '04','$' 
five db '05','$'
six db '06','$'
seven db '07','$'
eight db '08','$'
nine db '09','$'
ten db '10','$'
eleven db '11','$'
twelve db '12','$'
thirteen db '13','$'
fourteen db '14','$'
fifteen db '15','$'
sixteen db '16','$'
seventeen db '17','$'
eighteen db '18','$'
nineteen db '19','$'
twenty db '20','$'
twentyone db '21','$'
twentytwo db '22','$'
twentythree db '23','$'
twentyfour db '24','$'
twentyfive db '25','$'
twentysix db '26','$'
twentyseven db '27','$'
twentyeight db '28','$'
twentynine db '29','$'
thirty db '30','$'
thirtyone db '31','$'
thirtytwo db '32','$'
thirtythree db '33','$' 
thirtyfour db '34','$'
thirtyfive db '35','$'
thirtysix db '36','$'
thirtyseven db '37','$'
thirtyeight db '38','$'
thirtynine db '39','$'
forty db '40','$'
fortyone db '41','$'
fortytwo db '42','$'
fortythree db '43','$'
fortyfour db '44','$' 
fortyfive db '45','$'
fortysix db '46','$'
fortyseven db '47','$'
fortyeight db '48','$'
fortynine db '49','$'
fifty db '50','$'
repeat db 00h   
;Verificadores
px db 0,0,0,0,0,0,0,0,0
po db 0,0,0,0,0,0,0,0,0
pt db 0,0,0,0,0,0,0,0,0 
mtxp db 0,0,0,0,0,0,0,0,0
contador db 0 
;Contadores de puntaje
sx db 00h
so db 00h
.code   
inicio:  
mov ax, @data
mov ds, ax  

imp_msj macro mensaje ;Macro para imprimir mensajes
lea DX, mensaje    
mov AH, 09
int 21h
endm 

newline macro ;Macro para imprimir saltos de linea
lea DX, salto
mov AH, 09
int 21h
endm  
    
rules macro ;Macro para imprimir las reglas
clear
imp_msj rule1
newline
imp_msj rule2
newline
imp_msj rule3
newline
imp_msj rule4
newline 
imp_msj rule5
newline
imp_msj rule6
newline
imp_msj rule7
newline
imp_msj rule8
newline
imp_msj rule9
newline
newline
imp_msj rule10 
newline
imp_msj rule11 
endm 
           
logo macro ;Macro para imprimir el logo
imp_msj logo1
newline
imp_msj logo2
newline
imp_msj logo3
newline 
imp_msj logo4
newline
imp_msj logo5
newline
imp_msj logo6
newline
imp_msj logo7
newline 
imp_msj logo8 
newline
newline
imp_msj logo9
newline 
newline
imp_msj logo10  
newline
newline  
imp_msj logo11 
newline 
endm 

clear macro               
MOV AX,0600H 
MOV BH,07H 
MOV CX,0000H 
MOV DX,184FH 
INT 10H   
endm

mov cx,03h  ;Le da el valor de loop a cx    
limpieza_nombres:
mov nameplayerX[si], al 
mov nameplayerO[si], al
inc si 
loop limpieza_nombres ;Limpia las variables de los nombres

imp_logo:
logo ;Imprime el logo
input_enter1:
    mov AH, 08     
    int 21h
    cmp AL, 0Dh
    je reglas 
    jne input_enter1 ;Recibe un enter para continuar

reglas:
rules ;Imprime las reglas
input_enter2:
    mov AH, 08
    int 21h
    cmp AL, 0Dh
    je inputs: 
    jne input_enter2 ;Recibe un enter para continuar  

inputs: ;Imputs para nombres de jugadores
clear   
newline
imp_msj decisionJX 
mov cx,03h
mov si,00h    
inputnombreJX:
    mov ah, 01h
    int 21h
    mov nameplayerX[si],al
    inc si
    loop inputnombreJX
    newline 
    imp_msj decisionJO   
mov cx,03h
mov si,00h         
inputnombreJO:
    mov ah, 01h
    int 21h
    mov nameplayerO[si],al
    inc si
    loop inputnombreJO 

;Modo Grafico 
mov ah, 00h
mov al, 12h;(640x400 px) 16 colores
int 10h       
                                                   
;Imprimir 1 pixel 
mov ah, 0ch ;Escribir modo
mov al, 03h ;Escribir color
mov cx, 98h ;Columna
mov dx, 40h ;Fila 
int 10h  

;Impresion de la matriz
linea1:    
    inc dx
    int 10h
    cmp dx,190h  
    jne linea1  
    
mov cx, 108h 
mov dx, 40h  
int 10h 

linea2: 
    inc dx
    int 10h
    cmp dx,190h  
    jne linea2
  
mov cx, 178h
mov dx, 40h
int 10h 

linea3: 
    inc dx
    int 10h
    cmp dx,190h  
    jne linea3
   
mov cx, 1E8h
mov dx, 40h
int 10h 

linea4: 
    inc dx
    int 10h
    cmp dx,190h  
    jne linea4 
    
mov cx, 98h
mov dx, 40h
int 10h 

linea5: 
    inc cx
    int 10h
    cmp cx,1E8h  
    jne linea5  
    
mov cx, 98h
mov dx, 0B0h
int 10h 

linea6: 
    inc cx
    int 10h
    cmp cx,1E8h  
    jne linea6
  
mov cx, 98h
mov dx, 120h
int 10h 

linea7: 
    inc cx
    int 10h
    cmp cx,1E8h  
    jne linea7
   
mov cx, 98h
mov dx, 190h
int 10h 

linea8: 
    inc cx
    int 10h
    cmp cx,1E8h  
    jne linea8
 
;Impresion de la casilla para el nombre del jugador X  

mov ah, 0ch 
mov al, 03h 
mov cx, 8h
mov dx, 48h
int 10h 
nombre1: 
    inc cx
    int 10h
    cmp cx,88h  
    jne nombre1 
  
mov cx, 8h
mov dx, 0A8h
int 10h    
nombre2:
    inc cx
    int 10h 
    cmp cx,88h 
    jne nombre2
   
mov cx, 8h
mov dx, 48h 
int 10h 
nombre3: 
    inc dx
    int 10h
    cmp dx,0A8h  
    jne nombre3 
    
mov cx, 88h
mov dx, 48h 
int 10h    
nombre4:
    inc dx
    int 10h 
    cmp dx,0A8h 
    jne nombre4 
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,17     
mov dl,5    
int 10h    
PlayerName1: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,playerX[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 09h
    jne PlayerName1 
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,29    
mov dl,8     
int 10h    
PlayerName2: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1     
    mov al,nameplayerX[si]     
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 03h
    jne PlayerName2  

;Impresion de la casilla para imprimir el simbolo X

mov ah, 0ch 
mov al, 03h 
mov cx, 8h
mov dx,0B8h 
int 10h 
simbolo1: 
    inc cx
    int 10h
    cmp cx,88h  
    jne simbolo1 
  
mov cx, 8h
mov dx, 118h 
int 10h   
simbolo2:
    inc cx
    int 10h 
    cmp cx,88h 
    jne simbolo2
                
mov cx, 8h
mov dx, 0B8h 
int 10h 
simbolo3: 
    inc dx
    int 10h
    cmp dx,118h  
    jne simbolo3 
                
mov cx, 88h
mov dx, 0B8h 
int 10h   
simbolo4:
    inc dx
    int 10h 
    cmp dx,118h 
    jne simbolo4 
       
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,45    
mov dl,6     
int 10h    
symbol1: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,symbol[si]     
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 07h
    jne symbol1 
    
simbolo_X: ;Acronimo de dibujo: Symbol X Part N (SXPN)   
    mov ah, 0ch 
    mov al, 0Bh
    
    mov cx, 20h
    mov dx, 0C0h 
    int 10h

    SXP1:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 70h
        jne SXP1
        cmp dx, 110h
        jne SXP1
    
    mov cx, 20h
    mov dx, 110h
    int 10h

    SXP2:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 70h
        jne SXP2
        cmp dx, 0C0h
        jne SXP2        
               
;Impresion de casilla de puntaje para el jugador X

mov ah, 0ch ;Escribir modo
mov al, 03h ;Escribir color            
mov cx, 8h;Columna
mov dx,128h;Fila 
int 10h 
puntaje1: 
    inc cx
    int 10h
    cmp cx,88h  
    jne puntaje1 
               
mov cx, 8h
mov dx, 188h 
int 10h   
puntaje2:
    inc cx
    int 10h 
    cmp cx,88h 
    jne puntaje2
                
mov cx, 8h
mov dx, 128h 
int 10h 
puntaje3: 
    inc dx
    int 10h
    cmp dx,188h  
    jne puntaje3 
    
mov cx, 88h
mov dx, 128h 
int 10h  
puntaje4:
    inc dx
    int 10h 
    cmp dx,188h 
    jne puntaje4     
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,73   
mov dl,6     
int 10h    
score1: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1     
    mov al,score[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 07h
    jne score1 
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,85   
mov dl,8    
int 10h    
scrx0: ;Acronimo de dibujo: Score X N (SCRXN)
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,zero[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 02h
    jne scrx0    

;Impresion de la casilla para el nombre del jugador O

mov ah, 0ch 
mov al, 03h 
mov cx, 1F8h
mov dx, 48h
int 10h 
nombre5: 
    inc cx
    int 10h
    cmp cx,278h  
    jne nombre5 
   
mov cx, 1F8h
mov dx, 0A8h
int 10h    
nombre6:
    inc cx
    int 10h 
    cmp cx,278h 
    jne nombre6
          
mov cx, 1F8h
mov dx, 48h 
int 10h 
nombre7: 
    inc dx
    int 10h
    cmp dx,0A8h  
    jne nombre7 
    
mov cx, 278h
mov dx, 48h
int 10h   
nombre8:
    inc dx
    int 10h 
    cmp dx,0A8h 
    jne nombre8  
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,17    
mov dl,67    
int 10h    
PlayerName3: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,playerO[si]    
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 09h
    jne PlayerName3  
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,29   
mov dl,70   
int 10h    
PlayerName4: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,nameplayerO[si]     
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 03h
    jne PlayerName4 
    
;Impresion de la casilla para imprimir el simbolo O
 
mov ah, 0ch 
mov al, 03h 
mov cx, 1F8h
mov dx, 0B8h
int 10h 
simbolo5: 
    inc cx
    int 10h
    cmp cx,278h  
    jne simbolo5 
               
mov cx, 1F8h
mov dx, 118h
int 10h   
simbolo6:
    inc cx
    int 10h 
    cmp cx,278h 
    jne simbolo6
              
mov cx, 1F8h
mov dx, 0B8h
int 10h 
simbolo7: 
    inc dx
    int 10h
    cmp dx,118h  
    jne simbolo7 
               
mov cx, 278h
mov dx, 0B8h
int 10h    
simbolo8:
    inc dx
    int 10h 
    cmp dx,118h 
    jne simbolo8 

mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,45   
mov dl,68    
int 10h    
symbol2: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,symbol[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 07h
    jne symbol2 
    
Symbolo_O: 
    mov ah, 0ch
    mov al, 0Ch 
    mov cx, 248h
    mov dx, 0C0h
    int 10h
    SOP1: ;Acronimo de dibujo: Symbol O Part N (SOPN)
        dec cx
        int 10h
        cmp cx,228h  
        jne SOP1
    mov cx, 228h
    mov dx, 0C0h     
    SOP2:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,210h
        jne SOP2
        cmp dx,0D8h 
        jne SOP2
    mov cx, 210h
    mov dx, 0D8h
    int 10h
    SOP3:
        inc dx
        int 10h
        cmp dx,0F8h
        jne SOP3
    mov cx, 210h
    mov dx, 0F8h    
    SOP4:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 228h
        jne SOP4
        cmp dx, 110h
        jne SOP4            
    mov cx, 228h
    mov dx, 110h
    int 10h  
    SOP5:
        inc cx
        int 10h
        cmp cx,248h
        jne SOP5
    mov cx, 248h
    mov dx, 110h
    SOP6:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,260h
        jne SOP6
        cmp dx,0F8h
        jne SOP6     
    mov cx, 260h
    mov dx, 0F8h
    int 10h
    SOP7:
        dec dx
        int 10h
        cmp dx,0D8h
        jne SOP7
    mov cx, 260h
    mov dx, 0D8h
    SOP8:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,248h
        jne SOP8
        cmp dx,0C0h
        jne SOP8
    
;Impresion de casilla de puntaje para el jugador O  

mov ah, 0ch 
mov al, 03h 
mov cx, 1F8h
mov dx, 128h
int 10h 
puntaje5: 
    inc cx
    int 10h
    cmp cx,278h  
    jne puntaje5 
              
mov cx, 1F8h
mov dx, 188h
int 10h    
puntaje6:
    inc cx
    int 10h 
    cmp cx,278h 
    jne puntaje6
              
mov cx, 1F8h
mov dx, 128h
int 10h 
puntaje7: 
    inc dx
    int 10h
    cmp dx,188h  
    jne puntaje7 
  
mov cx, 278h
mov dx, 128h 
int 10h  
puntaje8:
    inc dx
    int 10h 
    cmp dx,188h 
    jne puntaje8
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,73   
mov dl,68    
int 10h    
score2: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,score[si]     
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 07h
    jne score2  
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,85   
mov dl,70    
int 10h    
scrO0: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,zero[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 02h
    jne scrO0 
    
;Impresion de boton de rendicion

mov ah, 0ch 
mov al, 03h 
mov cx, 0A0h
mov dx, 1A0h
int 10h   
BTR1: ;Acronimo de dibujo: Boton Rendicion N (BTRN)
    inc cx
    int 10h 
    cmp cx,100h 
    jne BTR1 
               
mov cx, 0A0h 
mov dx, 1D0h
int 10h    
BTR2:
    inc cx
    int 10h 
    cmp cx,100h 
    jne BTR2 
   
mov cx, 0A0h    
mov dx, 1A0h
int 10h    
BTR3:
    inc dx
    int 10h 
    cmp dx,1D0h 
    jne BTR3 
  
mov cx, 100h
mov dx, 1A0h
int 10h    
BTR4:
    inc dx
    int 10h 
    cmp dx,1D0h 
    jne BTR4   

mov ah, 0ch 
mov al, 06h 
mov cx, 0E0h
mov dx, 1A8h 
int 10h   
BTB1: ;Acronimo de dibujo: Boton Bandera N (BTBN)
    inc dx
    int 10h
    cmp dx,1C8h
    jne BTB1
    
mov ah, 0ch
mov al, 0Fh 
mov cx, 0C0h
mov dx, 1A8h
int 10h 
BTB2:
    inc cx
    int 10h   
    cmp cx,0D8h
    jne BTB2
   
mov cx, 0D8h
mov dx, 1B0h 
int 10h   
BTB3:     
    dec cx
    int 10h
    cmp cx,0C0h
    jne BTB3
    
mov cx, 0C0h
mov dx, 1B8h
int 10h 
BTB4:
    inc cx
    int 10h
    cmp cx, 0D8h
    jne BTB4
        
;Impresion de boton de reincio

mov ah, 0ch 
mov al, 03h 
mov cx, 110h
mov dx, 1A0h
int 10h
BTA1: ;Acronimo de dibujo: Button Again N (BTAN)
    inc cx
    int 10h
    cmp cx,170h
    jne BTA1

mov cx, 110h
mov dx, 1D0h
int 10h 
BTA2:
    inc cx
    int 10h
    cmp cx,170h
    jne BTA2

mov cx, 110h
mov dx, 1A0h
int 10h 
BTA3:
    inc dx
    int 10h
    cmp dx, 1D0h
    jne BTA3
 
mov cx, 170h
mov dx, 1A0h
int 10h     
BTA4:
    inc dx
    int 10h
    cmp dx, 1D0h
    jne BTA4    

mov ah, 0ch 
mov al, 0Ah   
mov cx, 150h
mov dx, 1C8h 
int 10h
BTS1: ;Acronimo de dibujo: Button Symbol N (BTSN)
    dec cx
    int 10h
    cmp cx,138h
    jne BTS1
    
int 10h 
BTS2:
    dec cx
    int 10h
    dec dx
    int 10h
    cmp cx,130h
    jne BTS2
    cmp dx,1C0h
    jne BTS2
       
mov cx, 130h
mov dx, 1C0h
int 10h 
BTS3:
    dec dx
    int 10h
    cmp dx,1B0h
    jne BTS3
  
mov cx, 130h
mov dx, 1B0h
int 10h  
BTS4:
    inc cx
    int 10h
    dec dx
    int 10h
    cmp cx,138h
    jne BTS4
    cmp dx,1A8h
    jne BTS4
        
mov cx, 138h
mov dx, 1A8h
int 10h  
BTS5:
    inc cx
    int 10h
    cmp cx,148h
    jne BTS5

mov cx, 148h
mov dx, 1A8h 
int 10h 
BTS6:
    inc cx
    int 10h
    inc dx
    int 10h
    cmp cx,150h
    jne BTS6
    cmp dx,1B0h
    jne BTS6    

mov cx, 150h
mov dx, 1B0h 
int 10h 
BTS7:
    inc dx
    int 10h
    cmp dx,1C0h
    jne BTS7
    
mov cx, 148h
mov dx, 1B8h 
int 10h 
BTS8:
    inc cx
    int 10h
    inc dx
    int 10h
    cmp cx,150h
    jne BTS8
    cmp dx,1C0h
    jne BTS8 
                        
mov cx, 158h
mov dx, 1B8h
int 10h 
BTS9:
    dec cx
    int 10h
    inc dx
    int 10h
    cmp cx,150h
    jne BTS9
    cmp dx,1C0h
    jne BTS9

;Impresion de boton de salida 
 
mov ah, 0ch 
mov al, 03h 
mov cx, 180h
mov dx, 1A0h
int 10h      
BTE1: ;Acronimo de dibujo: Button Exit N (BTEN)
    inc cx
    int 10h
    cmp cx, 1E0h
    jne BTE1
   
mov cx, 180h
mov dx, 1D0h 
int 10h 
BTE2:
    inc cx
    int 10h
    cmp cx,1E0h
    jne BTE2
   
mov cx, 180h
mov dx, 1A0h 
int 10h 
BTE3:
    inc dx
    int 10h
    cmp dx, 1D0h
    jne BTE3

mov cx, 1E0h
mov dx, 1A0h 
int 10h 
BTE4:
    inc dx
    int 10h
    cmp dx,1D0h
    jne BTE4  

mov ah, 0ch 
mov al, 04h
mov cx, 1A0h
mov dx, 1A8h
int 10h
BTX1: ;Acronimo de dibujo: Button X N (BTXN)
    inc cx
    int 10h
    inc dx
    int 10h
    cmp cx,1C0h
    jne BTX1
    cmp dx,1C8h
    jne BTX1
   
mov cx, 1A0h
mov dx, 1C8h
int 10h 
BTX2:
    inc cx
    int 10h
    dec dx
    int 10h
    cmp cx,1C0h
    jne BTX2
    cmp dx,1A8h
    jne BTX2 
  
turnX macro: ;Impresion de mensaje de turno del jugador X 
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7     
mov dl,34     
int 10h    
messageturnX: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,playerturnX[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 8
    jne messageturnX 
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7    
mov dl,43    
int 10h    
nameturnX: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1     
    mov al,nameplayerX[si]     
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 3
    jne nameturnX
endm 

turnO macro: ;Impresion de mensaje de turno del jugador O 
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7    
mov dl,34   
int 10h    
messageturnO: 
    mov ah,09h
    mov bl,0eh  
    mov cx,1      
    mov al,playerturnO[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 8
    jne messageturnO 
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7   
mov dl,43   
int 10h    
nameturnO: 
    mov ah,09h
    mov bl,0eh  
    mov cx,1      
    mov al,nameplayerO[si]    
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 3
    jne nameturnO
endm     

winnerX macro ;Impresion de mensaje de ganador del jugador X   
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7   
mov dl,33    
int 10h    
messagewinX: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1     
    mov al,wins[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 14
    jne messagewinX
          
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7    
mov dl,43   
int 10h    
namewinX: 
    mov ah,09h
    mov bl,0eh  
    mov cx,1      
    mov al,nameplayerX[si]     
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 3
    jne namewinX
endm  

winnerO macro ;Impresion de mensaje de ganador del jugador O   
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7   
mov dl,33    
int 10h    
messagewinO: 
    mov ah,09h
    mov bl,0eh  
    mov cx,1     
    mov al,wins[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 14
    jne messagewinO 
    
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,7   
mov dl,43     
int 10h    
namewinO: 
    mov ah,09h
    mov bl,0eh   
    mov cx,1      
    mov al,nameplayerO[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 3
    jne namewinO    
endm   
                  
X_Posicion_1 macro ;Impresion de simbolo X en posicion 1 
    mov ah, 0ch 
    mov al, 0Bh
    mov cx, 0A8h
    mov dx, 130h 
    int 10h
    
    XP1: ;Acronimo de dibujo: X Parte N (XPN)
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 0F8h
        jne XP1
        cmp dx, 180h
        jne XP1
        
    mov cx, 0A8h
    mov dx, 180h
    int 10h
    
    XP12: ;Acronimo de dibujo: X Parte N-N (XPNN)
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 0F8h
        jne XP12
        cmp dx, 130h
        jne XP12    
    endm

X_Posicion_2 macro ;Impresion de simbolo X en posicion 2
    mov ah, 0ch 
    mov al, 0Bh 
    mov cx, 118h
    mov dx, 130h 
    int 10h
    
    XP2:  
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 168h
        jne XP2
        cmp dx, 180h
        jne XP2
        
    mov cx, 118h
    mov dx, 180h
    int 10h
    
    XP21:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 168h
        jne XP21
        cmp dx, 130h
        jne XP21    
    endm

X_Posicion_3 macro ;Impresion de simbolo X en posicion 3
    mov ah, 0ch 
    mov al, 0Bh 
    mov cx, 188h
    mov dx, 130h 
    int 10h
    
    XP3:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 1D8h
        jne XP3
        cmp dx, 180h
        jne XP3
        
    mov cx, 188h
    mov dx, 180h
    int 10h
    
    XP31:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 1D8h
        jne XP31
        cmp dx, 130h
        jne XP31    
    endm

X_Posicion_4 macro ;Impresion de simbolo X en posicion 4
    mov ah, 0ch 
    mov al, 0Bh  
    mov cx, 0A8h
    mov dx, 0C0h 
    int 10h
    
    XP4:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 0F8h
        jne XP4
        cmp dx, 110h
        jne XP4
        
    mov cx, 0A8h
    mov dx, 110h
    int 10h
    
    XP41:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 0F8h
        jne XP41
        cmp dx, 0C0h
        jne XP41    
    endm

X_Posicion_5 macro ;Impresion de simbolo X en posicion 5
    mov ah, 0ch 
    mov al, 0Bh  
    mov cx, 118h
    mov dx, 0C0h 
    int 10h
    
    XP5:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 168h
        jne XP5
        cmp dx, 110h
        jne XP5
        
    mov cx, 118h
    mov dx, 110h
    int 10h
    
    XP51:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 168h
        jne XP51
        cmp dx, 0C0h
        jne XP51    
    endm
    
X_Posicion_6 macro ;Impresion de simbolo X en posicion 6
    mov ah, 0ch 
    mov al, 0Bh  
    mov cx, 188h
    mov dx, 0C0h 
    int 10h
    
    XP6:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 1D8h
        jne XP6
        cmp dx, 110h
        jne XP6
        
    mov cx, 188h
    mov dx, 110h
    int 10h
    
    XP61:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 1D8h
        jne XP61
        cmp dx, 0C0h
        jne XP61    
    endm 

X_Posicion_7 macro ;Impresion de simbolo X en posicion 7
    mov ah, 0ch 
    mov al, 0Bh   
    mov cx, 0A8h
    mov dx, 50h 
    int 10h
    
    XP7:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 0F8h
        jne XP7
        cmp dx, 0A0h
        jne XP7
        
    mov cx, 0A8h
    mov dx, 0A0h
    int 10h
    
    XP71:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 0F8h
        jne XP71
        cmp dx, 50h
        jne XP71    
    endm  
        
X_Posicion_8 macro ;Impresion de simbolo X en posicion 8
    mov ah, 0ch 
    mov al, 0Bh   
    mov cx, 118h
    mov dx, 50h 
    int 10h
    
    XP8:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 168h
        jne XP8
        cmp dx, 0A0h
        jne XP8
        
    mov cx, 118h
    mov dx, 0A0h
    int 10h
    
    XP81:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 168h
        jne XP81
        cmp dx, 50h
        jne XP81    
    endm          
        
X_Posicion_9 macro ;Impresion de simbolo X en posicion 9
    mov ah, 0ch 
    mov al, 0Bh   
    mov cx, 188h
    mov dx, 50h 
    int 10h
    
    XP9:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 1D8h
        jne XP9
        cmp dx, 0A0h
        jne XP9
        
    mov cx, 188h
    mov dx, 0A0h
    int 10h
    
    XP91:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 1D8h
        jne XP91
        cmp dx, 50h
        jne XP91    
    endm          
        
O_Posicion_1 macro ;Impresion de simbolo O en posicion 1
    mov ah, 0ch 
    mov al, 0Ch 
    mov cx, 0E0h
    mov dx, 130h
    int 10h
    OP1:  ;Acronimo de dibujo: O Parte N (OPN)
        dec cx
        int 10h
        cmp cx,0C0h  
        jne OP1
    mov cx, 0C0h
    mov dx, 130h     
    OP12: ;Acronimo de dibujo: O Parte N-N (OPNN)
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,0A8h
        jne OP12
        cmp dx,148h 
        jne OP12
    mov cx, 0A8h
    mov dx, 148h
    int 10h
    OP13:
        inc dx
        int 10h
        cmp dx,168h
        jne OP13
    mov cx, 0A8h
    mov dx, 168h    
    OP14:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 0C0h
        jne OP14
        cmp dx, 180h
        jne OP14            
    mov cx, 0C0h
    mov dx, 180h
    int 10h  
    OP15:
        inc cx
        int 10h
        cmp cx,0E0h
        jne OP15
    mov cx, 0E0h
    mov dx, 180h
    OP16:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,0F8h
        jne OP16
        cmp dx,168h
        jne OP16     
    mov cx, 0F8h
    mov dx, 168h
    int 10h
    OP17:
        dec dx
        int 10h
        cmp dx,148h
        jne OP17
    mov cx, 0F8h
    mov dx, 148h
    OP18:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,0E0h
        jne OP18
        cmp dx,130h
        jne OP18
    endm 
              
O_Posicion_2 macro ;Impresion de simbolo O en posicion 2
    mov ah, 0ch 
    mov al, 0Ch 
    mov cx, 150h
    mov dx, 130h
    int 10h
    OP2: 
        dec cx
        int 10h
        cmp cx,130h  
        jne OP2
    mov cx, 130h
    mov dx, 130h     
    OP22:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,118h
        jne OP22
        cmp dx,148h 
        jne OP22
    mov cx, 118h
    mov dx, 148h
    int 10h
    OP23:
        inc dx
        int 10h
        cmp dx,168h
        jne OP23
    mov cx, 118h
    mov dx, 168h    
    OP24:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 130h
        jne OP24
        cmp dx, 180h
        jne OP24            
    mov cx, 130h
    mov dx, 180h
    int 10h  
    OP25:
        inc cx
        int 10h
        cmp cx,150h
        jne OP25
    mov cx, 150h
    mov dx, 180h
    OP26:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,168h
        jne OP26
        cmp dx,168h
        jne OP26     
    mov cx, 168h
    mov dx, 168h
    int 10h
    OP27:
        dec dx
        int 10h
        cmp dx,148h
        jne OP27
    mov cx, 168h
    mov dx, 148h
    OP28:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,150h
        jne OP28
        cmp dx,130h
        jne OP28    
    endm 

O_Posicion_3 macro ;Impresion de simbolo O en posicion 3
    mov ah, 0ch 
    mov al, 0Ch 
    mov cx, 1C0h
    mov dx, 130h
    int 10h
    OP3: 
        dec cx
        int 10h
        cmp cx,1A0h  
        jne OP3
    mov cx, 1A0h
    mov dx, 130h     
    OP32:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,188h
        jne OP32
        cmp dx,148h 
        jne OP32
    mov cx, 188h
    mov dx, 148h
    int 10h
    OP33:
        inc dx
        int 10h
        cmp dx,168h
        jne OP33
    mov cx, 188h
    mov dx, 168h    
    OP34:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 1A0h
        jne OP34
        cmp dx, 180h
        jne OP34            
    mov cx, 1A0h
    mov dx, 180h
    int 10h  
    OP35:
        inc cx
        int 10h
        cmp cx,1C0h
        jne OP35
    mov cx, 1C0h
    mov dx, 180h
    OP36:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,1D8h
        jne OP36
        cmp dx,168h
        jne OP36     
    mov cx, 1D8h
    mov dx, 168h
    int 10h
    OP37:
        dec dx
        int 10h
        cmp dx,148h
        jne OP37
    mov cx, 1D8h
    mov dx, 148h
    OP38:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,1C0h
        jne OP38
        cmp dx,130h
        jne OP38    
    endm  
  
O_Posicion_4 macro ;Impresion de simbolo O en posicion 4
    mov ah, 0ch 
    mov al, 0Ch  
    mov cx, 0E0h
    mov dx, 0C0h
    int 10h
    OP4: 
        dec cx
        int 10h
        cmp cx,0C0h  
        jne OP4
    mov cx, 0C0h
    mov dx, 0C0h     
    OP42:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,0A8h
        jne OP42
        cmp dx,0D8h 
        jne OP42
    mov cx, 0A8h
    mov dx, 0D8h
    int 10h
    OP43:
        inc dx
        int 10h
        cmp dx,0F8h
        jne OP43
    mov cx, 0A8h
    mov dx, 0F8h    
    OP44:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 0C0h
        jne OP44
        cmp dx, 110h
        jne OP44            
    mov cx, 0C0h
    mov dx, 110h
    int 10h  
    OP45:
        inc cx
        int 10h
        cmp cx,0E0h
        jne OP45
    mov cx, 0E0h
    mov dx, 110h
    OP46:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,0F8h
        jne OP46
        cmp dx,0F8h
        jne OP46     
    mov cx, 0F8h
    mov dx, 0F8h
    int 10h
    OP47:
        dec dx
        int 10h
        cmp dx,0D8h
        jne OP47
    mov cx, 0F8h
    mov dx, 0D8h
    OP48:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,0E0h
        jne OP48
        cmp dx,0C0h
        jne OP48    
    endm 

O_Posicion_5 macro ;Impresion de simbolo O en posicion 5
    mov ah, 0ch 
    mov al, 0Ch  
    mov cx, 150h
    mov dx, 0C0h
    int 10h
    OP5: 
        dec cx
        int 10h
        cmp cx,130h  
        jne OP5
    mov cx, 130h
    mov dx, 0C0h     
    OP52:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,118h
        jne OP52
        cmp dx,0D8h 
        jne OP52
    mov cx, 118h
    mov dx, 0D8h
    int 10h
    OP53:
        inc dx
        int 10h
        cmp dx,0F8h
        jne OP53
    mov cx, 118h
    mov dx, 0F8h    
    OP54:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 130h
        jne OP54
        cmp dx, 110h
        jne OP54            
    mov cx, 130h
    mov dx, 110h
    int 10h  
    OP55:
        inc cx
        int 10h
        cmp cx,150h
        jne OP55
    mov cx, 150h
    mov dx, 110h
    OP56:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,168h
        jne OP56
        cmp dx,0F8h
        jne OP56     
    mov cx, 168h
    mov dx, 0F8h
    int 10h
    OP57:
        dec dx
        int 10h
        cmp dx,0D8h
        jne OP57
    mov cx, 168h
    mov dx, 0D8h
    OP58:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,150h
        jne OP58
        cmp dx,0C0h
        jne OP58    
    endm   
     
O_Posicion_6 macro ;Impresion de simbolo O en posicion 6
    mov ah, 0ch 
    mov al, 0Ch 
    mov cx, 1C0h
    mov dx, 0C0h
    int 10h
    OP6: 
        dec cx
        int 10h
        cmp cx,1A0h  
        jne OP6
    mov cx, 1A0h
    mov dx, 0C0h     
    OP62:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,188h
        jne OP62
        cmp dx,0D8h 
        jne OP62
    mov cx, 188h
    mov dx, 0D8h
    int 10h
    OP63:
        inc dx
        int 10h
        cmp dx,0F8h
        jne OP63
    mov cx, 188h
    mov dx, 0F8h    
    OP64:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 1A0h
        jne OP64
        cmp dx, 110h
        jne OP64            
    mov cx, 1A0h
    mov dx, 110h
    int 10h  
    OP65:
        inc cx
        int 10h
        cmp cx,1C0h
        jne OP65
    mov cx, 1C0h
    mov dx, 110h
    OP66:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,1D8h
        jne OP66
        cmp dx,0F8h
        jne OP66     
    mov cx, 1D8h
    mov dx, 0F8h
    int 10h
    OP67:
        dec dx
        int 10h
        cmp dx,0D8h
        jne OP67
    mov cx, 1D8h
    mov dx, 0D8h
    OP68:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,1C0h
        jne OP68
        cmp dx,0C0h
        jne OP68    
    endm      
     
O_Posicion_7 macro ;Impresion de simbolo O en posicion 7
    mov ah, 0ch 
    mov al, 0Ch 
    mov cx, 0E0h
    mov dx, 50h
    int 10h
    OP7: 
        dec cx
        int 10h
        cmp cx,0C0h  
        jne OP7
    mov cx, 0C0h
    mov dx, 50h     
    OP72:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,0A8h
        jne OP72
        cmp dx,68h 
        jne OP72
    mov cx, 0A8h
    mov dx, 68h
    int 10h
    OP73:
        inc dx
        int 10h
        cmp dx,88h
        jne OP73
    mov cx, 0A8h
    mov dx, 88h    
    OP74:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 0C0h
        jne OP74
        cmp dx, 0A0h
        jne OP74            
    mov cx, 0C0h
    mov dx, 0A0h
    int 10h  
    OP75:
        inc cx
        int 10h
        cmp cx,0E0h
        jne OP75
    mov cx, 0E0h
    mov dx, 0A0h
    OP76:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,0F8h
        jne OP76
        cmp dx,88h
        jne OP76     
    mov cx, 0F8h
    mov dx, 88h
    int 10h
    OP77:
        dec dx
        int 10h
        cmp dx,68h
        jne OP77
    mov cx, 0F8h
    mov dx, 68h
    OP78:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,0E0h
        jne OP78
        cmp dx,50h
        jne OP78    
    endm      
     
O_Posicion_8 macro ;Impresion de simbolo O en posicion 8
    mov ah, 0ch 
    mov al, 0Ch    
    mov cx, 150h
    mov dx, 50h
    int 10h
    OP8: 
        dec cx
        int 10h
        cmp cx,130h  
        jne OP8
    mov cx, 130h
    mov dx, 50h     
    OP82:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,118h
        jne OP82
        cmp dx,68h 
        jne OP82
    mov cx, 118h
    mov dx, 68h
    int 10h
    OP83:
        inc dx
        int 10h
        cmp dx,88h
        jne OP83
    mov cx, 118h
    mov dx, 88h    
    OP84:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 130h
        jne OP84
        cmp dx, 0A0h
        jne OP84            
    mov cx, 130h
    mov dx, 0A0h
    int 10h  
    OP85:
        inc cx
        int 10h
        cmp cx,150h
        jne OP85
    mov cx, 150h
    mov dx, 0A0h
    OP86:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,168h
        jne OP86
        cmp dx,88h
        jne OP86     
    mov cx, 168h
    mov dx, 88h
    int 10h
    OP87:
        dec dx
        int 10h
        cmp dx,68h
        jne OP87
    mov cx, 168h
    mov dx, 68h
    OP88:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,150h
        jne OP88
        cmp dx,50h
        jne OP88    
    endm      
     
O_Posicion_9 macro ;Impresion de simbolo O en posicion 9
    mov ah, 0ch 
    mov al, 0Ch    
    mov cx, 1C0h
    mov dx, 50h
    int 10h
    OP9: 
        dec cx
        int 10h
        cmp cx,1A0h  
        jne OP9
    mov cx, 1A0h
    mov dx, 50h     
    OP92:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,188h
        jne OP92
        cmp dx,68h 
        jne OP92
    mov cx, 188h
    mov dx, 68h
    int 10h
    OP93:
        inc dx
        int 10h
        cmp dx,88h
        jne OP93
    mov cx, 188h
    mov dx, 88h    
    OP94:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 1A0h
        jne OP94
        cmp dx, 0A0h
        jne OP94            
    mov cx, 1A0h
    mov dx, 0A0h
    int 10h  
    OP95:
        inc cx
        int 10h
        cmp cx,1C0h
        jne OP95
    mov cx, 1C0h
    mov dx, 0A0h
    OP96:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,1D8h
        jne OP96
        cmp dx,88h
        jne OP96     
    mov cx, 1D8h
    mov dx, 88h
    int 10h
    OP97:
        dec dx
        int 10h
        cmp dx,68h
        jne OP97
    mov cx, 1D8h
    mov dx, 68h
    OP98:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,1C0h
        jne OP98
        cmp dx,50h
        jne OP98    
    endm         
    
 beep macro
    mov ah,2h
    mov dl,07h
    int 21h  
 endm      
    
;Inicio del juego

startgame:

mov al,00h
mov si,00h               
mov cx,0Ah 
limpieza_posiciones: ;Limpia las posiciones de las variables PX, PO y PT    
mov px[si], 00h
mov po[si], 00h
mov pt[si], 00h
mov mtxp[si], 00h
inc si
loop limpieza_posiciones
    
mov contador, 00h

mov ax,0h
int 33h

mov ax,01h
int 33h 

playerXturn: ;Turno del jugador X
turnX
     
cmp contador, 09h
je errase_matrix

cmp sx,32h
jge ending

click1: ;Click del jugador X
mov ax,03h
int 33h  

cmp bx,01h 
je BTNR1P1: 

cmp bx,02h
je sub5pointsX
 
jmp click1

;Sumas y restas de puntos del jugador X

sub1pointX: 
    dec sx  
    beep 
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    mov ah, 0ch 
    mov al, 03h 
    mov cx, 98h 
    mov dx, 40h 
    int 10h 
    jmp printXscore
             
sub5pointsX:
    sub sx,5 
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx    
    jmp printXscore     

sub10pointsX:
    sub sx,10 
    beep     
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx 
    mov ah, 0ch 
    mov al, 03h 
    mov cx, 98h 
    mov dx, 40h 
    int 10h
    jmp printXscore     
    
add20pointsX:
    add sx,20    
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    jmp printXscore2
    verification_playerX:    
        cmp sx,50        
        jge winningX
        jmp errase_matrix 
                
;Acciones de presionar cualquier boton del jugador X 
    
 BTNR1P1: ;Acronimo de Algoritmo: Boton Rendirse 1 Parte N (BTNR1PN)
    cmp cx,142h
    jae BTNR1P2
    jmp BTNA1P1
 BTNR1P2:
    cmp dx,1A1h
    jae BTNR1P3  
    jmp BTNA1P1
 BTNR1P3: 
    cmp cx,1FEh
    jbe BTNR1P4  
    jmp BTNA1P1
 BTNR1P4: 
    cmp dx,1CFh 
    jbe BTNR1P5 
    jmp BTNA1P1
 BTNR1P5:
    jmp winningO 
    
 BTNA1P1: ;Acronimo de Algoritmo: Button Again 1 Part N (BTNA1PN)
    cmp cx,222h
    jae BTNA1P2
    jmp BTNX1P1
 BTNA1P2:
    cmp dx,1A1h
    jae BTNA1P3  
    jmp BTNX1P1
 BTNA1P3: 
    cmp cx,2DEh
    jbe BTNA1P4  
    jmp BTNX1P1
 BTNA1P4: 
    cmp dx,1CFh 
    jbe BTNA1P5 
    jmp BTNX1P1
 BTNA1P5:
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx 
    mov sx,00h
    mov so,00h
    mov ah,00h
    mov al,03h
    int 10h 
    jmp inicio
  
 BTNX1P1: ;Acronimo de Algoritmo: Boton X 1 Parte N (BTNX1PN)
    cmp cx,302
    jae BTNX1P2
    jmp CX1P1
 BTNX1P2:
    cmp dx,1A1h
    jae BTNX1P3  
    jmp CX1P1
 BTNX1P3: 
    cmp cx,3BEh
    jbe BTNX1P4  
    jmp CX1P1
 BTNX1P4: 
    cmp dx,1CFh 
    jbe BTNX1P5 
    jmp CX1P1
 BTNX1P5:
    jmp ending      

 CX1P1: ;Acronimo de Algoritmo: Click X 1 Parte N (CX1PN)
    cmp cx,132h
    jae CX1P2
    jmp CX2P1
 CX1P2:
    cmp dx,121h
    jae CX1P3  
    jmp CX2P1
 CX1P3: 
    cmp cx,20Eh
    jbe CX1P4  
    jmp CX2P1
 CX1P4: 
    cmp dx,18Eh 
    jbe CX1P5 
    jmp CX2P1
 CX1P5:    
    mov si,00h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h     
    X_Posicion_1 
    inc contador
    jmp winning1X
    
 CX2P1:
    cmp cx,212h
    jae CX2P2
    jmp CX3P1
 CX2P2:
    cmp dx,121h
    jae CX2P3  
    jmp CX3P1
 CX2P3: 
    cmp cx,2EEh
    jbe CX2P4  
    jmp CX3P1
 CX2P4: 
    cmp dx,18Eh 
    jbe CX2P5 
    jmp CX3P1
 CX2P5:      
    mov si,01h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_2 
    inc contador
    jmp winning1X
    
 CX3P1:
    cmp cx,2F2h
    jae CX3P2
    jmp CX4P1
 CX3P2:
    cmp dx,121h
    jae CX3P3  
    jmp CX4P1
 CX3P3: 
    cmp cx,3CEh
    jbe CX3P4  
    jmp CX4P1
 CX3P4: 
    cmp dx,18Eh 
    jbe CX3P5 
    jmp CX4P1
 CX3P5:     
    mov si,02h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_3 
    inc contador
    jmp winning1X
    
 CX4P1:
    cmp cx,132h
    jae CX4P2
    jmp CX5P1
 CX4P2:
    cmp dx,0B1h
    jae CX4P3  
    jmp CX5P1
 CX4P3: 
    cmp cx,20Eh
    jbe CX4P4  
    jmp CX5P1
 CX4P4: 
    cmp dx,11Eh 
    jbe CX4P5 
    jmp CX5P1
 CX4P5:     
    mov si,03h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_4 
    inc contador
    jmp winning1X
    
 CX5P1:
    cmp cx,212h
    jae CX5P2
    jmp CX6P1
 CX5P2:
    cmp dx,0B1h
    jae CX5P3  
    jmp CX6P1
 CX5P3: 
    cmp cx,2EEh
    jbe CX5P4  
    jmp CX6P1
 CX5P4: 
    cmp dx,11Eh 
    jbe CX5P5 
    jmp CX6P1
 CX5P5:      
    mov si,04h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_5  
    inc contador
    jmp winning1X   

 CX6P1:
    cmp cx,2F2h
    jae CX6P2
    jmp CX7P1
 CX6P2:
    cmp dx,0B1h
    jae CX6P3  
    jmp CX7P1
 CX6P3: 
    cmp cx,3CEh
    jbe CX6P4  
    jmp CX7P1
 CX6P4: 
    cmp dx,11Eh 
    jbe CX6P5 
    jmp CX7P1
 CX6P5:      
    mov si,05h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_6 
    inc contador
    jmp winning1X 
    
 CX7P1:
    cmp cx,132h
    jae CX7P2
    jmp CX8P1
 CX7P2:
    cmp dx,41h
    jae CX7P3  
    jmp CX8P1
 CX7P3: 
    cmp cx,20Eh
    jbe CX7P4  
    jmp CX8P1
 CX7P4: 
    cmp dx,0AEh 
    jbe CX7P5 
    jmp CX8P1
 CX7P5:      
    mov si,06h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_7 
    inc contador
    jmp winning1X
    
 CX8P1:
    cmp cx,212h
    jae CX8P2
    jmp CX9P1
 CX8P2:
    cmp dx,41h
    jae CX8P3  
    jmp CX9P1
 CX8P3: 
    cmp cx,2EEh
    jbe CX8P4  
    jmp CX9P1
 CX8P4: 
    cmp dx,0AEh 
    jbe CX8P5 
    jmp CX9P1
 CX8P5:     
    mov si,07h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_8 
    inc contador
    jmp winning1X   

 CX9P1:
    cmp cx,2F2h
    jae CX9P2
    jmp OGZP1X
 CX9P2:
    cmp dx,41h
    jae CX9P3  
    jmp OGZP1X
 CX9P3: 
    cmp cx,3CEh
    jbe CX9P4  
    jmp OGZP1X
 CX9P4: 
    cmp dx,0AEh 
    jbe CX9P5 
    jmp OGZP1X
 CX9P5:     
    mov si,08h
    cmp pt[si],01h
    je sub10pointsX
    mov px[si],01h
    mov pt[si],01h
    mov mtxp[si],01h
    X_Posicion_9 
    inc contador
    jmp winning1X  
     
  OGZP1X: ;Acronimo de Algoritmo: Out Game Zone Part N X (OGZP1X)
    cmp cx, 130h
    jb OGZP3X
  OGZP2X:
    cmp cx,130h
    ja OGZP3X     
  OGZP3X:
    cmp dx,40h
    jb OGZP5X
  OGZP4X:
    cmp dx,40h
    ja OGZP5X 
  OGZP5X:
    cmp cx,3D0h
    jb OGZP7X
  OGZP6X:
    cmp cx,3D0h
    ja OGZP7X      
  OGZP7X: 
    cmp dx,190h
    jb sub1pointX
  OGZP8X:
    cmp dx,190h
    ja sub1pointX
    
;Verificadores de posiciones ganadoras del jugador X

winning1X:
    mov al,1h
    mov di,0h
    cmp al,px[di]
    je nxt1X
    jne winning2X 
    nxt1X: ;Acronimo de Algoritmo: Next N X (nxtNX)
        mov di,1h
        cmp px[di], al
        je nxt2X
        jne winning2X
    nxt2X:
        mov di,2h
        cmp px[di], al
        je add20pointsX
        jne winning2X
        
 winning2X: 
    mov al,1h
    mov di,3h
    cmp al,px[di]
    je nxt3X
    jne winning3X 
    nxt3X:
        mov di,4h
        cmp px[di], al
        je nxt4X
        jne winning3X
    nxt4X:
        mov di,5h
        cmp px[di], al
        je add20pointsX
        jne winning3X   
          
 winning3X:
    mov al,1h
    mov di,6h
    cmp al,px[di]
    je nxt5X
    jne winning4X 
    nxt5X:
        mov di,7h
        cmp px[di], al
        je nxt6X
        jne winning4X
    nxt6X:
        mov di,8h
        cmp px[di], al
        je add20pointsX 
        jne winning4X 

 winning4X:
    mov al,1h
    mov di,0h
    cmp al,px[di]
    je nxt7X
    jne winning5X
    nxt7X:
        mov di,3h
        cmp px[di], al
        je nxt8X
        jne winning5X
    nxt8X:
        mov di,6h
        cmp px[di], al
        je add20pointsX   
        jne winning5X

 winning5X:
    mov al,1h
    mov di,1h
    cmp al,px[di]
    je nxt9X
    jne winning6X
    nxt9X:
        mov di,4h
        cmp px[di], al
        je nxt10X
        jne winning6X
    nxt10X:
        mov di,7h
        cmp px[di], al
        je add20pointsX
        jne winning6X  

 winning6X:
    mov al,1h
    mov di,2h
    cmp al,px[di]
    je nxt11X
    jne winning7X
    nxt11X:
        mov di,5h
        cmp px[di], al
        je nxt12X:
        jne winning7X
    nxt12X:
        mov di,8h
        cmp px[di], al
        jne winning7X
        je add20pointsX
        jne winning7X
         
 winning7X:
    mov al,1h
    mov di,0h
    cmp al,px[di]
    je nxt13X
    jne winning8X
    nxt13X:
        mov di,4h
        cmp px[di], al
        je nxt14X:
        jne winning8X
    nxt14X:
        mov di,8h
        cmp px[di], al
        je add20pointsX  
        jne winning8X

 winning8X:
    mov al,1h
    mov di,2h
    cmp al,px[di]
    je nxt15X
    jne playerOturn
    nxt15X:
        mov di,4h
        cmp px[di], al
        je nxt16X:
        jne playerOturn
    nxt16X:
        mov di,6h
        cmp px[di], al
        je  add20pointsX
        jne playerOturn       
    
playerOturn: ;Turno del jugador O 
turnO
   
cmp contador, 09h
je errase_matrix  

cmp so,32h
jge ending
 
click2: ;Click del jugador O
mov ax,03h
int 33h  

cmp bx,01h 
je BTNR2P1 

cmp bx,02h
je sub5pointsO
 
jmp click2

;Sumas y restas de puntos del jugador O

sub1pointO:
    dec so 
    beep  
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    mov ah, 0ch 
    mov al, 03h 
    mov cx, 98h 
    mov dx, 40h 
    int 10h  
    jmp printOscore 
 
sub5pointsO:
    sub so,5 
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    jmp printOscore   

sub10pointsO:
    sub so,10
    beep  
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    mov ah, 0ch 
    mov al, 03h 
    mov cx, 98h 
    mov dx, 40h 
    int 10h
    jmp printOscore 
            
add20pointsO:
    add so,20
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    jmp printOscore2 
    verification_playerO:
        cmp so,50
        jge winningO 
        jmp errase_matrix            

;Acciones de presionar cualquier boton del jugador O
                                  
 BTNR2P1: ;Acronimo de Algoritmo: Boton Rendicion 2 Parte N (BTNR2PN)
    cmp cx,142h
    jae BTNR2P2
    jmp BTNA2P1
 BTNR2P2:
    cmp dx,1A1h
    jae BTNR2P3  
    jmp BTNA2P1
 BTNR2P3: 
    cmp cx,1FEh
    jbe BTNR2P4  
    jmp BTNA2P1
 BTNR2P4: 
    cmp dx,1CFh 
    jbe BTNR2P5 
    jmp BTNA2P1
 BTNR2P5:
    jmp winningX
    
 BTNA2P1: ;Acronimo de Algoritmo: Boton Again 2 Part N(BTNA2PN)
    cmp cx,222h
    jae BTNA2P2
    jmp BTNX2P1
 BTNA2P2:
    cmp dx,1A1h
    jae BTNA2P3  
    jmp BTNX2P1
 BTNA2P3: 
    cmp cx,2DEh
    jbe BTNA2P4  
    jmp BTNX2P1
 BTNA2P4: 
    cmp dx,1CFh 
    jbe BTNA2P5 
    jmp BTNX2P1
 BTNA2P5:
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx 
    mov sx,00h
    mov so,00h 
    mov ah,00h
    mov al,03h
    int 10h 
    jmp inicio
  
 BTNX2P1: ;Acronimo de Algoritmo: Boton X 2 Parte N (BTNX2PN)
    cmp cx,302
    jae BTNX2P2
    jmp CO1P1
 BTNX2P2:
    cmp dx,1A1h
    jae BTNX2P3  
    jmp CO1P1
 BTNX2P3: 
    cmp cx,3BEh
    jbe BTNX2P4  
    jmp CO1P1
 BTNX2P4: 
    cmp dx,1CFh 
    jbe BTNX2P5 
    jmp CO1P1
 BTNX2P5:
    jmp ending
 
 CO1P1: ;Acronimo de Algoritmo: Click O N Parte N (CONPN)
    cmp cx,132h
    jae CO1P2
    jmp CO2P1
 CO1P2:
    cmp dx,121h
    jae CO1P3  
    jmp CO2P1
 CO1P3: 
    cmp cx,20Eh
    jbe CO1P4  
    jmp CO2P1
 CO1P4: 
    cmp dx,18Eh 
    jbe CO1P5 
    jmp CO2P1
 CO1P5:    
    mov si,00h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_1  
    inc contador
    jmp winning1O
    
 CO2P1:
    cmp cx,212h
    jae CO2P2
    jmp CO3P1
 CO2P2:
    cmp dx,121h
    jae CO2P3  
    jmp CO3P1
 CO2P3: 
    cmp cx,2EEh
    jbe CO2P4  
    jmp CO3P1
 CO2P4: 
    cmp dx,18Eh 
    jbe CO2P5 
    jmp CO3P1
 CO2P5:       
    mov si,01h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_2 
    inc contador
    jmp winning1O
    
 CO3P1:
    cmp cx,2F2h
    jae CO3P2
    jmp CO4P1
 CO3P2:
    cmp dx,121h
    jae CO3P3  
    jmp CO4P1
 CO3P3: 
    cmp cx,3CEh
    jbe CO3P4  
    jmp CO4P1
 CO3P4: 
    cmp dx,18Eh 
    jbe CO3P5 
    jmp CO4P1
 CO3P5:    
    mov si,02h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_3 
    inc contador 
    jmp winning1O
    
 CO4P1:
    cmp cx,132h
    jae CO4P2
    jmp CO5P1
 CO4P2:
    cmp dx,0B1h
    jae CO4P3  
    jmp CO5P1
 CO4P3: 
    cmp cx,20Eh
    jbe CO4P4  
    jmp CO5P1
 CO4P4: 
    cmp dx,11Eh 
    jbe CO4P5 
    jmp CO5P1
 CO4P5:         
    mov si,03h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_4 
    inc contador
    jmp winning1O
    
 CO5P1:
    cmp cx,212h
    jae CO5P2
    jmp CO6P1
 CO5P2:
    cmp dx,0B1h
    jae CO5P3  
    jmp CO6P1
 CO5P3: 
    cmp cx,2EEh
    jbe CO5P4  
    jmp CO6P1
 CO5P4: 
    cmp dx,11Eh 
    jbe CO5P5 
    jmp CO6P1
 CO5P5:     
    mov si,04h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_5
    inc contador    
    jmp winning1O

 CO6P1:
    cmp cx,2F2h
    jae CO6P2
    jmp CO7P1
 CO6P2:
    cmp dx,0B1h
    jae CO6P3  
    jmp CO7P1
 CO6P3: 
    cmp cx,3CEh
    jbe CO6P4  
    jmp CO7P1
 CO6P4: 
    cmp dx,11Eh 
    jbe CO6P5 
    jmp CO7P1
 CO6P5:    
    mov si,05h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_6
    inc contador 
    jmp winning1O
    
 CO7P1:
    cmp cx,132h
    jae CO7P2
    jmp CO8P1
 CO7P2:
    cmp dx,41h
    jae CO7P3  
    jmp CO8P1
 CO7P3: 
    cmp cx,20Eh
    jbe CO7P4  
    jmp CO8P1
 CO7P4: 
    cmp dx,0AEh 
    jbe CO7P5 
    jmp CO8P1
 CO7P5:     
    mov si,06h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_7 
    inc contador
    jmp winning1O
    
 CO8P1:
    cmp cx,212h
    jae CO8P2
    jmp CO9P1
 CO8P2:
    cmp dx,41h
    jae CO8P3  
    jmp CO9P1
 CO8P3: 
    cmp cx,2EEh
    jbe CO8P4  
    jmp CO9P1
 CO8P4: 
    cmp dx,0AEh 
    jbe CO8P5 
    jmp CO9P1
 CO8P5:      
    mov si,07h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h
    O_Posicion_8
    inc contador
    jmp winning1O   

 CO9P1:
    cmp cx,2F2h
    jae CO9P2
    jmp OGZP1O
 CO9P2:
    cmp dx,41h
    jae CO9P3  
    jmp OGZP1O
 CO9P3: 
    cmp cx,3CEh
    jbe CO9P4  
    jmp OGZP1O
 CO9P4: 
    cmp dx,0AEh 
    jbe CO9P5 
    jmp OGZP1O
 CO9P5:     
    mov si,08h
    cmp pt[si],01h
    je sub10pointsO
    mov po[si],01h
    mov pt[si],01h
    mov mtxp[si],02h     
    O_Posicion_9 
    inc contador  
    jmp winning1O
    
 OGZP1O: ;Acronimo de Algoritmo: Out Game Zone Part N O (OGZPNO)
    cmp cx, 130h
    jb OGZP3O
 OGZP2O:
    cmp cx,130h
    ja OGZP3O     
 OGZP3O:
    cmp dx,40h
    jb OGZP5O
 OGZP4O:
    cmp dx,40h
    ja OGZP5O
 OGZP5O:
    cmp cx,3D0h
    jb OGZP7O
 OGZP6O:
    cmp cx,3D0h
    ja OGZP7O      
 OGZP7O: 
    cmp dx,190h
    jb sub1pointO
 OGZP8O:
    cmp dx,190h
    ja sub1pointO    
         
;Verificadores de posiciones ganadoras del jugador O 

winning1O:
    mov al,1h
    mov di,0h
    cmp al,po[di]
    je nxt1O
    jne winning2O
    nxt1O: ;Acronimo de Algoritmo: Next N O(nxtNO)
        mov di,1h
        cmp po[di], al
        je nxt2O
        jne winning2O
    nxt2O:
        mov di,2h
        cmp po[di], al
        je add20pointsO
        jne winning2O
        
 winning2O: 
    mov al,1h
    mov di,3h
    cmp al,po[di]
    je nxt3O
    jne winning3O 
    nxt3O:
        mov di,4h
        cmp po[di], al
        je nxt4O
        jne winning3O
    nxt4O:
        mov di,5h
        cmp po[di], al
        je add20pointsO
        jne winning3O   
          
 winning3O:
    mov al,1h
    mov di,6h
    cmp al,po[di]
    je nxt5O
    jne winning4O 
    nxt5O:
        mov di,7h
        cmp po[di], al
        je nxt6O
        jne winning4O
    nxt6O:
        mov di,8h
        cmp po[di], al
        je add20pointsO 
        jne winning4O 

 winning4O:
    mov al,1h
    mov di,0h
    cmp al,po[di]
    je nxt7O
    jne winning5O
    nxt7O:
        mov di,3h
        cmp po[di], al
        je nxt8O
        jne winning5O
    nxt8O:
        mov di,6h
        cmp po[di], al
        je add20pointsO   
        jne winning5O

 winning5O:
    mov al,1h
    mov di,1h
    cmp al,po[di]
    je nxt9O
    jne winning6O
    nxt9O:
        mov di,4h
        cmp po[di], al
        je nxt10O
        jne winning6O
    nxt10O:
        mov di,7h
        cmp po[di], al
        je add20pointsO
        jne winning6O  

 winning6O:
    mov al,1h
    mov di,2h
    cmp al,po[di]
    je nxt11O
    jne winning7O
    nxt11O:
        mov di,5h
        cmp po[di], al
        je nxt12O:
        jne winning7O
    nxt12O:
        mov di,8h
        cmp po[di], al
        je add20pointsO
        jne winning7O
         
 winning7O:
    mov al,1h
    mov di,0h
    cmp al,po[di]
    je nxt13O
    jne winning8O
    nxt13O:
        mov di,4h
        cmp po[di], al
        je nxt14O:
        jne winning8O
    nxt14O:
        mov di,8h
        cmp po[di], al
        je add20pointsO  
        jne winning8O

 winning8O:
    mov al,1h
    mov di,2h
    cmp al,po[di]
    je nxt15O
    jne playerXturn
    nxt15O:
        mov di,4h
        cmp po[di], al
        je nxt16O:
        jne playerXturn
    nxt16O:
        mov di,6h
        cmp po[di], al
        je add20pointsO  
        jne playerXturn    

;Borradores de posiciones jugadas

EX_Posicion_1 macro  
    mov ah, 0ch 
    mov al, 00h
    mov cx, 0A8h
    mov dx, 130h 
    int 10h
    
    EXP1: ;Acronimo de Dibujo: Ex X Posicion N  (EXPN)
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 0F8h
        jne EXP1
        cmp dx, 180h
        jne EXP1
        
    mov cx, 0A8h
    mov dx, 180h
    int 10h
    
    EXP12:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 0F8h
        jne EXP12
        cmp dx, 130h
        jne EXP12    
    endm 

EX_Posicion_2 macro 
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 118h
    mov dx, 130h 
    int 10h
    
    EXP2:  
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 168h
        jne EXP2
        cmp dx, 180h
        jne EXP2
        
    mov cx, 118h
    mov dx, 180h
    int 10h
    
    EXP21:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 168h
        jne EXP21
        cmp dx, 130h
        jne EXP21    
    endm

EX_Posicion_3 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 188h
    mov dx, 130h 
    int 10h
    
    EXP3:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 1D8h
        jne EXP3
        cmp dx, 180h
        jne EXP3
        
    mov cx, 188h
    mov dx, 180h
    int 10h
    
    EXP31:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 1D8h
        jne EXP31
        cmp dx, 130h
        jne EXP31    
    endm

EX_Posicion_4 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 0A8h
    mov dx, 0C0h 
    int 10h
    
    EXP4:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 0F8h
        jne EXP4
        cmp dx, 110h
        jne EXP4
        
    mov cx, 0A8h
    mov dx, 110h
    int 10h
    
    EXP41:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 0F8h
        jne EXP41
        cmp dx, 0C0h
        jne EXP41    
    endm

EX_Posicion_5 macro 
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 118h
    mov dx, 0C0h 
    int 10h
    
    EXP5:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 168h
        jne EXP5
        cmp dx, 110h
        jne EXP5
        
    mov cx, 118h
    mov dx, 110h
    int 10h
    
    EXP51:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 168h
        jne EXP51
        cmp dx, 0C0h
        jne EXP51    
    endm
    
EX_Posicion_6 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 188h
    mov dx, 0C0h 
    int 10h
    
    EXP6:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 1D8h
        jne EXP6
        cmp dx, 110h
        jne EXP6
        
    mov cx, 188h
    mov dx, 110h
    int 10h
    
    EXP61:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 1D8h
        jne EXP61
        cmp dx, 0C0h
        jne EXP61    
    endm 

EX_Posicion_7 macro
    mov ah, 0ch 
    mov al, 00h  
    mov cx, 0A8h
    mov dx, 50h 
    int 10h
    
    EXP7:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 0F8h
        jne EXP7
        cmp dx, 0A0h
        jne EXP7
        
    mov cx, 0A8h
    mov dx, 0A0h
    int 10h
    
    EXP71:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 0F8h
        jne EXP71
        cmp dx, 50h
        jne EXP71    
    endm  
        
EX_Posicion_8 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 118h
    mov dx, 50h 
    int 10h
    
    EXP8:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 168h
        jne EXP8
        cmp dx, 0A0h
        jne EXP8
        
    mov cx, 118h
    mov dx, 0A0h
    int 10h
    
    EXP81:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 168h
        jne EXP81
        cmp dx, 50h
        jne EXP81    
    endm          
        
EX_Posicion_9 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 188h
    mov dx, 50h 
    int 10h
    
    EXP9:
        inc cx 
        int 10h
        inc dx
        int 10h
        cmp cx, 1D8h
        jne EXP9
        cmp dx, 0A0h
        jne EXP9
        
    mov cx, 188h
    mov dx, 0A0h
    int 10h
    
    EXP91:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx, 1D8h
        jne EXP91
        cmp dx, 50h
        jne EXP91    
    endm          
        
EO_Posicion_1 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 0E0h
    mov dx, 130h
    int 10h
    EOP1: ;Acronimo de Dibujo: Ex O Posicion N  (EOPN)
        dec cx
        int 10h
        cmp cx,0C0h  
        jne EOP1
    mov cx, 0C0h
    mov dx, 130h     
    EOP12:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,0A8h
        jne EOP12
        cmp dx,148h 
        jne EOP12
    mov cx, 0A8h
    mov dx, 148h
    int 10h
    EOP13:
        inc dx
        int 10h
        cmp dx,168h
        jne EOP13
    mov cx, 0A8h
    mov dx, 168h    
    EOP14:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 0C0h
        jne EOP14
        cmp dx, 180h
        jne EOP14            
    mov cx, 0C0h
    mov dx, 180h
    int 10h  
    EOP15:
        inc cx
        int 10h
        cmp cx,0E0h
        jne EOP15
    mov cx, 0E0h
    mov dx, 180h
    EOP16:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,0F8h
        jne EOP16
        cmp dx,168h
        jne EOP16     
    mov cx, 0F8h
    mov dx, 168h
    int 10h
    EOP17:
        dec dx
        int 10h
        cmp dx,148h
        jne EOP17
    mov cx, 0F8h
    mov dx, 148h
    EOP18:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,0E0h
        jne EOP18
        cmp dx,130h
        jne EOP18
    endm 
              
EO_Posicion_2 macro
    mov ah, 0ch 
    mov al, 00h    
    mov cx, 150h
    mov dx, 130h
    int 10h
    EOP2: 
        dec cx
        int 10h
        cmp cx,130h  
        jne EOP2
    mov cx, 130h
    mov dx, 130h     
    EOP22:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,118h
        jne EOP22
        cmp dx,148h 
        jne EOP22
    mov cx, 118h
    mov dx, 148h
    int 10h
    EOP23:
        inc dx
        int 10h
        cmp dx,168h
        jne EOP23
    mov cx, 118h
    mov dx, 168h    
    EOP24:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 130h
        jne EOP24
        cmp dx, 180h
        jne EOP24            
    mov cx, 130h
    mov dx, 180h
    int 10h  
    EOP25:
        inc cx
        int 10h
        cmp cx,150h
        jne EOP25
    mov cx, 150h
    mov dx, 180h
    EOP26:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,168h
        jne EOP26
        cmp dx,168h
        jne EOP26     
    mov cx, 168h
    mov dx, 168h
    int 10h
    EOP27:
        dec dx
        int 10h
        cmp dx,148h
        jne EOP27
    mov cx, 168h
    mov dx, 148h
    EOP28:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,150h
        jne EOP28
        cmp dx,130h
        jne EOP28    
    endm 

EO_Posicion_3 macro
    mov ah, 0ch 
    mov al, 00h 
    mov cx, 1C0h
    mov dx, 130h
    int 10h
    EOP3: 
        dec cx
        int 10h
        cmp cx,1A0h  
        jne EOP3
    mov cx, 1A0h
    mov dx, 130h     
    EOP32:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,188h
        jne EOP32
        cmp dx,148h 
        jne EOP32
    mov cx, 188h
    mov dx, 148h
    int 10h
    EOP33:
        inc dx
        int 10h
        cmp dx,168h
        jne EOP33
    mov cx, 188h
    mov dx, 168h    
    EOP34:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 1A0h
        jne EOP34
        cmp dx, 180h
        jne EOP34            
    mov cx, 1A0h
    mov dx, 180h
    int 10h  
    EOP35:
        inc cx
        int 10h
        cmp cx,1C0h
        jne EOP35
    mov cx, 1C0h
    mov dx, 180h
    EOP36:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,1D8h
        jne EOP36
        cmp dx,168h
        jne EOP36     
    mov cx, 1D8h
    mov dx, 168h
    int 10h
    EOP37:
        dec dx
        int 10h
        cmp dx,148h
        jne EOP37
    mov cx, 1D8h
    mov dx, 148h
    EOP38:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,1C0h
        jne EOP38
        cmp dx,130h
        jne EOP38    
    endm  
  
EO_Posicion_4 macro
    mov ah, 0ch
    mov al, 00h    
    mov cx, 0E0h
    mov dx, 0C0h
    int 10h
    EOP4: 
        dec cx
        int 10h
        cmp cx,0C0h  
        jne EOP4
    mov cx, 0C0h
    mov dx, 0C0h     
    EOP42:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,0A8h
        jne EOP42
        cmp dx,0D8h 
        jne EOP42
    mov cx, 0A8h
    mov dx, 0D8h
    int 10h
    EOP43:
        inc dx
        int 10h
        cmp dx,0F8h
        jne EOP43
    mov cx, 0A8h
    mov dx, 0F8h    
    EOP44:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 0C0h
        jne EOP44
        cmp dx, 110h
        jne EOP44            
    mov cx, 0C0h
    mov dx, 110h
    int 10h  
    EOP45:
        inc cx
        int 10h
        cmp cx,0E0h
        jne EOP45
    mov cx, 0E0h
    mov dx, 110h
    EOP46:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,0F8h
        jne EOP46
        cmp dx,0F8h
        jne EOP46     
    mov cx, 0F8h
    mov dx, 0F8h
    int 10h
    EOP47:
        dec dx
        int 10h
        cmp dx,0D8h
        jne EOP47
    mov cx, 0F8h
    mov dx, 0D8h
    EOP48:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,0E0h
        jne EOP48
        cmp dx,0C0h
        jne EOP48    
    endm 

EO_Posicion_5 macro
    mov ah, 0ch 
    mov al, 00h   
    mov cx, 150h
    mov dx, 0C0h
    int 10h
    EOP5: 
        dec cx
        int 10h
        cmp cx,130h  
        jne EOP5
    mov cx, 130h
    mov dx, 0C0h     
    EOP52:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,118h
        jne EOP52
        cmp dx,0D8h 
        jne EOP52
    mov cx, 118h
    mov dx, 0D8h
    int 10h
    EOP53:
        inc dx
        int 10h
        cmp dx,0F8h
        jne EOP53
    mov cx, 118h
    mov dx, 0F8h    
    EOP54:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 130h
        jne EOP54
        cmp dx, 110h
        jne EOP54            
    mov cx, 130h
    mov dx, 110h
    int 10h  
    EOP55:
        inc cx
        int 10h
        cmp cx,150h
        jne EOP55
    mov cx, 150h
    mov dx, 110h
    EOP56:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,168h
        jne EOP56
        cmp dx,0F8h
        jne EOP56     
    mov cx, 168h
    mov dx, 0F8h
    int 10h
    EOP57:
        dec dx
        int 10h
        cmp dx,0D8h
        jne EOP57
    mov cx, 168h
    mov dx, 0D8h
    EOP58:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,150h
        jne EOP58
        cmp dx,0C0h
        jne EOP58    
    endm   
     
EO_Posicion_6 macro
    mov ah, 0ch 
    mov al, 00h    
    mov cx, 1C0h
    mov dx, 0C0h
    int 10h
    EOP6: 
        dec cx
        int 10h
        cmp cx,1A0h  
        jne EOP6
    mov cx, 1A0h
    mov dx, 0C0h     
    EOP62:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,188h
        jne EOP62
        cmp dx,0D8h 
        jne EOP62
    mov cx, 188h
    mov dx, 0D8h
    int 10h
    EOP63:
        inc dx
        int 10h
        cmp dx,0F8h
        jne EOP63
    mov cx, 188h
    mov dx, 0F8h    
    EOP64:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 1A0h
        jne EOP64
        cmp dx, 110h
        jne EOP64            
    mov cx, 1A0h
    mov dx, 110h
    int 10h  
    EOP65:
        inc cx
        int 10h
        cmp cx,1C0h
        jne EOP65
    mov cx, 1C0h
    mov dx, 110h
    EOP66:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,1D8h
        jne EOP66
        cmp dx,0F8h
        jne EOP66     
    mov cx, 1D8h
    mov dx, 0F8h
    int 10h
    EOP67:
        dec dx
        int 10h
        cmp dx,0D8h
        jne EOP67
    mov cx, 1D8h
    mov dx, 0D8h
    EOP68:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,1C0h
        jne EOP68
        cmp dx,0C0h
        jne EOP68    
    endm      
     
EO_Posicion_7 macro
    mov ah, 0ch 
    mov al, 00h   
    mov cx, 0E0h
    mov dx, 50h
    int 10h
    EOP7: 
        dec cx
        int 10h
        cmp cx,0C0h  
        jne EOP7
    mov cx, 0C0h
    mov dx, 50h     
    EOP72:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,0A8h
        jne EOP72
        cmp dx,68h 
        jne EOP72
    mov cx, 0A8h
    mov dx, 68h
    int 10h
    EOP73:
        inc dx
        int 10h
        cmp dx,88h
        jne EOP73
    mov cx, 0A8h
    mov dx, 88h    
    EOP74:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 0C0h
        jne EOP74
        cmp dx, 0A0h
        jne EOP74            
    mov cx, 0C0h
    mov dx, 0A0h
    int 10h  
    EOP75:
        inc cx
        int 10h
        cmp cx,0E0h
        jne EOP75
    mov cx, 0E0h
    mov dx, 0A0h
    EOP76:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,0F8h
        jne EOP76
        cmp dx,88h
        jne EOP76     
    mov cx, 0F8h
    mov dx, 88h
    int 10h
    EOP77:
        dec dx
        int 10h
        cmp dx,68h
        jne EOP77
    mov cx, 0F8h
    mov dx, 68h
    EOP78:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,0E0h
        jne EOP78
        cmp dx,50h
        jne EOP78    
    endm      
     
EO_Posicion_8 macro
    mov ah, 0ch 
    mov al, 00h    
    mov cx, 150h
    mov dx, 50h
    int 10h
    EOP8: 
        dec cx
        int 10h
        cmp cx,130h  
        jne EOP8
    mov cx, 130h
    mov dx, 50h     
    EOP82:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,118h
        jne EOP82
        cmp dx,68h 
        jne EOP82
    mov cx, 118h
    mov dx, 68h
    int 10h
    EOP83:
        inc dx
        int 10h
        cmp dx,88h
        jne EOP83
    mov cx, 118h
    mov dx, 88h    
    EOP84:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 130h
        jne EOP84
        cmp dx, 0A0h
        jne EOP84            
    mov cx, 130h
    mov dx, 0A0h
    int 10h  
    EOP85:
        inc cx
        int 10h
        cmp cx,150h
        jne EOP85
    mov cx, 150h
    mov dx, 0A0h
    EOP86:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,168h
        jne EOP86
        cmp dx,88h
        jne EOP86     
    mov cx, 168h
    mov dx, 88h
    int 10h
    EOP87:
        dec dx
        int 10h
        cmp dx,68h
        jne EOP87
    mov cx, 168h
    mov dx, 68h
    EOP88:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,150h
        jne EOP88
        cmp dx,50h
        jne EOP88    
    endm      
     
EO_Posicion_9 macro
    mov ah, 0ch 
    mov al, 00h    
    mov cx, 1C0h
    mov dx, 50h
    int 10h
    EOP9: 
        dec cx
        int 10h
        cmp cx,1A0h  
        jne EOP9
    mov cx, 1A0h
    mov dx, 50h     
    EOP92:
        dec cx
        int 10h
        inc dx 
        int 10h
        cmp cx,188h
        jne EOP92
        cmp dx,68h 
        jne EOP92
    mov cx, 188h
    mov dx, 68h
    int 10h
    EOP93:
        inc dx
        int 10h
        cmp dx,88h
        jne EOP93
    mov cx, 188h
    mov dx, 88h    
    EOP94:
        inc cx
        int 10h
        inc dx  
        int 10h
        cmp cx, 1A0h
        jne EOP94
        cmp dx, 0A0h
        jne EOP94            
    mov cx, 1A0h
    mov dx, 0A0h
    int 10h  
    EOP95:
        inc cx
        int 10h
        cmp cx,1C0h
        jne EOP95
    mov cx, 1C0h
    mov dx, 0A0h
    EOP96:
        inc cx
        int 10h
        dec dx
        int 10h
        cmp cx,1D8h
        jne EOP96
        cmp dx,88h
        jne EOP96     
    mov cx, 1D8h
    mov dx, 88h
    int 10h
    EOP97:
        dec dx
        int 10h
        cmp dx,68h
        jne EOP97
    mov cx, 1D8h
    mov dx, 68h
    EOP98:
        dec cx
        int 10h 
        dec dx
        int 10h
        cmp cx,1C0h
        jne EOP98
        cmp dx,50h
        jne EOP98     
    endm

;Proceso de eliminacion de posiciones en la matriz

errase_matrix:
mov si, 00h
cmp mtxp[si],00h
je errase_matrix_2 
cmp mtxp[si],01h
je errase_matrix_1X 
cmp mtxp[si],02h  
je errase_matrix_1O

errase_matrix_1X:
EX_Posicion_1
jmp errase_matrix_2  

errase_matrix_1O:
EO_Posicion_1
jmp errase_matrix_2 

errase_matrix_2:
mov si, 01h 
cmp mtxp[si],00h
je errase_matrix_3
cmp mtxp[si],01h
je errase_matrix_2X 
cmp mtxp[si],02h  
je errase_matrix_2O

errase_matrix_2X:
EX_Posicion_2
jmp errase_matrix_3  

errase_matrix_2O:
EO_Posicion_2
jmp errase_matrix_3

errase_matrix_3:
mov si, 02h 
cmp mtxp[si],00h
je errase_matrix_4
cmp mtxp[si],01h
je errase_matrix_3X 
cmp mtxp[si],02h  
je errase_matrix_3O

errase_matrix_3X:
EX_Posicion_3
jmp errase_matrix_4  

errase_matrix_3O:
EO_Posicion_3
jmp errase_matrix_4  
  
errase_matrix_4: 
mov si, 03h
cmp mtxp[si],00h
je errase_matrix_5
cmp mtxp[si],01h
je errase_matrix_4X 
cmp mtxp[si],02h  
je errase_matrix_4O

errase_matrix_4X:
EX_Posicion_4
jmp errase_matrix_5  

errase_matrix_4O:
EO_Posicion_4
jmp errase_matrix_5  

errase_matrix_5:
mov si, 04h 
cmp mtxp[si],00h
je errase_matrix_6
cmp mtxp[si],01h
je errase_matrix_5X 
cmp mtxp[si],02h  
je errase_matrix_5O

errase_matrix_5X:
EX_Posicion_5
jmp errase_matrix_6  

errase_matrix_5O:
EO_Posicion_5
jmp errase_matrix_6

errase_matrix_6: 
mov si, 05h
cmp mtxp[si],00h
je errase_matrix_7
cmp mtxp[si],01h
je errase_matrix_6X 
cmp mtxp[si],02h  
je errase_matrix_6O

errase_matrix_6X:
EX_Posicion_6
jmp errase_matrix_7  

errase_matrix_6O:
EO_Posicion_6
jmp errase_matrix_7 

errase_matrix_7: 
mov si, 06h
cmp mtxp[si],00h
je errase_matrix_8
cmp mtxp[si],01h
je errase_matrix_7X 
cmp mtxp[si],02h  
je errase_matrix_7O 
 
errase_matrix_7X:
EX_Posicion_7
jmp errase_matrix_8  

errase_matrix_7O:
EO_Posicion_7
jmp errase_matrix_8   

errase_matrix_8: 
mov si, 07h
cmp mtxp[si],00h
je errase_matrix_9
cmp mtxp[si],01h
je errase_matrix_8X 
cmp mtxp[si],02h  
je errase_matrix_8O

errase_matrix_8X:
EX_Posicion_8
jmp errase_matrix_9  

errase_matrix_8O:
EO_Posicion_8
jmp errase_matrix_9

errase_matrix_9:  
mov si, 08h
cmp mtxp[si],00h
je startgame
cmp mtxp[si],01h
je errase_matrix_9X 
cmp mtxp[si],02h  
je errase_matrix_9O 

errase_matrix_9X:
EX_Posicion_9 
jmp startgame

errase_matrix_9O:
EO_Posicion_9
jmp startgame   
 
;Impresion de puntaje del jugador X en caso 1 (Resta de puntos)
 
printXscore:
    cmp sx,0
    jle print0X 
    jg print1X  
    print0X:
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8     
        int 10h    
        score00X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,zero[si]      
            int 10h   
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score00X
            je click1
       
   print1X: 
   cmp sx,1
   jne print2x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score01X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,one[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score01X
            je click1              
   
   print2X:  
   cmp sx,2
   jne print3x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score02X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,two[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score02X
            je click1 
            
   print3X:  
   cmp sx,3
   jne print4x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score03X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,three[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score03X
            je click1           
            
   print4X:  
   cmp sx,4
   jne print5x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score04X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,four[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score04X
            je click1 
    
   print5X:  
   cmp sx,5
   jne print6x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score05X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,five[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score05X
            je click1  
            
   print6X:  
   cmp sx,6
   jne print7x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score06X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,six[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score06X
            je click1     
                          
   print7X:  
   cmp sx,7
   jne print8x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score07X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,seven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score07X
            je click1 
            
   print8X:  
   cmp sx,8
   jne print9x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8    
        int 10h    
        score08X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score08X
            je click1 
            
   print9X:  
   cmp sx,9
   jne print10x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score09X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,nine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score09X
            je click1
            
  print10X:  
   cmp sx,10
   jne print11x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score10X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,ten[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score10X
            je click1  
            
  print11X:  
   cmp sx,11
   jne print12x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score11X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eleven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score11X
            je click1 
            
 print12X:  
   cmp sx,12
   jne print13x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score12X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twelve[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score12X
            je click1
            
  
  print13X:  
   cmp sx,13
   jne print14x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score13X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score13X
            je click1 
            
   print14X:  
   cmp sx,14
   jne print15x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8   
        int 10h    
        score14X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fourteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score14X
            je click1         
              
  print15X:  
   cmp sx,15
   jne print16x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score15X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fifteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score15X
            je click1   
  
   print16X:  
   cmp sx,16
   jne print17x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score16X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,sixteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score16X
            je click1
            
  print17X:  
  cmp sx,17
  jne print18x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score17X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,seventeen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score17X
            je click1
            
  print18X:  
  cmp sx,18
  jne print19x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score18X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eighteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score18X
            je click1                        
            
  print19X:  
  cmp sx,19
  jne print20x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score19X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,nineteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score19X
            je click1            
            
  print20X:  
  cmp sx,20
  jne print21x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score20X: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,twenty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score20X
            je click1 
            
  print21X:  
  cmp sx,21
  jne print22x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score21X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score21X
            je click1   
            
  print22X:  
  cmp sx,22
  jne print23x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score22X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentytwo[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score22X
            je click1
            
  print23X:  
  cmp sx,23
  jne print24x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score23X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score23X
            je click1 
            
  print24X:  
  cmp sx,24
  jne print25x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score24X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score24X
            je click1      

  print25X:  
  cmp sx,25
  jne print26x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score25X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score25X
            je click1 
            
  print26X:  
  cmp sx,26
  jne print27x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score26X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentysix[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score26X
            je click1      
            
            
  print27X:  
  cmp sx,27
  jne print28x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score27X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score27X
            je click1      
 
  print28X:  
  cmp sx,28
  jne print29x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score28X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score28X
            je click1 

  print29X:  
  cmp sx,29
  jne print30x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score29X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentynine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score29X
            je click1

  print30X:  
  cmp sx,30
  jne print31x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8   
        int 10h    
        score30X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score30X
            je click1
            
  print31X:  
  cmp sx,31
  jne print32x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score31X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score31X
            je click1
 
  print32X:  
  cmp sx,32
  jne print33x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score32X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtytwo[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score32X
            je click1 

  print33X:  
  cmp sx,33
  jne print34x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score33X: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,thirtythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score33X
            je click1

  print34X:  
  cmp sx,34
  jne print35x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8   
        int 10h    
        score34X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score34X
            je click1

  print35X:  
  cmp sx,35
  jne print36x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score35X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score35X
            je click1
            
  print36X:  
  cmp sx,36
  jne print37x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score36X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtysix[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score36X
            je click1            
            
  print37X:  
  cmp sx,37
  jne print38x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score37X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score37X
            je click1
            
  print38X:  
  cmp sx,38
  jne print39x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score38X: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,thirtyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score38X
            je click1 
            
  print39X:  
  cmp sx,39
  jne print40x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score39X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtynine[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score39X
            je click1 
            
  print40X:  
  cmp sx,40
  jne print41x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score40X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,forty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score40X
            je click1  
            
  print41X:  
  cmp sx,41
  jne print42x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score41X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score41X
            je click1 
            
  print42X:  
  cmp sx,42
  jne print43x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score42X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score42X
            je click1 
            
  print43X:  
  cmp sx,43
  jne print44x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score43X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score43X
            je click1 
            
  print44X:  
  cmp sx,44
  jne print45x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score44X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score44X
            je click1 
            
  print45X:  
  cmp sx,45
  jne print46x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score45X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfive[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score45X
            je click1 
            
  print46X:  
  cmp sx,46
  jne print47x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score46X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score46X
            je click1 

  print47X:  
  cmp sx,47
  jne print48x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score47X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score47X
            je click1
  
  print48X:  
  cmp sx,48
  jne print49x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score48X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fortyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score48X
            je click1 
            
  print49X:  
  cmp sx,49
  jne print50x
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score49X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortynine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score49X
            je click1 
            
  print50X:  
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score50X: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fifty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score50X
            je click1
                            
;Impresion de puntaje del jugador X en caso 2 (Suma de puntos)

printXscore2:
    cmp sx,0
    jle print0X2
    jg print1X2
    print0X2:
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score00X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,zero[si]     
            int 10h   
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score00X2
            je verification_playerX
       
   print1X2: 
   cmp sx,1
   jne print2x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8     
        int 10h    
        score01X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,one[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score01X2
            je verification_playerX              
   
   print2X2:  
   cmp sx,2
   jne print3x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8    
        int 10h    
        score02X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,two[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score02X2
            je verification_playerX 
            
   print3X2:  
   cmp sx,3
   jne print4x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score03X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,three[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score03X2
            je verification_playerX           
            
   print4X2:  
   cmp sx,4
   jne print5x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score04X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,four[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score04X2
            je verification_playerX
    
   print5X2:  
   cmp sx,5
   jne print6x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score05X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,five[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score05X2
            je verification_playerX  
            
   print6X2:  
   cmp sx,6
   jne print7x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score06X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,six[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score06X2
            je verification_playerX     
                          
   print7X2:  
   cmp sx,7
   jne print8x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score07X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,seven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score07X2
            je verification_playerX 
            
   print8X2:  
   cmp sx,8
   jne print9x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score08X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,eight[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score08X2
            je verification_playerX 
            
   print9X2:  
   cmp sx,9
   jne print10x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score09X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,nine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score09X2
            je verification_playerX
            
  print10X2:  
   cmp sx,10
   jne print11x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score10X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,ten[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score10X2
            je verification_playerX 
            
  print11X2:  
   cmp sx,11
   jne print12x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score11X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eleven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score11X2
            je verification_playerX
            
 print12X2:  
   cmp sx,12
   jne print13x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8    
        int 10h    
        score12X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twelve[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score12X2
            je verification_playerX
            
  
  print13X2:  
   cmp sx,13
   jne print14x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score13X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score13X2
            je verification_playerX
            
   print14X2:  
   cmp sx,14
   jne print15x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8    
        int 10h    
        score14X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fourteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score14X2
            je verification_playerX        
              
  print15X2:  
   cmp sx,15
   jne print16x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,8    
        int 10h    
        score15X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fifteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score15X2
            je verification_playerX  
  
   print16X2:  
   cmp sx,16
   jne print17x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score16X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,sixteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score16X2
            je verification_playerX
            
  print17X2:  
  cmp sx,17
  jne print18x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score17X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,seventeen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score17X2
            je verification_playerX
            
  print18X2:  
  cmp sx,18
  jne print19x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score18X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eighteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score18X2
            je verification_playerX                      
            
  print19X2:  
  cmp sx,19
  jne print20x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score19X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,nineteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score19X2
            je verification_playerX           
            
  print20X2:  
  cmp sx,20
  jne print21x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score20X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twenty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score20X2
            je verification_playerX 
            
  print21X2:  
  cmp sx,21
  jne print22x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score21X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score21X2
            je verification_playerX   
            
  print22X2:  
  cmp sx,22
  jne print23x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score22X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score22X2
            je verification_playerX
            
  print23X2:  
  cmp sx,23
  jne print24x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8    
        int 10h    
        score23X2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,twentythree[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score23X2
            je verification_playerX
            
  print24X2:  
  cmp sx,24
  jne print25x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score24X2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,twentyfour[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score24X2
            je verification_playerX      

  print25X2:  
  cmp sx,25
  jne print26x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score25X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyfive[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score25X2
            je verification_playerX 
            
  print26X2:  
  cmp sx,26
  jne print27x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score26X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentysix[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score26X2
            je verification_playerX      
            
            
  print27X2:  
  cmp sx,27
  jne print28x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score27X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyseven[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score27X2
            je verification_playerX     
 
  print28X2:  
  cmp sx,28
  jne print29x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score28X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score28X2
            je verification_playerX 

  print29X2:  
  cmp sx,29
  jne print30x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score29X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentynine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score29X2
            je verification_playerX   

  print30X2:  
  cmp sx,30
  jne print31x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score30X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score30X2
            je verification_playerX
            
  print31X2:  
  cmp sx,31
  jne print32x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score31X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score31X2
            je verification_playerX
 
  print32X2:  
  cmp sx,32
  jne print33x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score32X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirtytwo[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score32X2
            je verification_playerX 

  print33X2:  
  cmp sx,33
  jne print34x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score33X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtythree[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score33X2
            je verification_playerX

  print34X2:  
  cmp sx,34
  jne print35x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8    
        int 10h    
        score34X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirtyfour[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score34X2
            je verification_playerX

  print35X2:  
  cmp sx,35
  jne print36x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score35X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score35X2
            je verification_playerX
            
  print36X2:  
  cmp sx,36
  jne print37x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8   
        int 10h    
        score36X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score36X2
            je verification_playerX           
            
  print37X2:  
  cmp sx,37
  jne print38x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score37X2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,thirtyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score37X2
            je verification_playerX
            
  print38X2:  
  cmp sx,38
  jne print39x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score38X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirtyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score38X2
            je verification_playerX 
            
  print39X2:  
  cmp sx,39
  jne print40x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score39X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtynine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score39X2
            je verification_playerX 
            
  print40X2:  
  cmp sx,40
  jne print41x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score40X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,forty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score40X2
            je verification_playerX  
            
  print41X2:  
  cmp sx,41
  jne print42x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score41X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fortyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score41X2
            je verification_playerX 
            
  print42X2:  
  cmp sx,42
  jne print43x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8   
        int 10h    
        score42X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score42X2
            je verification_playerX 
            
  print43X2:  
  cmp sx,43
  jne print44x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score43X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fortythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score43X2
            je verification_playerX 
            
  print44X2:  
  cmp sx,44
  jne print45x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score44X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score44X2
            je verification_playerX 
            
  print45X2:  
  cmp sx,45
  jne print46x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8    
        int 10h    
        score45X2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,fortyfive[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score45X2
            je verification_playerX 
            
  print46X2:  
  cmp sx,46
  jne print47x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,8     
        int 10h    
        score46X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score46X2
            je verification_playerX 

  print47X2:  
  cmp sx,47
  jne print48x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score47X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score47X2
            je verification_playerX
  
  print48X2:  
  cmp sx,48
  jne print49x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score48X2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,fortyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score48X2
            je verification_playerX
            
  print49X2:  
  cmp sx,49
  jne print50x2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8    
        int 10h    
        score49X2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortynine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score49X2
            je verification_playerX
            
  print50X2:  
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,8     
        int 10h    
        score50X2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,fifty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score50X2
            je verification_playerX
                          
;Impresion de puntaje del jugador O en caso 1 (Resta de puntos)

printOscore:    
    cmp sO,0
    jle print0O
    jg print1O  
    print0O:
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score00O: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,zero[si]      
            int 10h   
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score00O
            je click2
       
   print1O: 
   cmp sO,1
   jne print2O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70      
        int 10h    
        score01O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,one[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score01O
            je click2 
            
   
   print2O:  
   cmp sO,2
   jne print3O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score02O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,two[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score02O
            je click2
            
   print3O:  
   cmp sO,3
   jne print4O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score03O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,three[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score03O
            je click2        
            
   print4O:  
   cmp sO,4
   jne print5O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score04O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,four[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score04O
            je click2
    
   print5O:  
   cmp sO,5
   jne print6O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score05O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,five[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score05O
            je click2
            
   print6O:  
   cmp sO,6
   jne print7O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score06O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,six[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score06O
            je click2 
                          
   print7O:  
   cmp sO,7
   jne print8O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70     
        int 10h    
        score07O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,seven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score07O
            je click2
            
   print8O:  
   cmp sO,8
   jne print9O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70   
        int 10h    
        score08O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score08O
            je click2 
            
   print9O:  
   cmp sO,9
   jne print10O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score09O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,nine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score09O
            je click2
            
   print10O:  
   cmp sO,10
   jne print11O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score10O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,ten[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score10O
            je click2  
            
   print11O:  
   cmp sO,11
   jne print12O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score11O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eleven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score11O
            je click2
            
  print12O:  
  cmp sO,12
  jne print13O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score12O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twelve[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score12O
            je click2
            
  
   print13O:  
   cmp sO,13
   jne print14O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score13O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score13O
            je click2 
            
   print14O:  
   cmp sO,14
   jne print15O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score14O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fourteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score14O
            je click2         
              
  print15O:  
   cmp sO,15
   jne print16O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score15O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fifteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score15O
            je click2  
  
   print16O:  
   cmp sO,16
   jne print17O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score16O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,sixteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score16O
            je click2
            
  print17O:  
  cmp sO,17
  jne print18O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score17O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,seventeen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score17O
            je click2
            
  print18O:  
  cmp sO,18
  jne print19O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score18O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,eighteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score18O
            je click2                        
            
  print19O:  
  cmp sO,19
  jne print20O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score19O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,nineteen[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score19O
            je click2            
            
  print20O:  
  cmp sO,20
  jne print21O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70     
        int 10h    
        score20O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twenty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score20O
            je click2
            
  print21O:  
  cmp sO,21
  jne print22O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score21O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score21O
            je click2   
            
  print22O:  
  cmp sO,22
  jne print23O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score22O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score22O
            je click2
            
  print23O:  
  cmp sO,23
  jne print24O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score23O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score23O
            je click2 
            
  print24O:  
  cmp sO,24
  jne print25O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score24O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyfour[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score24O
            je click2      

  print25O:  
  cmp sO,25
  jne print26O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score25O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyfive[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score25O
            je click2 
            
  print26O:  
  cmp sO,26
  jne print27O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score26O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score26O
            je click2      
            
            
  print27O:  
  cmp sO,27
  jne print28O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score27O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score27O
            je click2      
 
  print28O:  
  cmp sO,28
  jne print29O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score28O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyeight[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score28O
            je click2 

  print29O:  
  cmp sO,29
  jne print30O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score29O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentynine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score29O
            je click2

  print30O:  
  cmp sO,30
  jne print31O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score30O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score30O
            je click2
            
  print31O:  
  cmp sO,31
  jne print32O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score31O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score31O
            je click2
 
  print32O:  
  cmp sO,32
  jne print33O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score32O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score32O
            je click2

  print33O:  
  cmp sO,33
  jne print34O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score33O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirtythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score33O
            je click2

  print34O:  
  cmp sO,34
  jne print35O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score34O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score34O
            je click2

  print35O:  
  cmp sO,35
  jne print36O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score35O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score35O
            je click2
            
  print36O:  
  cmp sO,36
  jne print37O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score36O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score36O
            je click2          
            
  print37O:  
  cmp sO,37
  jne print38O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score37O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirtyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score37O
            je click2
            
  print38O:  
  cmp sO,38
  jne print39O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score38O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyeight[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score38O
            je click2
            
  print39O:  
  cmp sO,39
  jne print40O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score39O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtynine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score39O
            je click2
            
  print40O:  
  cmp sO,40
  jne print41O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score40O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,forty[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score40O
            je click2 
            
  print41O:  
  cmp sO,41
  jne print42O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score41O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyone[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score41O
            je click2 
            
  print42O:  
  cmp sO,42
  jne print43O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score42O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score42O
            je click2 
            
  print43O:  
  cmp sO,43
  jne print44O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score43O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score43O
            je click2 
            
  print44O:  
  cmp sO,44
  jne print45O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70     
        int 10h    
        score44O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score44O
            je click2
            
  print45O:  
  cmp sO,45
  jne print46O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score45O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score45O
            je click2 
            
  print46O:  
  cmp sO,46
  jne print47O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score46O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fortysix[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score46O
            je click2 

  print47O:  
  cmp sO,47
  jne print48O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score47O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyseven[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score47O
            je click2
  
  print48O:  
  cmp sO,48
  jne print49O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score48O: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,fortyeight[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score48O
            je click2 
            
  print49O:  
  cmp sO,49
  jne print50O
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score49O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fortynine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score49O
            je click2 
            
  print50O:  
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score50O: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fifty[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score50O
            je click2 
                           
;Impresion de puntaje del jugador O en caso 2 (Suma de puntos)

printOscore2:
    cmp sO,0
    jle print0O2
    jg print1O2  
    print0O2:
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score00O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,zero[si]      
            int 10h   
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score00O2
            je verification_playerO
       
   print1O2: 
   cmp sO,1
   jne print2O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70      
        int 10h    
        score01O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,one[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score01O2
            je verification_playerO 
            
   
   print2O2:  
   cmp sO,2
   jne print3O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score02O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,two[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score02O2
            je verification_playerO
            
   print3O2:  
   cmp sO,3
   jne print4O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score03O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,three[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score03O2
            je verification_playerO        
            
   print4O2:  
   cmp sO,4
   jne print5O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85 
        mov dl,70   
        int 10h    
        score04O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,four[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score04O2
            je verification_playerO
    
   print5O2:  
   cmp sO,5
   jne print6O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score05O2: 
            mov ah,09h
            mov bl,0eh 
            mov cx,1     
            mov al,five[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score05O2
            je verification_playerO
            
   print6O2:  
   cmp sO,6
   jne print7O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score06O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,six[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score06O2
            je verification_playerO 
                          
   print7O2:  
   cmp sO,7
   jne print8O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score07O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,seven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score07O2
            je verification_playerO
            
   print8O2:  
   cmp sO,8
   jne print9O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score08O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,eight[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score08O2
            je verification_playerO 
            
   print9O2:  
   cmp sO,9
   jne print10O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score09O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,nine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score09O2
            je verification_playerO
            
   print10O2:  
   cmp sO,10
   jne print11O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score10O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,ten[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score10O2
            je verification_playerO  
            
   print11O2:  
   cmp sO,11
   jne print12O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85 
        mov dl,70   
        int 10h    
        score11O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,eleven[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score11O2
            je verification_playerO
            
  print12O2:  
  cmp sO,12
  jne print13O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score12O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,twelve[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score12O2
            je verification_playerO
            
  
   print13O2:  
   cmp sO,13
   jne print14O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score13O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score13O2
            je verification_playerO 
            
   print14O2:  
   cmp sO,14
   jne print15O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score14O2: 
            mov ah,09h
            mov bl,0eh 
            mov cx,1      
            mov al,fourteen[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score14O2
            je verification_playerO        
              
  print15O2:  
   cmp sO,15
   jne print16O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70 
        int 10h    
        score15O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1    
            mov al,fifteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score15O2
            je verification_playerO  
  
   print16O2:  
   cmp sO,16
   jne print17O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85 
        mov dl,70  
        int 10h    
        score16O2: 
            mov ah,09h
            mov bl,0eh 
            mov cx,1   
            mov al,sixteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score16O2
            je verification_playerO
            
  print17O2:  
  cmp sO,17
  jne print18O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85 
        mov dl,70  
        int 10h    
        score17O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1    
            mov al,seventeen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score17O2
            je verification_playerO
            
  print18O2:  
  cmp sO,18
  jne print19O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score18O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,eighteen[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score18O2
            je verification_playerO                        
            
  print19O2:  
  cmp sO,19
  jne print20O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score19O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,nineteen[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score19O2
            je verification_playerO            
            
  print20O2:  
  cmp sO,20
  jne print21O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score20O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twenty[si]    
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score20O2
            je verification_playerO
            
  print21O2:  
  cmp sO,21
  jne print22O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score21O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,twentyone[si]  
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score21O2
            je verification_playerO   
            
  print22O2:  
  cmp sO,22
  jne print23O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85 
        mov dl,70   
        int 10h    
        score22O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,twentytwo[si]  
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score22O2
            je verification_playerO
            
  print23O2:  
  cmp sO,23
  jne print24O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score23O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentythree[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score23O2
            je verification_playerO 
            
  print24O2:  
  cmp sO,24
  jne print25O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score24O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,twentyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score24O2
            je verification_playerO      

  print25O2:  
  cmp sO,25
  jne print26O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score25O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,twentyfive[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score25O2
            je verification_playerO 
            
  print26O2:  
  cmp sO,26
  jne print27O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score26O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score26O2
            je verification_playerO      
            
            
  print27O2:  
  cmp sO,27
  jne print28O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70  
        int 10h    
        score27O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentyseven[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score27O2
            je verification_playerO      
 
  print28O2:  
  cmp sO,28
  jne print29O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score28O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,twentyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score28O2
            je verification_playerO 

  print29O2:  
  cmp sO,29
  jne print30O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70     
        int 10h    
        score29O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,twentynine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score29O2
            je verification_playerO

  print30O2:  
  cmp sO,30
  jne print31O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score30O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirty[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score30O2
            je verification_playerO
            
  print31O2:  
  cmp sO,31
  jne print32O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score31O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyone[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score31O2
            je verification_playerO
 
  print32O2:  
  cmp sO,32
  jne print33O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70     
        int 10h    
        score32O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtytwo[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score32O2
            je verification_playerO

  print33O2:  
  cmp sO,33
  jne print34O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score33O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtythree[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score33O2
            je verification_playerO

  print34O2:  
  cmp sO,34
  jne print35O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score34O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score34O2
            je verification_playerO

  print35O2:  
  cmp sO,35
  jne print36O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score35O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,thirtyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score35O2
            je verification_playerO
            
  print36O2:  
  cmp sO,36
  jne print37O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score36O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,thirtysix[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score36O2
            je verification_playerO          
            
  print37O2:  
  cmp sO,37
  jne print38O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score37O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,thirtyseven[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score37O2
            je verification_playerO
            
  print38O2:  
  cmp sO,38
  jne print39O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score38O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtyeight[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score38O2
            je verification_playerO
            
  print39O2:  
  cmp sO,39
  jne print40O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score39O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,thirtynine[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score39O2
            je verification_playerO
            
  print40O2:  
  cmp sO,40
  jne print41O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score40O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,forty[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score40O2
            je verification_playerO
            
  print41O2:  
  cmp sO,41
  jne print42O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score41O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyone[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score41O2
            je verification_playerO 
            
  print42O2:  
  cmp sO,42
  jne print43O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70   
        int 10h    
        score42O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortytwo[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score42O2
            je verification_playerO 
            
  print43O2:  
  cmp sO,43
  jne print44O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score43O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortythree[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score43O2
            je verification_playerO 
            
  print44O2:  
  cmp sO,44
  jne print45O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85  
        mov dl,70    
        int 10h    
        score44O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfour[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score44O2
            je verification_playerO
            
  print45O2:  
  cmp sO,45
  jne print46O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85    
        mov dl,70    
        int 10h    
        score45O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1      
            mov al,fortyfive[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score45O2
            je verification_playerO 
            
  print46O2:  
  cmp sO,46
  jne print47O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score46O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1     
            mov al,fortysix[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score46O2
            je verification_playerO

  print47O2:  
  cmp sO,47
  jne print48O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score47O2: 
            mov ah,09h
            mov bl,0eh 
            mov cx,1     
            mov al,fortyseven[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score47O2
            je verification_playerO
  
  print48O2:  
  cmp sO,48
  jne print49O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70   
        int 10h    
        score48O2: 
            mov ah,09h
            mov bl,0eh  
            mov cx,1      
            mov al,fortyeight[si]      
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score48O2
            je verification_playerO 
            
  print49O2:  
  cmp sO,49
  jne print50O2
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70     
        int 10h    
        score49O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fortynine[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score49O2
            je verification_playerO 
            
  print50O2:  
        mov al,00h
        mov repeat, al
        mov si,00h
        mov ah,02h  
        mov dh,85   
        mov dl,70    
        int 10h    
        score50O2: 
            mov ah,09h
            mov bl,0eh   
            mov cx,1     
            mov al,fifty[si]     
            int 10h 
            
            inc dl
            inc si
            mov ah,02h
            int 10h  
            inc repeat
            cmp repeat, 02h
            jne score50O2
            je verification_playerO
            
winningX:
winnerX 
jmp endingEnterX
continueX: 
    mov AH, 08
    int 21h
    cmp AL, 0Dh
    jne continueX
    je continueX2        
continueX2:
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx 
    mov sx,00h
    mov so,00h 
    mov ah,00h
    mov al,03h
    int 10h 
    jmp inicio

winningO:            
winnerO   
jmp endingEnterO
continueO: 
    mov AH, 08
    int 21h
    cmp AL, 0Dh
    jne continueO
    je continueO2         
continueO2: 
    xor si,si
    xor di,di
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx 
    mov sx,00h
    mov so,00h 
    mov ah,00h
    mov al,03h
    int 10h 
    jmp inicio 

endingEnterX: ;Impresion de mensaje final de enter 
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,01h    
mov dl,26   
int 10h    
messageEndingEnterX: 
    mov ah,09h
    mov bl,0eh  
    mov cx,1      
    mov al,enter2[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 29
    jne messageEndingEnterX
    je continueX    
    
endingEnterO: ;Impresion de mensaje final de enter 
mov al,00h
mov repeat, al
mov si,00h
mov ah,02h  
mov dh,01h    
mov dl,26   
int 10h    
messageEndingEnterO: 
    mov ah,09h
    mov bl,0eh  
    mov cx,1      
    mov al,enter2[si]      
    int 10h 
    
    inc dl
    inc si
    mov ah,02h
    int 10h  
    inc repeat
    cmp repeat, 29
    jne messageEndingEnterO
    je continueO     
                                                                 
ending:
end