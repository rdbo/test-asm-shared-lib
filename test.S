.text
.global my_function
.global my_function_size
.extern printf
.extern mynumber
.extern mymessage

mymessage: .string "Hello from myfunction! Your number is: %d\n";

my_function:
        push %rbp
        mov %rsp, %rbp

        lea mymessage@GOTPCREL(%rip), %rdi
        mov (%rdi), %rdi
        lea mynumber@GOTPCREL(%rip), %rsi
        mov (%rsi), %rsi
        mov (%rsi), %esi
        call printf@PLT

        mov %rbp, %rsp
        pop %rbp
        ret

my_function_size: .quad . - my_function
