;for(int i=0; i<5; i++){
;	//loop body
;}

;mov cl,n

;lstart
;mov dx, offset msg
;mov ah, 09h
;int 21h

;loop lstart

;****
;***
;**
;*

.model small
.stack 100h
.data

msg db "Hello world $"
n db 5
.code

start:
mov ax, @data
mov ds, ax

mov cl, n
lstart:
mov dx, offset msg
mov ah, 09h
int 21h

loop lstart

mov ax, 4c00h
int 21h
end start
