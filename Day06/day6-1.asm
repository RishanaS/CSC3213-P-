model small
.stack 100h

.data
.data
msg db "Enter the number : $"
n db 0
msg1 db "Hi$"
msg2 db "Bye$"

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

cmp n,5
je msg3
jne msg4
 
msg3:
mov dx,offset msg1
mov ah,09h 
int 21h
jmp endn

msg4:
mov dx,offset msg2
mov ah,09h
int 21h

endn:
mov ax,4c00h
int 21h

end start

