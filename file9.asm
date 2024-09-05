;WRITE A PROGRAM USING JUMP CONDITIONS.

Dosseg
.model small
.stack 100h
.data
var_1 db 'INPUT 5$'                           //Define varaiables
var_2 db 'YOUR INPUT IS GREATER THAN 5$'
var_3 db 'YOUR INPUT IS LESSER THAN 5$'

.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset var_1
mov ah,9
int 21h

mov dx,10          ;SPACE
mov ah,2
int 21h
mov dx,13          ;CARRIAGE RETURN
mov ah,2
int 21h

mov ah,1
int 21h
mov bl,"5"
cmp al,bl          ;COMPARE INPUT AND VALUE

mov dx,10          ;SPACE
mov ah,2
int 21h
mov dx,13          ;CARRIAGE RETURN
mov ah,2
int 21h

JNE L1
mov dx,offset var_3
mov ah,9
int 21h
mov ah,4ch         ;END THE PROGRAM
int 21h
L1:

mov dx,offset var_2
mov ah,9
int 21h
mov ah,4ch         ;END THE PROGRAM
int 21h
main endp
end main
















