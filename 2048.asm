[org 0x0100]
;menu modes : arcade: moves
; mode: timer
; spicy mode
;battle mode
; Fast Thrill
;  sounds on each thing
; themes at least 5 different musics and 5 differnect colors
;beautiful starting screen
;Thrilling ending screen
;

jmp start
linePrint:
loop100:
mov word[es:di],ax
add di,160
cmp di,si
jne loop100

ret
green:
pusha

green1:

mov di,0
mov si,3840
call linePrint
call delays

mov di,2
mov si,3842
call linePrint
call delays
mov di,4
mov si,3844
call linePrint
call delays
mov di,6
mov si,3846
call linePrint
call delays
mov di,8
mov si,3848
call linePrint
call delays
mov di,10
mov si,3850
call linePrint
call delays

mov di,172
mov si,3692
call linePrint
call delays

mov di,334
mov si,3534
call linePrint
call delays

mov di,496
mov si,3376
call linePrint
call delays

mov di,658
mov si,3218
call linePrint
call delays

mov di,820
mov si,3060
call linePrint


mov di,982
mov si,3062
call linePrint
call delays

mov di,1144
mov si,2904
call linePrint

mov di,1306
mov si,2746
call linePrint
call delays

mov di,1468
mov si,2588
call linePrint
call delays

mov di,1630
mov si,2430
call linePrint
call delays

mov di,1792
mov si,2272
call linePrint
call delays

mov di,1954
mov si,2274
call linePrint
call delays


green2:
mov di,158
mov si,3998
call linePrint
call delays
mov di,156
mov si,3996
call linePrint
call delays

mov di,154
mov si,3994
call linePrint
call delays

mov di,152
mov si,3992
call linePrint
call delays
mov di,150
mov si,3990
call linePrint
call delays

mov di,148
mov si,3988
call linePrint
call delays

mov di,306
mov si,3826
call linePrint
call delays

mov di,464
mov si,3664
call linePrint
call delays

mov di,622
mov si,3502
call linePrint
call delays
mov di,780
mov si,3340
call linePrint
call delays

mov di,938
mov si,3178
call linePrint
call delays

mov di,1096
mov si,3016
call linePrint
call delays

mov di,1254
mov si,2854
call linePrint


mov di,1412
mov si,2692
call linePrint
call delays
mov di,1570
mov si,2530
call linePrint
call delays

mov di,1728
mov si,2368
call linePrint
call delays
mov di,1886
mov si,2206
call linePrint
call delays
mov word[es:2044],ax

popa
ret

red:
pusha
red1:



red2:

popa
ret

yellow:
pusha
yellow1:



yellow2:


popa
ret


white:
pusha
white1:


white2:

popa
ret
printPattern:
pusha
call clearscreen1
call printBoundary
mov ax,0xb800
mov es,ax
;green
mov ah,00011010b
mov al,0x3
call green


mov ah,00011100b
mov al,0x1
call red


mov ah,00011110b
mov al,0x1
call yellow

mov ah,0001111b
mov al,0x1
call white

popa
ret




menuScreen:
call clearscreen1
pageBoundary:
    mov ax,0xb800
    mov es,ax
   mov ah,10011010b
   mov al,0x1
    mov di,0
   b1:
   mov word[es:di],ax
   add di,2
   cmp di,158
   jne b1
   call delay
   b2:
   mov word[es:di],ax
   add di,160
   cmp di,3998
   jne b2
    call delay
   b3:
   mov word[es:di],ax
   sub di,2
   cmp di,3840
   jne b3
    call delay
   b4:
   mov word[es:di],ax
   sub di,160
   cmp di,0
   jne b4
    call delay









options:
   mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011100b
   mov dx,0x0304
   mov cx,12
   push cs
   pop es
   mov bp,option1
   int 0x10

   mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011110b
   mov dx,0x0504
   mov cx,13
   push cs
   pop es
   mov bp,option2
   int 0x10

    mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011110b
   mov dx,0x0704
   mov cx,14
   push cs
   pop es
   mov bp,option3
   int 0x10
   
    mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011110b
   mov dx,0x0904
   mov cx,18
   push cs
   pop es
   mov bp,option4
   int 0x10

       mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011110b
   mov dx,0x0b04
   mov cx,17
   push cs
   pop es
   mov bp,option5
   int 0x10




shape:
mov ax,0xb800
mov es,ax
  mov bl,0x1
  mov bh,00011110b
  mov di,316
call delays1
 s1:
 mov word[es:di],bx
 add di,160
 cmp di,3836
 jne s1
 sub di,2
 call delays1
  s2:
 mov word[es:di],bx
 sub di,160
 cmp di,474
 jne s2
 mov di,632
 call delays1
  s3:
 mov word[es:di],bx
 add di,160
 cmp di,3672
 jne s3
 call delays1

