global _ft_strcpy

section .text

_ft_strcpy :
				mov r10, rdi
				mov r11, rsi
				push rdi;

loop :
				cmp byte [r11], 0
				je exit
				
				mov r12b, byte [r11]
				mov byte [r10], r12b
				inc r10
				inc r11
				jmp loop

exit :
				mov byte [r10], 0
				pop rdi
				mov rax, rdi
				ret
