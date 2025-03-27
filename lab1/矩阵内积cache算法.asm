.LC0:
        .string "\350\247\204\346\250\241"
.LC1:
        .string "\357\274\232"
.LC2:
        .string " ms"
main:
        stp     x29, x30, [sp, -368]!
        mov     x29, sp
        str     x19, [sp, 16]
        str     wzr, [sp, 364]
        b       .L2
.L31:
        ldrsw   x0, [sp, 364]
        mov     x1, 1152921504606846975
        cmp     x0, x1
        bhi     .L3
        lsl     x0, x0, 3
        bl      operator new[](unsigned long)
        str     x0, [sp, 152]
        str     wzr, [sp, 360]
        b       .L5
.L3:
        bl      __cxa_throw_bad_array_new_length
.L10:
        ldrsw   x0, [sp, 364]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L6
        lsl     x2, x0, 2
        ldrsw   x0, [sp, 360]
        lsl     x0, x0, 3
        ldr     x1, [sp, 152]
        add     x19, x1, x0
        mov     x0, x2
        bl      operator new[](unsigned long)
        str     x0, [x19]
        str     wzr, [sp, 356]
        b       .L8
.L6:
        bl      __cxa_throw_bad_array_new_length
.L9:
        ldrsw   x0, [sp, 360]
        lsl     x0, x0, 3
        ldr     x1, [sp, 152]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 356]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w2, [sp, 360]
        ldr     w1, [sp, 356]
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 356]
        add     w0, w0, 1
        str     w0, [sp, 356]
.L8:
        ldr     w1, [sp, 356]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L9
        ldr     w0, [sp, 360]
        add     w0, w0, 1
        str     w0, [sp, 360]
.L5:
        ldr     w1, [sp, 360]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L10
        ldrsw   x0, [sp, 364]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L11
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 144]
        str     wzr, [sp, 352]
        b       .L13
.L11:
        bl      __cxa_throw_bad_array_new_length
.L14:
        ldrsw   x0, [sp, 352]
        lsl     x0, x0, 2
        ldr     x1, [sp, 144]
        add     x0, x1, x0
        ldr     w1, [sp, 352]
        str     w1, [x0]
        ldr     w0, [sp, 352]
        add     w0, w0, 1
        str     w0, [sp, 352]
.L13:
        ldr     w1, [sp, 352]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L14
        ldrsw   x0, [sp, 364]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L15
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 136]
        str     xzr, [sp, 344]
        str     wzr, [sp, 340]
        b       .L17
.L15:
        bl      __cxa_throw_bad_array_new_length
.L24:
        add     x0, sp, 112
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 336]
        b       .L18
.L19:
        ldrsw   x0, [sp, 336]
        lsl     x0, x0, 2
        ldr     x1, [sp, 136]
        add     x0, x1, x0
        str     wzr, [x0]
        ldr     w0, [sp, 336]
        add     w0, w0, 1
        str     w0, [sp, 336]
.L18:
        ldr     w1, [sp, 336]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L19
        str     wzr, [sp, 332]
        b       .L20
.L23:
        str     wzr, [sp, 328]
        b       .L21
.L22:
        ldrsw   x0, [sp, 328]
        lsl     x0, x0, 2
        ldr     x1, [sp, 136]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldrsw   x0, [sp, 332]
        lsl     x0, x0, 3
        ldr     x1, [sp, 152]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 328]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 332]
        lsl     x0, x0, 2
        ldr     x3, [sp, 144]
        add     x0, x3, x0
        ldr     w0, [x0]
        mul     w1, w1, w0
        ldrsw   x0, [sp, 328]
        lsl     x0, x0, 2
        ldr     x3, [sp, 136]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 328]
        add     w0, w0, 1
        str     w0, [sp, 328]
.L21:
        ldr     w1, [sp, 328]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L22
        ldr     w0, [sp, 332]
        add     w0, w0, 1
        str     w0, [sp, 332]
.L20:
        ldr     w1, [sp, 332]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L23
        add     x0, sp, 96
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 96]
        ldr     x0, [sp, 112]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 104]
        ldr     x0, [sp, 120]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 128]
        ldr     x1, [sp, 344]
        ldr     x0, [sp, 128]
        add     x0, x1, x0
        str     x0, [sp, 344]
        ldr     w0, [sp, 340]
        add     w0, w0, 1
        str     w0, [sp, 340]
