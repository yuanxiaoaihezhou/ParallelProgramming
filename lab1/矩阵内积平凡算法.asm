.LC0:
        .string "\350\247\204\346\250\241"
.LC1:
        .string "\357\274\232"
.LC2:
        .string " ms"
main:
        stp     x29, x30, [sp, -352]!
        mov     x29, sp
        str     x19, [sp, 16]
        str     wzr, [sp, 348]
        b       .L2
.L29:
        ldrsw   x0, [sp, 348]
        mov     x1, 1152921504606846975
        cmp     x0, x1
        bhi     .L3
        lsl     x0, x0, 3
        bl      operator new[](unsigned long)
        str     x0, [sp, 160]
        str     wzr, [sp, 344]
        b       .L5
.L3:
        bl      __cxa_throw_bad_array_new_length
.L10:
        ldrsw   x0, [sp, 348]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L6
        lsl     x2, x0, 2
        ldrsw   x0, [sp, 344]
        lsl     x0, x0, 3
        ldr     x1, [sp, 160]
        add     x19, x1, x0
        mov     x0, x2
        bl      operator new[](unsigned long)
        str     x0, [x19]
        str     wzr, [sp, 340]
        b       .L8
.L6:
        bl      __cxa_throw_bad_array_new_length
.L9:
        ldrsw   x0, [sp, 344]
        lsl     x0, x0, 3
        ldr     x1, [sp, 160]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 340]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w2, [sp, 344]
        ldr     w1, [sp, 340]
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 340]
        add     w0, w0, 1
        str     w0, [sp, 340]
.L8:
        ldr     w1, [sp, 340]
        ldr     w0, [sp, 348]
        cmp     w1, w0
        blt     .L9
        ldr     w0, [sp, 344]
        add     w0, w0, 1
        str     w0, [sp, 344]
.L5:
        ldr     w1, [sp, 344]
        ldr     w0, [sp, 348]
        cmp     w1, w0
        blt     .L10
        ldrsw   x0, [sp, 348]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L11
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 152]
        str     wzr, [sp, 336]
        b       .L13
.L11:
        bl      __cxa_throw_bad_array_new_length
.L14:
        ldrsw   x0, [sp, 336]
        lsl     x0, x0, 2
        ldr     x1, [sp, 152]
        add     x0, x1, x0
        ldr     w1, [sp, 336]
        str     w1, [x0]
        ldr     w0, [sp, 336]
        add     w0, w0, 1
        str     w0, [sp, 336]
.L13:
        ldr     w1, [sp, 336]
        ldr     w0, [sp, 348]
        cmp     w1, w0
        blt     .L14
        ldrsw   x0, [sp, 348]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L15
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 144]
        str     xzr, [sp, 328]
        str     wzr, [sp, 324]
        b       .L17
.L15:
        bl      __cxa_throw_bad_array_new_length
.L22:
        add     x0, sp, 120
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 320]
        b       .L18
.L21:
        ldrsw   x0, [sp, 320]
        lsl     x0, x0, 2
        ldr     x1, [sp, 144]
        add     x0, x1, x0
        str     wzr, [x0]
        str     wzr, [sp, 316]
        b       .L19
.L20:
        ldrsw   x0, [sp, 320]
        lsl     x0, x0, 2
        ldr     x1, [sp, 144]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldrsw   x0, [sp, 316]
        lsl     x0, x0, 3
        ldr     x1, [sp, 160]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 320]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 316]
        lsl     x0, x0, 2
        ldr     x3, [sp, 152]
        add     x0, x3, x0
        ldr     w0, [x0]
        mul     w1, w1, w0
        ldrsw   x0, [sp, 320]
        lsl     x0, x0, 2
        ldr     x3, [sp, 144]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 316]
        add     w0, w0, 1
        str     w0, [sp, 316]
