;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;          ELF HEADER
;;
;;
;;      man elf to understand
;;
;;      run "man elf" command in terminal
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

struc elf_ehdr64
{
    .e_ident        rb 0x10
    .e_type         rw 0x1
    .e_machine      rw 0x1
    .e_version      rd 0x1
    .e_entry        rq 0x1
    .e_phoff        rq 0x1
    .e_shoff        rq 0x1
    .e_flags        rd 0x1
    .e_ehsize       rw 0x1
    .e_phentsize    rw 0x1
    .e_shentsize    rw 0x1
    .e_shnum        rw 0x1
    .e_shstrndx     rw 0x1
}
