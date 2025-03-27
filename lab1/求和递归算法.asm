recursion(int*, int):
        stp     x29, x30, [sp, -48]!
        mov     x29, sp
        str     x0, [sp, 24]
        str     w1, [sp, 20]
        ldr     w0, [sp, 20]
        cmp     w0, 1
        beq     .L6
        str     wzr, [sp, 44]
        b       .L4
.L5:
        ldrsw   x0, [sp, 44]
        lsl     x0, x0, 2
        ldr     x1, [sp, 24]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldr     w1, [sp, 20]
        ldr     w0, [sp, 44]
        sub     w0, w1, w0
        sxtw    x0, w0
        lsl     x0, x0, 2
        sub     x0, x0, #4
        ldr     x1, [sp, 24]
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 44]
        lsl     x0, x0, 2
        ldr     x3, [sp, 24]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 44]
        add     w0, w0, 1
        str     w0, [sp, 44]
.L4:
        ldr     w0, [sp, 20]
        lsr     w1, w0, 31
        add     w0, w1, w0
        asr     w0, w0, 1
        mov     w1, w0
        ldr     w0, [sp, 44]
        cmp     w0, w1
        blt     .L5
        ldr     w0, [sp, 20]
        lsr     w1, w0, 31
        add     w0, w1, w0
        asr     w0, w0, 1
        mov     w1, w0
        ldr     x0, [sp, 24]
        bl      recursion(int*, int)
        b       .L1
.L6:
        nop
.L1:
        ldp     x29, x30, [sp], 48
        ret
.LC0:
        .string "\350\247\204\346\250\241"
.LC1:
        .string "\357\274\232"
.LC2:
        .string " ms"
main:
        stp     x29, x30, [sp, -96]!
        mov     x29, sp
        mov     w0, 524288
        str     w0, [sp, 92]
        b       .L8
.L16:
        ldrsw   x0, [sp, 92]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L9
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 64]
        str     xzr, [sp, 80]
        str     wzr, [sp, 76]
        b       .L11
.L9:
        bl      __cxa_throw_bad_array_new_length
.L14:
        str     wzr, [sp, 72]
        b       .L12
.L13:
        ldrsw   x0, [sp, 72]
        lsl     x0, x0, 2
        ldr     x1, [sp, 64]
        add     x0, x1, x0
        ldr     w1, [sp, 72]
        str     w1, [x0]
        ldr     w0, [sp, 72]
        add     w0, w0, 1
        str     w0, [sp, 72]
.L12:
        ldr     w1, [sp, 72]
        ldr     w0, [sp, 92]
        cmp     w1, w0
        blt     .L13
        add     x0, sp, 40
        mov     x1, 0
        bl      gettimeofday
        ldr     w1, [sp, 92]
        ldr     x0, [sp, 64]
        bl      recursion(int*, int)
        add     x0, sp, 24
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 24]
        ldr     x0, [sp, 40]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 32]
        ldr     x0, [sp, 48]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 56]
        ldr     x1, [sp, 80]
        ldr     x0, [sp, 56]
        add     x0, x1, x0
        str     x0, [sp, 80]
        ldr     w0, [sp, 76]
        add     w0, w0, 1
        str     w0, [sp, 76]
.L11:
        ldr     w0, [sp, 76]
        cmp     w0, 9
        ble     .L14
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 92]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 80]
        scvtf   d1, d0
        fmov    d0, 1.0e+1
        fdiv    d0, d1, d0
        mov     x1, 70368744177664
        movk    x1, 0x408f, lsl 48
        fmov    d1, x1
        fdiv    d0, d0, d1
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(double)
        mov     x2, x0
        adrp    x0, .LC2
        add     x1, x0, :lo12:.LC2
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     x2, x0
        adrp    x0, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        add     x1, x0, :lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        ldr     x0, [sp, 64]
        cmp     x0, 0
        beq     .L15
        ldr     x0, [sp, 64]
        bl      operator delete[](void*)
.L15:
        ldr     w0, [sp, 92]
        lsl     w0, w0, 1
        str     w0, [sp, 92]
.L8:
        ldr     w0, [sp, 92]
        cmp     w0, 4194304
        ble     .L16
        mov     w0, 0
        ldp     x29, x30, [sp], 96
        ret