.L19:
        ldr     w1, [sp, 316]
        ldr     w0, [sp, 348]
        cmp     w1, w0
        blt     .L20
        ldr     w0, [sp, 320]
        add     w0, w0, 1
        str     w0, [sp, 320]
.L18:
        ldr     w1, [sp, 320]
        ldr     w0, [sp, 348]
        cmp     w1, w0
        blt     .L21
        add     x0, sp, 104
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 104]
        ldr     x0, [sp, 120]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 112]
        ldr     x0, [sp, 128]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 136]
        ldr     x1, [sp, 328]
        ldr     x0, [sp, 136]
        add     x0, x1, x0
        str     x0, [sp, 328]
        ldr     w0, [sp, 324]
        add     w0, w0, 1
        str     w0, [sp, 324]
.L17:
        ldr     w0, [sp, 324]
        cmp     w0, 9
        ble     .L22
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 348]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 328]
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
        str     wzr, [sp, 312]
        b       .L23
.L25:
        ldrsw   x0, [sp, 312]
        lsl     x0, x0, 3
        ldr     x1, [sp, 160]
        add     x0, x1, x0
        ldr     x0, [x0]
        cmp     x0, 0
        beq     .L24
        ldrsw   x0, [sp, 312]
        lsl     x0, x0, 3
        ldr     x1, [sp, 160]
        add     x0, x1, x0
        ldr     x0, [x0]
        bl      operator delete[](void*)
.L24:
        ldr     w0, [sp, 312]
        add     w0, w0, 1
        str     w0, [sp, 312]
.L23:
        ldr     w1, [sp, 312]
        ldr     w0, [sp, 348]
        cmp     w1, w0
        blt     .L25
        ldr     x0, [sp, 160]
        cmp     x0, 0
        beq     .L26
        ldr     x0, [sp, 160]
        bl      operator delete[](void*)
.L26:
        ldr     x0, [sp, 152]
        cmp     x0, 0
        beq     .L27
        ldr     x0, [sp, 152]
        bl      operator delete[](void*)
.L27:
        ldr     x0, [sp, 144]
        cmp     x0, 0
        beq     .L28
        ldr     x0, [sp, 144]
        bl      operator delete[](void*)
.L28:
        ldr     w0, [sp, 348]
        add     w0, w0, 100
        str     w0, [sp, 348]
.L2:
        ldr     w0, [sp, 348]
        cmp     w0, 1000
        ble     .L29
        mov     w0, 2000
        str     w0, [sp, 308]
        b       .L30
.L57:
        ldrsw   x0, [sp, 308]
        mov     x1, 1152921504606846975
        cmp     x0, x1
        bhi     .L31
        lsl     x0, x0, 3
        bl      operator new[](unsigned long)
        str     x0, [sp, 192]
        str     wzr, [sp, 304]
        b       .L33
.L31:
        bl      __cxa_throw_bad_array_new_length
.L38:
        ldrsw   x0, [sp, 308]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L34
        lsl     x2, x0, 2
        ldrsw   x0, [sp, 304]
        lsl     x0, x0, 3
        ldr     x1, [sp, 192]
        add     x19, x1, x0
        mov     x0, x2
        bl      operator new[](unsigned long)
        str     x0, [x19]
        str     wzr, [sp, 300]
        b       .L36
.L34:
        bl      __cxa_throw_bad_array_new_length
.L37:
        ldrsw   x0, [sp, 304]
        lsl     x0, x0, 3
        ldr     x1, [sp, 192]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 300]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w2, [sp, 304]
        ldr     w1, [sp, 300]
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 300]
        add     w0, w0, 1
        str     w0, [sp, 300]
.L36:
        ldr     w1, [sp, 300]
        ldr     w0, [sp, 308]
        cmp     w1, w0
        blt     .L37
        ldr     w0, [sp, 304]
        add     w0, w0, 1
        str     w0, [sp, 304]