.L17:
        ldr     w0, [sp, 340]
        cmp     w0, 9
        ble     .L24
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 364]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 344]
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
        str     wzr, [sp, 324]
        b       .L25
.L27:
        ldrsw   x0, [sp, 324]
        lsl     x0, x0, 3
        ldr     x1, [sp, 152]
        add     x0, x1, x0
        ldr     x0, [x0]
        cmp     x0, 0
        beq     .L26
        ldrsw   x0, [sp, 324]
        lsl     x0, x0, 3
        ldr     x1, [sp, 152]
        add     x0, x1, x0
        ldr     x0, [x0]
        bl      operator delete[](void*)
.L26:
        ldr     w0, [sp, 324]
        add     w0, w0, 1
        str     w0, [sp, 324]
.L25:
        ldr     w1, [sp, 324]
        ldr     w0, [sp, 364]
        cmp     w1, w0
        blt     .L27
        ldr     x0, [sp, 152]
        cmp     x0, 0
        beq     .L28
        ldr     x0, [sp, 152]
        bl      operator delete[](void*)
.L28:
        ldr     x0, [sp, 144]
        cmp     x0, 0
        beq     .L29
        ldr     x0, [sp, 144]
        bl      operator delete[](void*)
.L29:
        ldr     x0, [sp, 136]
        cmp     x0, 0
        beq     .L30
        ldr     x0, [sp, 136]
        bl      operator delete[](void*)
.L30:
        ldr     w0, [sp, 364]
        add     w0, w0, 100
        str     w0, [sp, 364]
.L2:
        ldr     w0, [sp, 364]
        cmp     w0, 1000
        ble     .L31
        mov     w0, 2000
        str     w0, [sp, 320]
        b       .L32
.L61:
        ldrsw   x0, [sp, 320]
        mov     x1, 1152921504606846975
        cmp     x0, x1
        bhi     .L33
        lsl     x0, x0, 3
        bl      operator new[](unsigned long)
        str     x0, [sp, 184]
        str     wzr, [sp, 316]
        b       .L35
.L33:
        bl      __cxa_throw_bad_array_new_length
.L40:
        ldrsw   x0, [sp, 320]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L36
        lsl     x2, x0, 2
        ldrsw   x0, [sp, 316]
        lsl     x0, x0, 3
        ldr     x1, [sp, 184]
        add     x19, x1, x0
        mov     x0, x2
        bl      operator new[](unsigned long)
        str     x0, [x19]
        str     wzr, [sp, 312]
        b       .L38
.L36:
        bl      __cxa_throw_bad_array_new_length
.L39:
        ldrsw   x0, [sp, 316]
        lsl     x0, x0, 3
        ldr     x1, [sp, 184]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 312]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w2, [sp, 316]
        ldr     w1, [sp, 312]
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 312]
        add     w0, w0, 1
        str     w0, [sp, 312]
.L38:
        ldr     w1, [sp, 312]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L39
        ldr     w0, [sp, 316]
        add     w0, w0, 1
        str     w0, [sp, 316]
.L35:
        ldr     w1, [sp, 316]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L40
        ldrsw   x0, [sp, 320]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L41
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 176]
        str     wzr, [sp, 308]
        b       .L43
.L41:
        bl      __cxa_throw_bad_array_new_length
.L44:
        ldrsw   x0, [sp, 308]
        lsl     x0, x0, 2
        ldr     x1, [sp, 176]
        add     x0, x1, x0
        ldr     w1, [sp, 308]
        str     w1, [x0]
        ldr     w0, [sp, 308]
        add     w0, w0, 1
        str     w0, [sp, 308]
.L43:
        ldr     w1, [sp, 308]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L44
        ldrsw   x0, [sp, 320]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L45
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 168]
        str     xzr, [sp, 296]
        str     wzr, [sp, 292]
        b       .L47
.L45:
        bl      __cxa_throw_bad_array_new_length
.L54:
        add     x0, sp, 80
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 288]
        b       .L48
.L49:
        ldrsw   x0, [sp, 288]
        lsl     x0, x0, 2
        ldr     x1, [sp, 168]
        add     x0, x1, x0
        str     wzr, [x0]
        ldr     w0, [sp, 288]
        add     w0, w0, 1
        str     w0, [sp, 288]
.L48:
        ldr     w1, [sp, 288]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L49
        str     wzr, [sp, 284]
        b       .L50
