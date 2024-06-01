include \masm32\include\masm32rt.inc

.data

title_msgbox db "david",0
caption_msgbox db "Hello there i'm david",0
yes_msg db "press yes or no to close",0
no_msg db "closing...",0

.code

start:
    push MB_YESNO
    push offset title_msgbox
    push offset caption_msgbox
    push 0
    call MessageBoxA

    cmp eax, 6
    je clicked_yes
    cmp eax,7
    je clicked_no

clicked_yes:
    push offset yes_msg
    call StdOut
    jmp finish

clicked_no:
    push offset no_msg
    call StdOut
    jmp finish


finish:

end start