mov di,790
  s4:
 mov word[es:di],bx
 add di,160
 cmp di,3510
 jne s4
mov di,948
call delays1
 s5:
 mov word[es:di],bx
 add di,160
 cmp di,3348
 jne s5
mov di,1106
call delays1
 s6:
 mov word[es:di],bx
 add di,160
 cmp di,3186
 jne s6
 mov di,1264
 call delays1
  s7:
 mov word[es:di],bx
 add di,160
 cmp di,3024
 jne s7
call delays1
mov di,1422
  s8:
 mov word[es:di],bx
 add di,160
 cmp di,2862
 jne s8
 call delays1
mov di,1580
 s9:
 mov word[es:di],bx
 add di,160
 cmp di,2700
 jne s9
mov di,1738
call delays1
  s10:
 mov word[es:di],bx
 add di,160
 cmp di,2538
 jne s10
mov di,1896
call delays1
  s11:
 mov word[es:di],bx
 add di,160
 cmp di,2376
 jne s11
 call delays1
mov di,2054
  s12:
 mov word[es:di],bx
 add di,160
 cmp di,2214
 jne s12
 call delays1








ret

soundd:
	push bp
	mov bp, sp
	push ax

	mov al, 182
	out 0x43, al
	mov ax, [bp + 4]   ; frequency
	out 0x42, al
	mov al, ah
	out 0x42, al
	in al, 0x61
	or al, 0x03
	out 0x61, al
call delay
call delay
call delay
call delay
call delay
call delay
	in al, 0x61

	and al, 0xFC
	out 0x61, al

	pop ax
	pop bp
  ret 2
sound:  

  mov si, 0
.next_note:
  
    mov dx, 0x388 ; Port address for writing to the PC speaker
    mov al, [si + music_data + 0]
    out dx, al

    mov dx, 0x389 ; Additional port address for the PC speaker
    mov al, [si + music_data + 1]
    out dx, al

    mov bx, [si + music_data + 2]
    add si, 4

.repeat_delay:
    mov cx, 3000  ; Speed of sound
.delay:
    loop .delay
    dec bx
    jg .repeat_delay

    cmp si, [music_length]
    jb .next_note

    ; Exit the program


ret
gameOverScreenModified:
pusha



popa
ret



gameOverScreen:

mov ax,0xb800
mov es,ax

call clearscreen1
mov di,164
mov ah,00011100b
mov al,0x21

; o1:
; mov word[es:di],ax
; add di,2
; cmp di,176
; jne o1
mov di,324
o2:
mov word[es:di],ax
add di,2
cmp di,336
jne o2


mov di,322
o3:
mov word[es:di],ax
add di,160
cmp di,3522
jne o3

mov di,338
o4:
mov word[es:di],ax
add di,160
cmp di,3538
jne o4

mov di,3524
o5:
mov word[es:di],ax
add  di,2
cmp di,3536
jne o5

; mov di,3684
; o6:
; mov word[es:di],ax
; add di,2
; cmp di,3696
; jne o6

mov di,342
v1:
mov word[es:di],ax
add di,160
cmp di,822
jne v1

mov di,984
v2:
mov word[es:di],ax
add di,160
cmp di,1784
jne v2


mov di,1946
v3:
mov word[es:di],ax
add di,160
cmp di,2746
jne v3

mov di,2908
v4:
mov word[es:di],ax
add di,160
cmp di,3548
jne v4

mov di,2910
v5:
mov word[es:di],ax
add di,160
cmp di,3550
jne v5

mov di,1952
v6:
mov word[es:di],ax
add di,160
cmp di,2752
jne v6

mov di,994
v7:
mov word[es:di],ax
add di,160
cmp di,1794
jne v7


mov di,356
v8:
mov word[es:di],ax
add di,160
cmp di,836
jne v8




mov di,364
e1:
mov word[es:di],ax
add di,2
cmp di,380
jne e1


mov di,1964
e2:
mov word[es:di],ax
add di,2
cmp di,1980
jne e2


mov di,3564
e3:
mov word[es:di],ax
add di,2
cmp di,3580
jne e3




mov di,364
e4:
mov word[es:di],ax
add di,160
cmp di,3564
jne e4



mov di,390
r1:
mov word[es:di],ax
add di,2
cmp di,400
jne r1



mov di,1990
r2:
mov word[es:di],ax
add di,2
cmp di,2000
jne r2


mov di,390
r3:
mov word[es:di],ax
add di,160
cmp di,3590
jne r3



mov di,400
r4:
mov word[es:di],ax
add di,160
cmp di,2000
jne r4



mov di,2152
r5:
mov word[es:di],ax
add di,160
cmp di,2472
jne r5


mov di,2474
r6:
mov word[es:di],ax
add di,160
cmp di,2794
jne r6


mov di,2636
r7:
mov word[es:di],ax
add di,160
cmp di,2956
jne r7


