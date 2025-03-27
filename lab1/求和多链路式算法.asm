.LC0:
        .string "\350\247\204\346\250\241"
.LC1:
        .string "\357\274\232"
.LC2:
        .string " ms"
main:
        stp     x29, x30, [sp, -112]!
        mov     x29, sp
        mov     w0, 524288
        str     w0, [sp, 108]
        b       .L2
.L12:
        ldrsw   x0, [sp, 108]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L3
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 72]
        str     xzr, [sp, 96]
        str     wzr, [sp, 92]
        b       .L5
.L3:
        bl      __cxa_throw_bad_array_new_length
.L10:
        str     wzr, [sp, 88]
        b       .L6
.L7:
        ldrsw   x0, [sp, 88]
        lsl     x0, x0, 2
        ldr     x1, [sp, 72]
        add     x0, x1, x0
        ldr     w1, [sp, 88]
        str     w1, [x0]
        ldr     w0, [sp, 88]
        add     w0, w0, 1
        str     w0, [sp, 88]
.L6:
        ldr     w1, [sp, 88]
        ldr     w0, [sp, 108]
        cmp     w1, w0
        blt     .L7
        str     wzr, [sp, 28]
        str     wzr, [sp, 24]
        add     x0, sp, 48
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 84]
        b       .L8
.L9:
        ldrsw   x0, [sp, 84]
        lsl     x0, x0, 2
        ldr     x1, [sp, 72]
        add     x0, x1, x0
        ldr     w1, [x0]
        ldr     w0, [sp, 28]
        add     w0, w1, w0
        str     w0, [sp, 28]
        ldrsw   x0, [sp, 84]
        add     x0, x0, 1
        lsl     x0, x0, 2
        ldr     x1, [sp, 72]
        add     x0, x1, x0
        ldr     w1, [x0]
        ldr     w0, [sp, 24]
        add     w0, w1, w0
        str     w0, [sp, 24]
        ldr     w0, [sp, 84]
        add     w0, w0, 2
        str     w0, [sp, 84]
.L8:
        ldr     w1, [sp, 84]
        ldr     w0, [sp, 108]
        cmp     w1, w0
        blt     .L9
        ldr     w1, [sp, 28]
        ldr     w0, [sp, 24]
        add     w0, w1, w0
        str     w0, [sp, 20]
        add     x0, sp, 32
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 32]
        ldr     x0, [sp, 48]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 40]
        ldr     x0, [sp, 56]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 64]
        ldr     x1, [sp, 96]
        ldr     x0, [sp, 64]
        add     x0, x1, x0
        str     x0, [sp, 96]
        ldr     w0, [sp, 92]
        add     w0, w0, 1
        str     w0, [sp, 92]
.L5:
        ldr     w0, [sp, 92]
        cmp     w0, 9
        ble     .L10
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 108]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 96]
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
        ldr     x0, [sp, 72]
        cmp     x0, 0
        beq     .L11
        ldr     x0, [sp, 72]
        bl      operator delete[](void*)
.L11:
        ldr     w0, [sp, 108]
        lsl     w0, w0, 1
        str     w0, [sp, 108]
.L2:
        ldr     w0, [sp, 108]
        cmp     w0, 4194304
        ble     .L12
        mov     w0, 0
        ldp     x29, x30, [sp], 112
        ret