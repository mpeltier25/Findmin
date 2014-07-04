
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
jmp START
START:
mov bx, 2       ;initialize bx to 2(stores successive even numbers)
mov ax, 0	    ;initialize ax(stores sum of successive even numbers) 
mov cx, 5		;initialize cx to 3 or 5 (number of times loop body executes)

;Execute the loop body cx times
jmp WHILE_CONDITION;

WHILE_TOP:						
dec cx
add ax, bx
add bx, 2									
jmp WHILE_CONDITION:
WHILE_CONDITION:
	cmp cx, 0
	JG WHILE_TOP 
	JLE exit:
	exit:
	hlt