mov di,2798
r8:
mov word[es:di],ax
add di,160
cmp di,3118
jne r8


mov di,3280
r9:
mov word[es:di],ax
add di,160
cmp di,3760
jne r9


ret







clearscreen1:
    push ax
    push es
    push di
    push cx
    mov ax,0xb800
    mov es,ax
    xor di,di
    mov cx,2000
    mov ah,10011100b
    mov al,0x20
    rep stosw
    pop cx
    pop di
    pop es
    pop ax
    ret



printBoundary:
pusha
mov ax,0xb800
mov es,ax
mov di,0
mov ah,00011110b
mov al,0x3
pp1:
mov word[es:di],ax
add di,2
cmp di,158
jne pp1

pp2:
mov word[es:di],ax
add di,160
cmp di,3998
jne pp2

pp3:
mov word[es:di],ax
sub di,2
cmp di,3840
jne pp3

pp4:
mov word[es:di],ax
sub di,160
cmp di,0
jne pp4


popa
ret
printUI:
call clearscreen1

call printBoundary
   mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011100b
   mov dx,0x0141
   mov cx,8
   push cs
   pop es
   mov bp,score
   int 0x10


     mov ah,0x13
   mov al,1
   mov bh,0
   mov bl,00011100b
   mov dx,0x011e
   mov cx,7
   push cs
   pop es
   mov bp,movesRemaining
   int 0x10


mov ax,0xb800
mov es,ax
mov ah,10011100b
mov al,0x21
mov  word[es:0],ax
mov word[es:158],ax
mov word[es:3840],ax
mov word[es:3998],ax
mov  word[es:2],ax
mov word[es:156],ax
mov word[es:3842],ax
mov word[es:3996],ax
pusha
mov di,360
mov ax,0xb800
mov es,ax

mov ah,10011010b
mov al,0x20
lop1:
mov word[es:di],ax
add di,2
cmp di,442
jne lop1

lop2:
mov word[es:di],ax
add di,160
cmp di,3642
jne lop2


loop3:
mov word[es:di],ax
sub di,2
cmp di,3560
jne loop3


loop4:
mov word[es:di],ax
sub di,160
cmp di,360
jne loop4

mov ah,00011001b
mov al,0x20
mov di,522
mov dx,19
outerLoop:
mov cx,40
    innerLoop:
    mov word[es:di],ax
    add di,2
    sub cx,1
    jnz innerLoop

sub di,80
add di,160
sub dx,1
jnz outerLoop
mov di,684
call boxes
mov di,1324
call boxes
mov di,1964
call boxes
mov di,2604
call boxes
; mov di,694
; call boxes
; mov di,1334
; call boxes
; mov di,1974
; call boxes
; mov di,2614
; call boxes
mov di,704
call boxes
mov di,1344
call boxes
mov di,1984
call boxes
mov di,2624
call boxes
; mov di,714
; call boxes
; mov di,1354
; call boxes
; mov di,1994
; call boxes
; mov di,2634
; call boxes
mov di,724
call boxes
mov di,1364
call boxes
mov di,2004
call boxes
mov di,2644
call boxes
; mov di,734
; call boxes
; mov di,1374
; call boxes
; mov di,2014
; call boxes
; mov di,2654
; call boxes
mov di,744
call boxes
mov di,1384
call boxes
mov di,2024
call boxes
mov di,2664
call boxes
; mov di,754
; call boxes
; mov di,1394
; call boxes
; mov di,2034
; call boxes
; mov di,2674
; call boxes
;printing board on points inside each box
call printNumbers


exitPrintUI:
popa
ret
boxes:
    pusha
    ;takes starting in di
    mov ah,00111011b
    mov al,0x20
    mov dx,3
    outerLoopp:
    mov cx,6
    innerLoopp:
    mov word[es:di],ax
    add di,2
    sub cx,1
    jnz innerLoopp

    sub di,12
    add di,160
    sub dx,1
    jnz outerLoopp
    popa
    ret
