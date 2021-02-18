global _ft_read
extern ___error

section .text

_ft_read :
			mov rax, 0x2000003
			syscall

			push rax
			jc err
			
			pop rax
			ret

err :
			call ___error
			mov r10, rax

			pop rcx
			mov [r10], rcx
			mov rax, -1
			ret