.L33:
        ldr     w1, [sp, 304]
        ldr     w0, [sp, 308]
        cmp     w1, w0
        blt     .L38
        ldrsw   x0, [sp, 308]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L39
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 184]
        str     wzr, [sp, 296]
        b       .L41
.L39:
        bl      __cxa_throw_bad_array_new_length
.L42:
        ldrsw   x0, [sp, 296]
        lsl     x0, x0, 2
        ldr     x1, [sp, 184]
        add     x0, x1, x0
        ldr     w1, [sp, 296]
        str     w1, [x0]
        ldr     w0, [sp, 296]
        add     w0, w0, 1
        str     w0, [sp, 296]
.L41:
        ldr     w1, [sp, 296]
        ldr     w0, [sp, 308]
        cmp     w1, w0
        blt     .L42
        ldrsw   x0, [sp, 308]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L43
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 176]
        str     xzr, [sp, 288]
        str     wzr, [sp, 284]
        b       .L45
.L43:
        bl      __cxa_throw_bad_array_new_length
.L50:
        add     x0, sp, 88
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 280]
        b       .L46
.L49:
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        ldr     x1, [sp, 176]
        add     x0, x1, x0
        str     wzr, [x0]
        str     wzr, [sp, 276]
        b       .L47
.L48:
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        ldr     x1, [sp, 176]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldrsw   x0, [sp, 276]
        lsl     x0, x0, 3
        ldr     x1, [sp, 192]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 276]
        lsl     x0, x0, 2
        ldr     x3, [sp, 184]
        add     x0, x3, x0
        ldr     w0, [x0]
        mul     w1, w1, w0
        ldrsw   x0, [sp, 280]
        lsl     x0, x0, 2
        ldr     x3, [sp, 176]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 276]
        add     w0, w0, 1
        str     w0, [sp, 276]
.L47:
        ldr     w1, [sp, 276]
        ldr     w0, [sp, 308]
        cmp     w1, w0
        blt     .L48
        ldr     w0, [sp, 280]
        add     w0, w0, 1
        str     w0, [sp, 280]
.L46:
        ldr     w1, [sp, 280]
        ldr     w0, [sp, 308]
        cmp     w1, w0
        blt     .L49
        add     x0, sp, 72
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 72]
        ldr     x0, [sp, 88]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 80]
        ldr     x0, [sp, 96]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 168]
        ldr     x1, [sp, 288]
        ldr     x0, [sp, 168]
        add     x0, x1, x0
        str     x0, [sp, 288]
        ldr     w0, [sp, 284]
        add     w0, w0, 1
        str     w0, [sp, 284]
.L45:
        ldr     w0, [sp, 284]
        cmp     w0, 4
        ble     .L50
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 308]
        bl      std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     x2, x0
        adrp    x0, .LC1
        add     x1, x0, :lo12:.LC1
        mov     x0, x2
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     d0, [sp, 288]
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
        str     wzr, [sp, 272]
        b       .L51
.L53:
        ldrsw   x0, [sp, 272]
        lsl     x0, x0, 3
        ldr     x1, [sp, 192]
        add     x0, x1, x0
        ldr     x0, [x0]
        cmp     x0, 0
        beq     .L52
        ldrsw   x0, [sp, 272]
        lsl     x0, x0, 3
        ldr     x1, [sp, 192]
        add     x0, x1, x0
        ldr     x0, [x0]
        bl      operator delete[](void*)
.L52:
        ldr     w0, [sp, 272]
        add     w0, w0, 1
        str     w0, [sp, 272]
.L51:
        ldr     w1, [sp, 272]
        ldr     w0, [sp, 308]
        cmp     w1, w0
        blt     .L53
        ldr     x0, [sp, 192]
        cmp     x0, 0
        beq     .L54
        ldr     x0, [sp, 192]
        bl      operator delete[](void*)
.L54:
        ldr     x0, [sp, 184]
        cmp     x0, 0
        beq     .L55
        ldr     x0, [sp, 184]
        bl      operator delete[](void*)
