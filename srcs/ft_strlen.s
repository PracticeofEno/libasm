global _ft_strlen

section .text

_ft_strlen :
				mov r10, rdi
				push rdi
				mov r11, 0
				cmp byte [r10], 0
				jz exit

loop :
				cmp byte [r10], 0
				je exit
				inc r11
				inc r10
				jmp loop

exit :
				pop rdi
				mov rax, r11

				ret
