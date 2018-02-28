TITLE helloworld.asm

	.386
	.MODEL flat, stdcall
	option casemap:none

	INCLUDE		windows.inc
	INCLUDE		user32.inc
	INCLUDELIB  user32.lib
	INCLUDE     kernel32.inc
	INCLUDELIB  kernel32.lib

	.const
bTitle		BYTE	"title", 0
bContent	BYTE	"Hello World!", 0
	.code
main	PROC
	INVOKE MessageBox, NULL,
		ADDR bContent,
		ADDR bTitle,
		MB_OK

	INVOKE ExitProcess, NULL
main	ENDP
	END main