printNumbers:
    pusha
    number1:
    mov bx,[board+0]
    cmp bx,0
    je number2
    push 846
    push bx
    call getNum


    number2:
    mov bx,[board+2]
            cmp bx,0
    je number3
    push 866
    push bx
    call getNum

    number3:
    mov bx,[board+4]
            cmp bx,0
    je number4
    push 886
    push bx
    call getNum

    number4:
    mov bx,[board+6]
            cmp bx,0
    je number5
    push 906
    push bx
    call getNum

    number5:
    mov bx,[board+8]
            cmp bx,0
    je number6
    push 1486
    push bx
    call getNum

    number6:
    mov bx,[board+10]
            cmp bx,0
    je number7
    push 1506
    push bx
    call getNum

    number7:
    mov bx,[board+12]
            cmp bx,0
    je number8
    push 1526
    push bx
    call getNum

    number8:
    mov bx,[board+14]
            cmp bx,0
    je number9
    push 1546
    push bx
    call getNum

    number9:
    mov bx,[board+16]
            cmp bx,0
    je number10
    push 2126
    push bx
    call getNum

    number10:
    mov bx,[board+18]
            cmp bx,0
    je number11
    push 2146
    push bx
    call getNum

    number11:
    mov bx,[board+20]
            cmp bx,0
    je number12
    push 2166
    push bx
    call getNum

    number12:
    mov bx,[board+22]
        cmp bx,0
    je number13
    push 2186
    push bx
    call getNum

    number13:
    mov bx,[board+24]
        cmp bx,0
    je number14
    push 2766
    push bx
    call getNum

    number14:
    mov bx,[board+26]
        cmp bx,0
    je number15
    push 2786
    push bx
    call getNum

    number15:
    mov bx,[board+28]
    cmp bx,0
    je number16
    push 2806
    push bx
    call getNum


    number16:
    mov bx,[board+30]
    cmp bx,0
    je exitNumber
    push 2826
    push bx
    call getNum
    exitNumber:
    popa
    ret
newGame:
pusha
call clearscreen1
call printStartingScreen
call sound
call addRandomPiece
popa
ret
delay2:

    push ax

    mov ax,0xfff
    llll:
    sub ax,1
    cmp ax,0
    jne llll
    pop ax
    ret


printStartingScreen:
call clearscreen1
call printPattern
call printBoundary
call clearscreen1

  mov ax,0xb800
  mov es,ax
  
  mov ah,10011100b
  mov al,0x20
  mov di,0
  a1:
  mov word[es:di],ax
  call delay
  add di,2
  cmp di,158
  jne a1
   
  a2:
  mov word[es:di],ax
  call delay
  add di,160
  cmp di,3998
  jne a2
   
  a3:
  mov word[es:di],ax
  call delay
  sub di,2
  cmp di,3840
  jne a3

  a4:
  mov word[es:di],ax
  call delay
  sub di,160
  cmp di,0
  jne a4
   mov ah,10011110b
   mov al,0x1
  mov di,334
  a5:
  mov word[es:di],ax
  call delay2
  add di,2
  cmp di,356
  jne a5

  a6:
  mov word[es:di],ax
  call delay2
  add di,160
  cmp di,1956
  jne a6
  
  a7:
  mov word[es:di],ax
  call delay2
    sub di,2
  cmp di,1934
  jne a7

  a8:
  mov word[es:di],ax
  call delay2
  add di,160
  cmp di,3534
  jne a8


  a9:
  mov word[es:di],ax
  call delay2
  add di,2
  cmp di,3556
  jne a9


  mov di,366
  a10:
  mov word[es:di],ax
  call delay2
  add di,2
  cmp di,390
  jne a10

  a11:
  mov word[es:di],ax
  call delay2
  add di,160
  cmp di,3590
  jne a11


  a12:
  mov word[es:di],ax
  call delay2
  sub di,2
  cmp di,3566
  jne a12


  a13:
  mov word[es:di],ax
  call delay2
  sub di,160
  cmp di,366
    jne a13
  mov di,402
  a14:
  mov word[es:di],ax
  call delay2
  add di,160
   cmp di,2002
   jne a14

  a15:
  mov word[es:di],ax
  call delay2
  add di,2
  cmp di,2020
  jne a15
   mov di,420
  a166:
  mov word[es:di],ax
  call delay2
  add di,160
  cmp di,3620
  jne a166
  mov di,432
  a17:
    mov word[es:di],ax
    call delay2
    add di,160
    cmp di,3632
    jne a17

  a18:
  mov word[es:di],ax
  call delay2
  add di,2
  cmp di,3656
  jne a18
  a199:
  mov word[es:di],ax
  call delay2
   sub di,160
   cmp di,456
   jne a199

   a19:
   mov word[es:di],ax
   call delay2
   sub di,2
   cmp di,432
   jne a19
   mov di,2032

   a20:
   mov word[es:di],ax
   call delay2
   add di,2
   cmp di,2056
   jne a20

  pressAnyKeyToContinue:
   mov ah,0x13
   mov al,1
   mov bh,10011100b
   mov dx,0x1711
   mov cx,17
   push cs
   pop es
   mov bp,message1
   int 0x10
  


ret

