model small
.stack 100h

.data
msg db "Enter the number: $"
msg1 db "Even $"
msg2 db "Odd $"
msg4 db "The number is $"
n db 0
n2 db 0
r db ?
.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg
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

mov dx,offset msg4
mov ah,09h
int 21h

mov ah,00
mov al,n
mov bl,2
div bl
mov r,ah

cmp r,0
je true
jne false

true:
mov dx,offset msg1
mov ah,09h
int 21h

jmp endn

false:
mov dx,offset msg2
mov ah,09h
int 21h

endn:
mov ax,4c00h
int 21h
end start