model small
.stack 100h

.data
msg1 db "Enter the first number: $"
n db 0
msg2 db "Enter the second number: $"
m db 0
msg3 db "The greater number is : $"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov ah,01h
int 21h
mov dl,al
sub dl,48
mov n,dl

mov dl,10
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h
int 21h
mov dl,al
sub dl,48
mov m,dl

mov dl,10
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov bl,n

cmp bl,m
jg true

false:
mov dl,m
add dl,48
mov ah,02h
int 21h
jmp endn 


true:
mov dl,n
add dl,48
mov ah,02h
int 21h

 

endn:
mov ax,4c00h
int 21h

end start


 