.L55:
        ldr     x0, [sp, 176]
        cmp     x0, 0
        beq     .L56
        ldr     x0, [sp, 176]
        bl      operator delete[](void*)
.L56:
        ldr     w0, [sp, 308]
        add     w0, w0, 1000
        str     w0, [sp, 308]
.L30:
        ldr     w1, [sp, 308]
        mov     w0, 5000
        cmp     w1, w0
        ble     .L57
        mov     w0, 10000
        str     w0, [sp, 268]
        b       .L58
.L85:
        ldrsw   x0, [sp, 268]
        mov     x1, 1152921504606846975
        cmp     x0, x1
        bhi     .L59
        lsl     x0, x0, 3
        bl      operator new[](unsigned long)
        str     x0, [sp, 224]
        str     wzr, [sp, 264]
        b       .L61
.L59:
        bl      __cxa_throw_bad_array_new_length
.L66:
        ldrsw   x0, [sp, 268]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L62
        lsl     x2, x0, 2
        ldrsw   x0, [sp, 264]
        lsl     x0, x0, 3
        ldr     x1, [sp, 224]
        add     x19, x1, x0
        mov     x0, x2
        bl      operator new[](unsigned long)
        str     x0, [x19]
        str     wzr, [sp, 260]
        b       .L64
.L62:
        bl      __cxa_throw_bad_array_new_length
.L65:
        ldrsw   x0, [sp, 264]
        lsl     x0, x0, 3
        ldr     x1, [sp, 224]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 260]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w2, [sp, 264]
        ldr     w1, [sp, 260]
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 260]
        add     w0, w0, 1
        str     w0, [sp, 260]
.L64:
        ldr     w1, [sp, 260]
        ldr     w0, [sp, 268]
        cmp     w1, w0
        blt     .L65
        ldr     w0, [sp, 264]
        add     w0, w0, 1
        str     w0, [sp, 264]
.L61:
        ldr     w1, [sp, 264]
        ldr     w0, [sp, 268]
        cmp     w1, w0
        blt     .L66
        ldrsw   x0, [sp, 268]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L67
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 216]
        str     wzr, [sp, 256]
        b       .L69
.L67:
        bl      __cxa_throw_bad_array_new_length
.L70:
        ldrsw   x0, [sp, 256]
        lsl     x0, x0, 2
        ldr     x1, [sp, 216]
        add     x0, x1, x0
        ldr     w1, [sp, 256]
        str     w1, [x0]
        ldr     w0, [sp, 256]
        add     w0, w0, 1
        str     w0, [sp, 256]
.L69:
        ldr     w1, [sp, 256]
        ldr     w0, [sp, 268]
        cmp     w1, w0
        blt     .L70
        ldrsw   x0, [sp, 268]
        mov     x1, 2305843009213693950
        cmp     x0, x1
        bhi     .L71
        lsl     x0, x0, 2
        bl      operator new[](unsigned long)
        str     x0, [sp, 208]
        str     xzr, [sp, 248]
        str     wzr, [sp, 244]
        b       .L73
.L71:
        bl      __cxa_throw_bad_array_new_length
.L78:
        add     x0, sp, 56
        mov     x1, 0
        bl      gettimeofday
        str     wzr, [sp, 240]
        b       .L74
.L77:
        ldrsw   x0, [sp, 240]
        lsl     x0, x0, 2
        ldr     x1, [sp, 208]
        add     x0, x1, x0
        str     wzr, [x0]
        str     wzr, [sp, 236]
        b       .L75
