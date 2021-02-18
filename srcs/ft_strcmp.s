global _ft_strcmp

section .text

_ft_strcmp :
				mov r10, rdi
				mov r11, rsi

loop :
				cmp byte [r10], 0
				je end_loop

				mov r12b, byte [r11]
				cmp byte [r10], r12b
				jne end_loop

				cmp byte [r10], 0
				je end_loop

				cmp byte [r11], 0
				je end_loop

				inc r10
				inc r11

				jmp loop

end_loop :
				mov r12b, byte [r11]
				cmp byte [r10], r12b
				ja one
				jb minus
				je exit

one : 
				mov rax, 1
				ret
minus :
				mov rax, -1
				ret

exit : 
				mov rax, 0
				ret