setAttribute:
 ;ax mai element hai
 ; bh mai attribute rakhna hai
 s111:
 cmp al,2
 jne s22
 mov byte[attributeByte],00111010b   ;green with white background
  ;mov  bl,0x1
 jmp exitSetAttribute

 ;mov bl,al
 s22:
 cmp ax,4
 jne s33
 mov byte[attributeByte],00111100b  ; red
 ;mov  bl,0x2
 ;mov bl,al
 jmp exitSetAttribute
 s33:
 cmp ax,8
 jne s44
 mov byte[attributeByte],00111110b  ;yellow
 ;mov  bl,0x3
 ;mov bl,al
 jmp exitSetAttribute
 s44:
 cmp ax,16
 jne s55
 mov byte[attributeByte],00111111b ; white
  ;mov  bl,0x4
 ;mov bl,al
 jmp exitSetAttribute
 s55:
 cmp ax,32
 jne s66
 mov byte[attributeByte],00111101b  ; unknown
;mov  bl,0x5
;  mov bl,al
 ;add bl,0x30
 s66:
 cmp ax,64
 jne s77
 mov byte[attributeByte],00111110b
 jmp exitSetAttribute
 
 s77:
 cmp ax,128
 jne s88
 mov byte[attributeByte],00111011b
 jmp exitSetAttribute

 s88:
 cmp ax,256
 jne s99
 mov byte[attributeByte],00111101b
 jmp exitSetAttribute

 s99:
 cmp ax,512
 jne s100
 mov byte[attributeByte],00111111b
 jmp exitSetAttribute

s100:

 exitSetAttribute:
 ret
getNum: push bp
 mov bp, sp
 push es
 push ax
 push bx
 push cx
 push dx
 push di
 mov ax, 0xb800
 mov es, ax ; point es to video base
 mov ax, [bp+4] ; load number in ax
 call setAttribute
 mov bx, 10 ; use base 10 for division
 mov cx, 0 ; initialize count of digits
 nextdigit: mov dx, 0 ; zero upper half of dividend
 div bx ; divide by 10
 add dl, 0x30 ; convert digit into ascii value
 push dx ; save ascii value on stack
 inc cx ; increment count of values
 cmp ax, 0 ; is the quotient zero
 jnz nextdigit ; if no divide it again
 mov di, [bp+6] ; point di to top left column 
 nextpos: pop dx ; remove a digit from the stack
 mov dh,[attributeByte]; use normal attribute
 mov [es:di], dx ; print char on screen
 add di, 2 ; move to next screen location
 loop nextpos ; repeat for all digits on stack
 pop di
 pop dx
 pop cx
 pop bx
 pop ax
 pop es
 pop bp
 ret 4

canDoRightMove:
                      push bp
                      mov bp,sp
                      push ax
                      push bx
                      push cx
                      push dx
                      push si
                      push di





                      xor ax,ax
                      xor bx,bx
                      xor cx,cx
                      xor dx,dx
                      xor si,si
                      xor di,di
                      mov ax,[bp+6]
                      mov bx,[bp+4]


                      ;;; adding 1 in column;; row will remain same
                      mov dx,bx
                      add dx,1
                      cmp dx,4
                      je exitCanDoMoveRight
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      
                      mov cx,[board+si]   ; board[i][j]

                      push ax
                      push dx
                      call getIndexFromRowsCols
                      
                      mov dx,[board+si]  ;; board[i][j+1]

                       cmp dx,0
                      je addZeroTosource
                      cmp cx,dx
                      jne exitCanDoMoveRight
                   
                      add cx,dx
                      cmp cx,[numberToMake]
                      jne continue2
                      mov word[gameOver],1

                      continue2:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      
                                            mov word[board+si],0
                     mov byte[sucessMoveFlag],0
                      jmp exitCanDoMoveRight


                      addZeroTosource:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      
                      mov word [board+si],0
                      mov byte[sucessMoveFlag],1
                      mov word[addRandomPieceFlag],1
                      exitCanDoMoveRight:
                        pop di
                        pop si
                        pop dx
                        pop cx
                        pop bx
                        pop ax
                      pop bp
                      ret 4



canDoMoveLeft:


                      push bp
                      mov bp,sp
                      push ax
                      push bx
                      push cx
                      push dx
                      push si
                      push di





                      xor ax,ax
                      xor bx,bx
                      xor cx,cx
                      xor dx,dx
                      xor si,si
                      xor di,di
                      mov ax,[bp+6]
                      mov bx,[bp+4]


                      ;;; adding 1 in column;; row will remain same
                      mov dx,bx
                      sub dx,1
                      cmp dx,0xffff
                      je exitCanDoMoveLeft
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov cx,[board+si]   ; board[i][j]

                      push ax
                      push dx
                      call getIndexFromRowsCols
                      mov dx,[board+si]  ;; board[i][j+1]

                        cmp dx,0
                      je addZeroTosourcee
                      cmp cx,dx
                      jne exitCanDoMoveLeft
                   
                      add cx,dx
                                            cmp cx,[numberToMake]
                      jne continue3
                      mov word[gameOver],1
                      continue3:

                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov word[board+si],0
                      mov byte[sucessMoveFlag],0
                      jmp exitCanDoMoveLeft


                      addZeroTosourcee:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov word [board+si],0
                     mov byte[sucessMoveFlag],1
                     mov word[addRandomPieceFlag],1
                      exitCanDoMoveLeft:
                        pop di
                        pop si
                        pop dx
                        pop cx
                        pop bx
                        pop ax
                      pop bp
                      ret 4


