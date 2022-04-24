;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;      Loader write in FASM
;;
;;      By Sam0verflow - Aka
;;       Zakahev Mikhailovic
;;
;;      Version 0.1 alpha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

format ELF64 executable

include 'elf.inc'

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;          DATA SEGMENTS
;;        which contains data
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

segment readable writable
    virtual at rsp + 2
        ehdr64 elf_ehdr64
        sz_ehdr64 = $ - rsp
    end virtual

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;      EXECUTABLE SEGMENTS
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

segment readable executable

entry _start

_start:
    ;sub rsp, sz_ehdr64

_open_file:
    mov rax, 0x2
    mov rdi, qword [rsp + 0x10]
    mov rsi, 0
    mov rdx, 777
    syscall
    sub rsp, 0x8
    mov qword [rsp], rax
    ; TODO : read file and get code segment to load it in memory with mmap PROT_EXEC

_exit:
    ;add rsp, sz_ehdr64 + 0x8 ; free stack memory
    mov rax, 0x3c
    xor rdi, rdi
    syscall