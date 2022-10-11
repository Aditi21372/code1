extern printf,scanf
global main
section .text
main:
push rbp
mov rbp, rsp

mov eax, 0
lea rdi, [format1]
lea rsi, [str_statement]
call printf

mov eax, 0
lea rdi, [format1]
lea rsi, [strin]
call scanf

mov eax, 0
lea rdi, [format1]
lea rsi, [strin]
call printf

mov eax, 0
lea rdi, [format1]
lea rsi, [int_statment]
call printf

mov eax, 0
lea rdi, [format2]
lea rsi, [intin]
call scanf

mov eax, 0
lea rdi, [format2]
mov rsi, [intin]
call printf
mov eax, 0
pop rbp
ret

section .data
	
	str_statement: db "String Input->",0
	format1: db "%s",0
	int_statment: db "Integer Input->",0
	format2: db "%d",0
	intin: db 0
	strin: times 50 db 0