.L53:
        str     wzr, [sp, 280]
        b       .L51
.L52:
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        ldr     x1, [sp, 168]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldrsw   x0, [sp, 284]
        lsl     x0, x0, 3
        ldr     x1, [sp, 184]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 284]
        lsl     x0, x0, 2
        ldr     x3, [sp, 176]
        add     x0, x3, x0
        ldr     w0, [x0]
        mul     w1, w1, w0
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        ldr     x3, [sp, 168]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 280]
        add     w0, w0, 1
        str     w0, [sp, 280]
.L51:
        ldr     w1, [sp, 280]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L52
        ldr     w0, [sp, 284]
        add     w0, w0, 1
        str     w0, [sp, 284]
.L50:
        ldr     w1, [sp, 284]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L53
        add     x0, sp, 64
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 64]
        ldr     x0, [sp, 80]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 72]
        ldr     x0, [sp, 88]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 160]
        ldr     x1, [sp, 296]
        ldr     x0, [sp, 160]
        add     x0, x1, x0
        str     x0, [sp, 296]
        ldr     w0, [sp, 292]
        add     w0, w0, 1
        str     w0, [sp, 292]
.L47:
        ldr     w0, [sp, 292]
        cmp     w0, 4
        ble     .L54
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 320]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 296]
        scvtf   d1, d0
        fmov    d0, 5.0e+0
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
        str     wzr, [sp, 276]
        b       .L55
.L57:
        ldrsw   x0, [sp, 276]
        lsl     x0, x0, 3
        ldr     x1, [sp, 184]
        add     x0, x1, x0
        ldr     x0, [x0]
        cmp     x0, 0
        beq     .L56
        ldrsw   x0, [sp, 276]
        lsl     x0, x0, 3
        ldr     x1, [sp, 184]
        add     x0, x1, x0
        ldr     x0, [x0]
        bl      operator delete[](void*)
.L56:
        ldr     w0, [sp, 276]
        add     w0, w0, 1
        str     w0, [sp, 276]
.L55:
        ldr     w1, [sp, 276]
        ldr     w0, [sp, 320]
        cmp     w1, w0
        blt     .L57
        ldr     x0, [sp, 184]
        cmp     x0, 0
        beq     .L58
        ldr     x0, [sp, 184]
        bl      operator delete[](void*)
.L58:
        ldr     x0, [sp, 176]
        cmp     x0, 0
        beq     .L59
        ldr     x0, [sp, 176]
        bl      operator delete[](void*)
.L59:
        ldr     x0, [sp, 168]
        cmp     x0, 0
        beq     .L60
        ldr     x0, [sp, 168]
        bl      operator delete[](void*)
.L60:
        ldr     w0, [sp, 320]
        add     w0, w0, 1000
        str     w0, [sp, 320]
.L32:
        ldr     w1, [sp, 320]
        mov     w0, 5000
        cmp     w1, w0
        ble     .L61
        mov     w0, 10000
        str     w0, [sp, 272]
        b       .L62
.L91:
        ldrsw   x0, [sp, 272]
        mov     x1, 1152921504606846975
        cmp     x0, x1
        bhi     .L63
        lsl     x0, x0, 3
        bl      operator new[](unsigned long)
        str     x0, [sp, 216]
        str     wzr, [sp, 268]
        b       .L65
.L63:
        bl      __cxa_throw_bad_array_new_length
.L70:
        ldrsw   x0, [sp, 272]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L66
        lsl     x2, x0, 2
        ldrsw   x0, [sp, 268]
        lsl     x0, x0, 3
        ldr     x1, [sp, 216]
        add     x19, x1, x0
        mov     x0, x2
        bl      operator new[](unsigned long)
        str     x0, [x19]
        str     wzr, [sp, 264]
        b       .L68
.L66:
        bl      __cxa_throw_bad_array_new_length
.L69:
        ldrsw   x0, [sp, 268]
        lsl     x0, x0, 3
        ldr     x1, [sp, 216]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 264]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w2, [sp, 268]
        ldr     w1, [sp, 264]
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 264]
        add     w0, w0, 1
        str     w0, [sp, 264]
.L68:
        ldr     w1, [sp, 264]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L69
        ldr     w0, [sp, 268]
        add     w0, w0, 1
        str     w0, [sp, 268]
