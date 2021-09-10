; to run on windows
;	nasm -f elf32 loop.asm -o loop.o
;	ld -mi386pe loop.o -o loop.exe

global _start

section .text
_start:
	mov ebx, 1		; move 1 to ebx - value adjusted during loop
	mov ecx, 4		; move 4 int ecx - loop counter
loop_start:
	add ebx, ebx	; ebx += ebx
	dec ecx			; subtract 1 from  
	cmp ecx, 0		; compare ecx (loop counter) to zero
	jg loop_start	; if ecx (loop counter) > 0, go backt to loop_start
	mov eax, 1		; 1 is the number for the exit system call
	int 0x80		; make the system call passing the exit value from above