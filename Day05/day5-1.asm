.model small
.stack 100h

.data
msg1 db "Enter the number: $"
n1 db 0
n2 db 0
n3 db 0
m1 db 0
m2 db 0
m3 db 0
msg2 db "The printed number is: $"
r1 db ?
r2 db ?
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
mov n1,dl

mov ah,01h
int 21h
mov dl,al
sub dl,48
mov n2,dl

mov ah,01h
int 21h
mov dl,al
sub dl,48
mov n3,dl

mov dl,10
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov al,n1
mov bl,100
mul bl
mov m1,al
mov al,n2
mov bl,10
mul bl
mov m2,al
mov dl,m1
add dl,m2
add dl,n3
mov m3,dl


mov ah,00
mov al,m3
mov bl,100
div bl
mov r1,ah

mov dl,al

add dl,48
mov ah,02h
int 21h

mov ah,00
mov bl,10
mov al,r1
div bl
mov r2,ah

mov dl,al

add dl,48
mov ah,02h
int 21h

mov dl,r2
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start