.L76:
        ldrsw   x0, [sp, 240]
        lsl     x0, x0, 2
        ldr     x1, [sp, 208]
        add     x0, x1, x0
        ldr     w2, [x0]
        ldrsw   x0, [sp, 236]
        lsl     x0, x0, 3
        ldr     x1, [sp, 224]
        add     x0, x1, x0
        ldr     x1, [x0]
        ldrsw   x0, [sp, 240]
        lsl     x0, x0, 2
        add     x0, x1, x0
        ldr     w1, [x0]
        ldrsw   x0, [sp, 236]
        lsl     x0, x0, 2
        ldr     x3, [sp, 216]
        add     x0, x3, x0
        ldr     w0, [x0]
        mul     w1, w1, w0
        ldrsw   x0, [sp, 240]
        lsl     x0, x0, 2
        ldr     x3, [sp, 208]
        add     x0, x3, x0
        add     w1, w2, w1
        str     w1, [x0]
        ldr     w0, [sp, 236]
        add     w0, w0, 1
        str     w0, [sp, 236]
.L75:
        ldr     w1, [sp, 236]
        ldr     w0, [sp, 268]
        cmp     w1, w0
        blt     .L76
        ldr     w0, [sp, 240]
        add     w0, w0, 1
        str     w0, [sp, 240]
.L74:
        ldr     w1, [sp, 240]
        ldr     w0, [sp, 268]
        cmp     w1, w0
        blt     .L77
        add     x0, sp, 40
        mov     x1, 0
        bl      gettimeofday
        ldr     x1, [sp, 40]
        ldr     x0, [sp, 56]
        sub     x1, x1, x0
        mov     x0, 16960
        movk    x0, 0xf, lsl 16
        mul     x1, x1, x0
        ldr     x2, [sp, 48]
        ldr     x0, [sp, 64]
        sub     x0, x2, x0
        add     x0, x1, x0
        str     x0, [sp, 200]
        ldr     x1, [sp, 248]
        ldr     x0, [sp, 200]
        add     x0, x1, x0
        str     x0, [sp, 248]
        ldr     w0, [sp, 244]
        add     w0, w0, 1
        str     w0, [sp, 244]
.L73:
        ldr     w0, [sp, 244]
        cmp     w0, 4
        ble     .L78
        adrp    x0, .LC0
        add     x1, x0, :lo12:.LC0
        adrp    x0, _ZSt4cout
        add     x0, x0, :lo12:_ZSt4cout
        bl      std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        ldr     w1, [sp, 268]
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
        str     wzr, [sp, 232]
        b       .L79
.L81:
        ldrsw   x0, [sp, 232]
        lsl     x0, x0, 3
        ldr     x1, [sp, 224]
        add     x0, x1, x0
        ldr     x0, [x0]
        cmp     x0, 0
        beq     .L80
        ldrsw   x0, [sp, 232]
        lsl     x0, x0, 3
        ldr     x1, [sp, 224]
        add     x0, x1, x0
        ldr     x0, [x0]
        bl      operator delete[](void*)
.L80:
        ldr     w0, [sp, 232]
        add     w0, w0, 1
        str     w0, [sp, 232]
.L79:
        ldr     w1, [sp, 232]
        ldr     w0, [sp, 268]
        cmp     w1, w0
        blt     .L81
        ldr     x0, [sp, 224]
        cmp     x0, 0
        beq     .L82
        ldr     x0, [sp, 224]
        bl      operator delete[](void*)
.L82:
        ldr     x0, [sp, 216]
        cmp     x0, 0
        beq     .L83
        ldr     x0, [sp, 216]
        bl      operator delete[](void*)
.L83:
        ldr     x0, [sp, 208]
        cmp     x0, 0
        beq     .L84
        ldr     x0, [sp, 208]
        bl      operator delete[](void*)
.L84:
        ldr     w1, [sp, 268]
        mov     w0, 10000
        add     w0, w1, w0
        str     w0, [sp, 268]
.L58:
        ldr     w1, [sp, 268]
        mov     w0, 40000
        cmp     w1, w0
        ble     .L85
        mov     w0, 0
        ldr     x19, [sp, 16]
        ldp     x29, x30, [sp], 352
        ret