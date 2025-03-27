.LC0:
        .string ""
.LC1:
        .string "\350\247\204\346\250\241"
.LC2:
        .string "\357\274\232"
.LC3:
        .string " ms"
main:
        stp     x29, x30, [sp, -96]!
        mov     x29, sp
        mov     w0, 524288
        str     w0, [sp, 92]
        b       .L2
.L13:
        ldrsw   x0, [sp, 92]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L3
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 56]
        str     wzr, [sp, 88]
        b       .L5
.L3:
        bl      __cxa_throw_bad_array_new_length
.L6:
        ldrsw   x0, [sp, 88]
        lsl     x0, x0, 2
        ldr     x1, [sp, 56]
        add     x0, x1, x0
        ldr     w1, [sp, 88]
        str     w1, [x0]
        ldr     w0, [sp, 88]
        add     w0, w0, 1
        str     w0, [sp, 88]
.L5:
        ldr     w1, [sp, 88]
        ldr     w0, [sp, 92]
        cmp     w1, w0
        blt     .L6
        str     xzr, [sp, 80]
        str     wzr, [sp, 76]
        b       .L7
.L11:
        str     wzr, [sp, 72]
        add     x0, sp, 40
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 68]
        b       .L8
.L9:
        ldrsw   x0, [sp, 68]
        lsl     x0, x0, 2
        ldr     x1, [sp, 56]
        add     x0, x1, x0
        ldr     w0, [x0]
        ldr     w1, [sp, 72]
        add     w0, w1, w0
        str     w0, [sp, 72]
        ldr     w0, [sp, 68]
        add     w0, w0, 1
        str     w0, [sp, 68]
.L8:
        ldr     w1, [sp, 68]
        ldr     w0, [sp, 92]
        cmp     w1, w0
        blt     .L9
        add     x0, sp, 24
        mov     x1, 0
        bl      gettimeofday
        ldr     w0, [sp, 72]
        cmp     w0, 0
        bne     .L10
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
.L10:
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
        ldr     x1, [sp, 80]
        add     x0, x1, x0
        str     x0, [sp, 80]
        ldr     w0, [sp, 76]
        add     w0, w0, 1
        str     w0, [sp, 76]
.L7:
        ldr     w0, [sp, 76]
        cmp     w0, 9
        ble     .L11
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 92]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC2
        add     x1, x0, :lo12:.LC2
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
        adrp    x0, .LC3
        add     x1, x0, :lo12:.LC3
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     x2, x0
        adrp    x0, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        add     x1, x0, :lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        ldr     x0, [sp, 56]
        cmp     x0, 0
        beq     .L12
        ldr     x0, [sp, 56]
        bl      operator delete[](void*)
.L12:
        ldr     w0, [sp, 92]
        lsl     w0, w0, 1
        str     w0, [sp, 92]
.L2:
        ldr     w0, [sp, 92]
        cmp     w0, 4194304
        ble     .L13
        mov     w0, 0
        ldp     x29, x30, [sp], 96
        ret