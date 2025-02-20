```assembly
mov eax, [ebx+4]
mov edx, eax ; backup eax
add eax, ecx
jo overflow_handler ; jump to overflow handler if overflow flag is set
mov [ebx], eax
jmp end
overflow_handler:
; handle overflow condition (e.g., set error flag, use larger register)
; ... your overflow handling logic here ...
end:
```