.L65:
        ldr     w1, [sp, 268]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L70
        ldrsw   x0, [sp, 272]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L71
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 208]
        str     wzr, [sp, 260]
        b       .L73
.L71:
        bl      __cxa_throw_bad_array_new_length
.L74:
        ldrsw   x0, [sp, 260]
        lsl     x0, x0, 2
        ldr     x1, [sp, 208]
        add     x0, x1, x0
        ldr     w1, [sp, 260]
        str     w1, [x0]
        ldr     w0, [sp, 260]
        add     w0, w0, 1
        str     w0, [sp, 260]
.L73:
        ldr     w1, [sp, 260]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L74
        ldrsw   x0, [sp, 272]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L75
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 200]
        str     xzr, [sp, 248]
        str     wzr, [sp, 244]
        b       .L77
.L75:
        bl      __cxa_throw_bad_array_new_length
.L84:
        add     x0, sp, 48
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 240]
        b       .L78
.L79:
        ldrsw   x0, [sp, 240]
        lsl     x0, x0, 2
        ldr     x1, [sp, 200]
        add     x0, x1, x0
        str     wzr, [x0]
        ldr     w0, [sp, 240]
        add     w0, w0, 1
        str     w0, [sp, 240]
.L78:
        ldr     w1, [sp, 240]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L79
        str     wzr, [sp, 236]
        b       .L80
.L83:
        str     wzr, [sp, 232]
        b       .L81
.L82:
        ldrsw   x0, [sp, 232]
        lsl     x0, x0, 2
        ldr     x1, [sp, 200]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldrsw   x0, [sp, 236]
        lsl     x0, x0, 3
        ldr     x1, [sp, 216]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 232]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 236]
        lsl     x0, x0, 2
        ldr     x3, [sp, 208]
        add     x0, x3, x0
        ldr     w0, [x0]
        mul     w1, w1, w0
        ldrsw   x0, [sp, 232]
        lsl     x0, x0, 2
        ldr     x3, [sp, 200]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 232]
        add     w0, w0, 1
        str     w0, [sp, 232]
.L81:
        ldr     w1, [sp, 232]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L82
        ldr     w0, [sp, 236]
        add     w0, w0, 1
        str     w0, [sp, 236]
.L80:
        ldr     w1, [sp, 236]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L83
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
        str     x0, [sp, 192]
        ldr     x1, [sp, 248]
        ldr     x0, [sp, 192]
        add     x0, x1, x0
        str     x0, [sp, 248]
        ldr     w0, [sp, 244]
        add     w0, w0, 1
        str     w0, [sp, 244]
.L77:
        ldr     w0, [sp, 244]
        cmp     w0, 4
        ble     .L84
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 272]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 248]
        scvtf   d1, d0
        fmov    d0, 5.0e+0
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
        str     wzr, [sp, 228]
        b       .L85
.L87:
        ldrsw   x0, [sp, 228]
        lsl     x0, x0, 3
        ldr     x1, [sp, 216]
        add     x0, x1, x0
        ldr     x0, [x0]
        cmp     x0, 0
        beq     .L86
        ldrsw   x0, [sp, 228]
        lsl     x0, x0, 3
        ldr     x1, [sp, 216]
        add     x0, x1, x0
        ldr     x0, [x0]
        bl      operator delete[](void*)
.L86:
        ldr     w0, [sp, 228]
        add     w0, w0, 1
        str     w0, [sp, 228]
.L85:
        ldr     w1, [sp, 228]
        ldr     w0, [sp, 272]
        cmp     w1, w0
        blt     .L87
        ldr     x0, [sp, 216]
        cmp     x0, 0
        beq     .L88
        ldr     x0, [sp, 216]
        bl      operator delete[](void*)
.L88:
        ldr     x0, [sp, 208]
        cmp     x0, 0
        beq     .L89
        ldr     x0, [sp, 208]
        bl      operator delete[](void*)
.L89:
        ldr     x0, [sp, 200]
        cmp     x0, 0
        beq     .L90
        ldr     x0, [sp, 200]
        bl      operator delete[](void*)
.L90:
        ldr     w1, [sp, 272]
        mov     w0, 10000
        add     w0, w1, w0
        str     w0, [sp, 272]
.L62:
        ldr     w1, [sp, 272]
        mov     w0, 40000
        cmp     w1, w0
        ble     .L91
        mov     w0, 0
        ldr     x19, [sp, 16]
        ldp     x29, x30, [sp], 368
        ret