canDoMoveUp:



                      push bp
                      mov bp,sp
                      push ax
                      push bx
                      push cx
                      push dx
                      push si
                      push di





                      xor ax,ax
                      xor bx,bx
                      xor cx,cx
                      xor dx,dx
                      xor si,si
                      xor di,di
                      mov ax,[bp+6]
                      mov bx,[bp+4]


                      ;;; subtracting in column;; row will remain same
                      mov dx,ax
                      sub dx,1
                      cmp dx,0xffff
                      je exitCanDoMoveUp
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov cx,[board+si]   ; board[i][j]

                      push dx
                      push bx
                      call getIndexFromRowsCols
                      mov dx,[board+si]  ;; board[i][j+1]

                      cmp dx,0
                      je addZeroTosourceee
                      cmp cx,dx
                      jne exitCanDoMoveUp
                   
                      add cx,dx
                       cmp cx,[numberToMake]
                      jne continue4
                      mov word[gameOver],1
                      

                      continue4:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov  word[board+si],0
                      mov byte[sucessMoveFlag],0
                      
                      jmp exitCanDoMoveUp


                      addZeroTosourceee:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov word [board+si],0
                      mov byte[sucessMoveFlag],1
                      mov word[addRandomPieceFlag],1
                      exitCanDoMoveUp:
                        pop di
                        pop si
                        pop dx
                        pop cx
                        pop bx
                        pop ax
                      pop bp
                      ret 4



canDoMoveDown:



                      push bp
                      mov bp,sp
                      push ax
                      push bx
                      push cx
                      push dx
                      push si
                      push di





                      xor ax,ax
                      xor bx,bx
                      xor cx,cx
                      xor dx,dx
                      xor si,si
                      xor di,di
                      mov ax,[bp+6]
                      mov bx,[bp+4]


                      ;;; adding 1 in column;; row will remain same
                      mov dx,ax
                      add dx,1
                      cmp dx,4
                      je exitCanDoMoveDown
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov cx,[board+si]   ; board[i][j]

                      push dx
                      push bx
                      call getIndexFromRowsCols
                      mov dx,[board+si]  ;; board[i][j+1]

                      cmp dx,0
                      je addZeroTosourceeee
                      cmp cx,dx
                      jne exitCanDoMoveDown
                   
                      add cx,dx
                      cmp cx,[numberToMake]
                      jne continue5
                      mov word[gameOver],1
                      continue5:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov word[board+si],0
                      mov byte[sucessMoveFlag],0
                      jmp exitCanDoMoveDown


                      addZeroTosourceeee:
                      mov word[board+si],cx
                      push ax
                      push bx
                      call getIndexFromRowsCols
                      mov word [board+si],0
                     mov byte[sucessMoveFlag],1
                     mov word[addRandomPieceFlag],1
                      exitCanDoMoveDown:
                        pop di
                        pop si
                        pop dx
                        pop cx
                        pop bx
                        pop ax
                      pop bp
                      ret 4

applyMove:

sub word[moves],1
cmp word[moves],0
jne UP
mov word[gameOver],1
                    UP:
                    cmp byte[direction] ,0  ;UP;
                    jne DOWN
                    mov cx,4
                    l3:
                    call movUp
                    sub cx,1
                    cmp cx,0
                    jne l3
                    jmp check
                    

                    DOWN:
                    cmp byte[direction],1  ;; Down
                    jne RIGHT
                    mov cx,4
                    l4:
                    call movDown
                    sub cx,1
                    cmp cx,0

                    
                    jne l4
              
                    jmp check


                    RIGHT:
                    cmp byte[direction],2 ;; RIGHT
                    jne Left
                    mov cx,4
                    l:
                    call movRight
                    sub cx,1
                    cmp cx,0
                    jne l
                    jmp check



                    Left:
                    cmp byte[direction],3 ;; left\
                    jne check
                    mov cx,4
                    l1:

                    call  movLeft
                    sub cx,1
                    cmp cx,0
                    jne l1
                    check:
                   cmp byte[sucessMoveFlag],0   ; agar ye 0 ho tou naya piece at rendom position per add karna hai
                    jne exitApplyMove
                    call addRandomPiece
                     exitApplyMove:


                    ret


GenerateRandomRowCol:
    xor dx,dx
    call GenRandNum
    mov word[randomRow],dx
    xor dx,dx
    call delay
    call delay
    call GenRandNum
    mov word[randomCol],dx
    ret



addRandomPiece:

    loop111:
    call GenerateRandomRowCol
    call delays
    push word[randomRow]
    push word[randomCol]
    call delays
    call getIndexFromRowsCols
    cmp word[board+si],0
    jne loop111
    mov word[board+si],2
    ret


movDown:
 push ax
 push bx
 push dx
 mov ax,0
 mov bx,0
 xor dx,dx
  loop1111:
    mov bx,3
    loop2222:
    push bx
    push ax
    call getIndexFromRowsCols
    mov dx,[board+si]
    push bx
    push ax
    call canDoMoveDown
    sub bx,1
    cmp bx,0xffff
    jne loop2222
 add ax,1
 cmp ax,4
 jne loop1111
 pop dx
 pop bx
 pop ax
 ret
movUp:
 push ax
 push bx
 push dx
 mov ax,0
 mov bx,0
 xor dx,dx
  loop11111:
    mov bx,0
    loop222:
    push bx
    push ax
    call getIndexFromRowsCols
    mov dx,[board+si]
    push bx
    push ax
    call canDoMoveUp
    add bx,1
    cmp bx,4
    jne loop222
 add ax,1
 cmp ax,4
 jne loop11111
 pop dx
 pop bx
 pop ax
 ret
movRight:
 push ax
 push bx
 push dx
 mov ax,0
 mov bx,0
 xor dx,dx
  loop1:
    mov bx,3
    loop2:
    push ax
    push bx
    call getIndexFromRowsCols
    mov dx,[board+si]
    push ax
    push bx
    call canDoRightMove
    sub bx,1
    cmp bx,0xffff
    jne loop2
 add ax,1
 cmp ax,4
 jne loop1
 pop dx
 pop bx
 pop ax
 ret
movLeft:
 push ax
 push bx
 push dx
 mov ax,0
 mov bx,0
 xor dx,dx
  loop11:
    mov bx,0
    loop22:
    push ax
    push bx
    call getIndexFromRowsCols
    mov dx,[board+si]
    push ax
    push bx
    call canDoMoveLeft
    add bx,1
    cmp bx,4
    jne loop22
 add ax,1
 cmp ax,4
 jne loop11
 pop dx
 pop bx
 pop ax
 ret

getIndexFromRowsCols:

  push bp
  mov bp,sp
  push ax
  push bx
  mov ax,[bp+6]
  mov bx,[bp+4]

  cmp ax,0
  jne next1
  cmp bx,0
  jne n1 
  mov si,0
  jmp exitt
  n1:
  cmp bx,1
  jne n2
  mov si,2
  jmp exitt
  n2:
  cmp bx,2
  jne n3
  mov si,4
  jmp exitt
  n3:
  cmp bx,3
  jne next1
  mov si,6
  jmp exitt

  next1:
  cmp ax,1
  jne next2
  cmp bx,0
  jne n4
  mov si,8
  jmp exitt
  n4:
  cmp bx,1
  jne  n5
  mov si,10
  jmp exitt
  n5:
  cmp bx,2
  jne n6
  mov si,12
  jmp exitt
  n6:
  cmp bx,3
  jne next2
  mov si,14
  jmp exitt


  next2:
  cmp ax,2
  jne next3
  cmp bx,0
  jne n7
  mov si,16
  jmp exitt
  n7:
  cmp bx,1
  jne n8
  mov si,18
  jmp exitt
  n8:
  cmp bx,2
  jne n9
  mov si,20
  jmp exitt
  n9:
  cmp bx,3
   jne next3 
  mov si,22
  jmp exitt



  next3 :

  cmp bx,0
  jne n10
  mov si,24
  jmp exitt
  n10:
  cmp bx,1
  jne n1111
  mov si,26
  jmp exitt
  n1111:
  cmp bx,2
  jne n12
  mov si,28
  jmp exitt
  n12:
  cmp bx,3
  jne n13
  mov si,30
  jmp exitt
  n13:

   exitt:
   pop bx
   pop ax
   pop bp

   ret 4
delay:
    push ax

    mov ax,0x1fff
    ll:
    sub ax,1
    cmp ax,0
    jne ll
    pop ax
    ret


delays1:
    push ax

    mov ax,0xffff
    lll:
    sub ax,1
    cmp ax,0
    jne lll
    pop ax
    ret
GenRandNum:
    push bp
    mov bp,sp;
    push cx
    push ax


    MOV AH, 00h ; interrupts to get system time
    INT 1AH ; CX:DX now hold number of clock ticks since midnight
    mov ax, dx
    xor dx, dx
    mov cx, 4;
    div cx ; here dx contains the remainder of the division - from 0 to 9
     ; answer in dx
    ;add dl, '0' ; to ascii from '0' to '9'




    pop cx;
    pop ax;

    pop bp;
    ret
coordinates:
               ; dx bp+6=x_axis ,columns
               ; bx bp+4  y_axis, rows
               ;first push columns then rows
       ;it returns in di
         push bp
         mov bp,sp
         push dx
         push bx
         push ax
         mov dx,[bp+6]
         mov bx,[bp+4]
         mov al,80
         mul byte [bp+4]
         add ax,dx
         shl ax,1
         mov di,ax
         pop ax
         pop bx
         pop dx
         pop bp
         ret 4

clearscreen:
    push ax
    push es
    push di
    push cx
    mov ax,0xb800
    mov es,ax
    xor di,di
    mov cx,2000
    mov ax,0x0720
    rep stosw
    pop cx
    pop di
    pop es
    pop ax
    ret
subroutines:
delays:
pusha
mov cx,10
cxloop:
call delay
loop cxloop


popa
ret


kbisr: push ax
 push es
 mov ax, 0xb800
 mov es, ax ; point es to video memory
 in al, 0x60 ; read a char from keyboard port
cmp al,0x81
jne firstMatch
mov byte[direction],9
jmp nomatch
firstMatch:
 cmp al, 0x4b ; is the key left shift
 jne nextcmp ; no, try next comparison
; yes, print L at top left

mov byte[cs:direction],3

 jmp nomatch ; leave interrupt routine

nextcmp: cmp al, 0x4d ; is the key right shift
 jne nextcmp11
mov byte[cs:direction],2
 jmp nomatch
  ; no, leave interrupt routine
 ; yes, print R at top left

nextcmp11:
 cmp al, 0x1b ; is the key right shift
 jne nextcmp1
mov  byte[gameOn],0
 jmp nomatch


 nextcmp1:
 cmp al,0x48
 jne nextcmp2
 mov byte[cs:direction],0
 jmp nomatch

 nextcmp2:
 cmp al,0x50
 jne nomatch
mov byte[cs:direction],1


nomatch: mov al, 0x20
 out 0x20, al ; send EOI to PIC
 pop es
 pop ax
; call the original ISR
iret
 modeSelection:
 mov ah,0
 int 0x16
 m1:
 cmp ah,2
 jne m2  ; 1  arcade mode   50 moves and make 2048
 mov word[moves],51
 mov word[numberToMake],2048
 jmp exitModeSelection


 m2:
 cmp ah,3  
 jne m3; 2 mode classsic
 mov word[numberToMake],2048
 mov word[moves],-1
 jmp exitModeSelection



 m3:
 cmp ah,4
 jne m4
 mov word[moves],8
 mov word[numberToMake],8
 jmp exitModeSelection
 m4:
 cmp ah,5
 jne exitModeSelection
 mov word[moves],16
 mov word[numberToMake],32

exitModeSelection: 
ret
start:

call newGame
call menuScreen
call modeSelection
call printUI
mov word[scores],0
gameLoop:
mov ah,0
int 0x16


upKey:

cmp ah,0x48
jne downKey
mov byte[direction],0
jmp continue


downKey:
cmp ah,0x50
jne rightKey
mov byte[direction],1
jmp continue


rightKey:
cmp ah,0x4d
jne leftKey
mov byte[direction],2
jmp continue


leftKey:
cmp ah,0x4b
jne exitKey
mov byte[direction],3
jmp continue


exitKey:
cmp ah,0x01
je exitGame
continue:
call clearscreen
call printUI
call applyMove

cmp word[addRandomPieceFlag],1
jne gameLoop
call addRandomPiece
mov word[addRandomPieceFlag],0
push 800
call soundd
push 300
call soundd
push 200
call soundd
push 10000
call clearscreen
call printUI
add word[scores],1
push 304
push word[scores]
call getNum
push 250
push word[moves]
call getNum

jne goFurther

je exitGame


goFurther:


cmp word[gameOver],1
jne gameLoop
exitGame:


call printPattern
call printBoundary
call sound
call sound

mov dx,start
add dx,15
mov cl,4
shr dx,cl
mov ax,0x3100
int 0x21



gameOn: db 1
direction: db 1
board: dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
oldisr: dd 0
sucessMoveFlag: db 0
randomRow: dw 0
randomCol: dw 0
addRandomPieceFlag: dw 0
gameOver: dw 0
scores: dw 0

message1: db 'Press Any Key !!'    ; 17
numberToMake: dw 0
score: db 'Scores: '  ; 8
movesRemaining: db 'Moves: '  ; 7

mode: dw 0 
moves: dw 0
option1:   db 'Select Mode:'   ; 12
option2: db '1:Arcade Mode'  ;13    ; mmoves are 50 and have to make 2048
option3:  db '2:Classic Mode' ; 14    ; make 2048 unlimited moves
option4: db '3:Thrill Fast Mode' ; 18  ; only 5 moves and have to make 32
option5: db '4:Umair Signature'
attributeByte: db 0
music_length: dw 3500
music_data :  incbin "dungeon.imf"
