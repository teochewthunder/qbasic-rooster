DIM basetune$
basetune$ = "C-6 C+6 D6 E6 G3 F+4 F+6 B6 B6 F+6 F+3 F-4 F-6 G6 G-6 E6 E3 D4 D6 C+6 C-6 <B-6 >C-3 C-4 E4 G-8 D4 G-8 D-6 G-8 C-6 G-8 E4 G-8 D4 G-8 D-6 G-8 C-6"

DIM bgtune$
bgtune$ = "mb <<<" + basetune$ + " > " + basetune$ + " >> " + basetune$

PLAY bgtune$

DIM bg
bg = 6

COLOR 0, bg
CLS

CALL draw_head1(bg)
CALL draw_body1
CALL draw_legs1(bg)
CALL draw_tail1(bg)

FOR i = 0 TO 10 STEP 1
    CALL draw_head1(bg)
    CALL draw_body1
    CALL delay(0.5)
    CALL draw_head2(bg)
    CALL draw_body2
    CALL delay(0.5)
NEXT i

FOR i = 0 TO 10 STEP 1
    CALL draw_legs1(bg)
    CALL draw_body1
    CALL delay(0.5)
    CALL draw_legs2(bg)
    CALL draw_body2
    CALL delay(0.5)
NEXT i

FOR i = 0 TO 10 STEP 1
    CALL draw_tail1(bg)
    CALL draw_body1
    CALL delay(0.5)
    CALL draw_tail2(bg)
    CALL draw_body2
    CALL delay(0.5)
NEXT i


FOR i = 0 TO 10 STEP 1
    CALL draw_head1(bg)
    CALL draw_legs1(bg)
    CALL draw_tail1(bg)
    CALL draw_body1
    CALL delay(0.5)
    CALL draw_head2(bg)
    CALL draw_legs2(bg)
    CALL draw_tail2(bg)
    CALL draw_body2
    CALL delay(0.5)
NEXT i

COLOR 0, bg

SUB delay (Value!)
    T! = TIMER
    DO: LOOP UNTIL (TIMER - T!) >= Value!
END SUB

SUB drawstr (row, col, fg, bg, text$)
    COLOR fg, bg
    LOCATE row, col
    PRINT text$
END SUB

SUB draw_head1 (bg)
    CALL drawstr(2, 29, 0, bg, " ")
    CALL drawstr(2, 30, 0, 4, "    ")
    CALL drawstr(2, 34, 0, bg, " ")
    CALL drawstr(3, 29, 0, bg, " ")
    CALL drawstr(3, 30, 0, 15, " o  ")
    CALL drawstr(3, 34, 0, 4, " ")
    CALL drawstr(3, 35, 0, bg, " ")
    CALL drawstr(4, 28, 0, bg, " ")
    CALL drawstr(4, 29, 14, bg, "<")
    CALL drawstr(4, 30, 0, 15, "    ")
    CALL drawstr(4, 34, 0, 4, " ")
    CALL drawstr(4, 35, 0, bg, " ")
    CALL drawstr(5, 29, 0, bg, " ")
    CALL drawstr(5, 30, 0, 4, " ")
    CALL drawstr(5, 31, 0, 15, "   ")
    CALL drawstr(5, 34, 0, bg, " ")
END SUB

SUB draw_head2 (bg)
    CALL drawstr(2, 28, 0, bg, " ")
    CALL drawstr(2, 29, 0, 4, "    ")
    CALL drawstr(2, 33, 0, bg, " ")
    CALL drawstr(3, 28, 0, bg, " ")
    CALL drawstr(3, 29, 0, 15, " u  ")
    CALL drawstr(3, 33, 0, 4, " ")
    CALL drawstr(3, 34, 0, bg, " ")
    CALL drawstr(4, 27, 0, bg, " ")
    CALL drawstr(4, 28, 14, bg, "<")
    CALL drawstr(4, 29, 0, 15, "    ")
    CALL drawstr(4, 33, 0, 4, " ")
    CALL drawstr(4, 34, 0, bg, " ")
    CALL drawstr(5, 28, 0, bg, " ")
    CALL drawstr(5, 29, 0, 4, " ")
    CALL drawstr(5, 30, 0, 15, "   ")
    CALL drawstr(5, 33, 0, bg, " ")
END SUB

SUB draw_tail1 (bg)
    CALL drawstr(5, 45, 0, bg, " ")
    CALL drawstr(5, 46, 0, 4, "      ")
    CALL drawstr(5, 52, 0, bg, "  ")
    CALL drawstr(6, 44, 0, bg, " ")
    CALL drawstr(6, 45, 0, 4, "     ")
    CALL drawstr(6, 50, 0, bg, "    ")
    CALL drawstr(7, 44, 0, bg, " ")
    CALL drawstr(7, 45, 0, 4, "  ")
    CALL drawstr(7, 47, 0, bg, "       ")
    CALL drawstr(8, 44, 0, bg, " ")
    CALL drawstr(8, 45, 0, 4, " ")
    CALL drawstr(8, 46, 0, bg, "        ")
    CALL drawstr(9, 44, 0, bg, " ")
    CALL drawstr(9, 45, 0, 4, " ")
    CALL drawstr(9, 46, 0, bg, "        ")
END SUB

SUB draw_tail2 (bg)
    CALL drawstr(5, 46, 0, bg, " ")
    CALL drawstr(5, 47, 0, 4, "     ")
    CALL drawstr(5, 52, 0, bg, "  ")
    CALL drawstr(6, 45, 0, bg, " ")
    CALL drawstr(6, 46, 0, 4, "     ")
    CALL drawstr(6, 51, 0, bg, "    ")
    CALL drawstr(7, 44, 0, bg, " ")
    CALL drawstr(7, 45, 0, 4, "  ")
    CALL drawstr(7, 47, 0, bg, "       ")
    CALL drawstr(8, 44, 0, bg, " ")
    CALL drawstr(8, 45, 0, 4, "  ")
    CALL drawstr(8, 47, 0, bg, "        ")
    CALL drawstr(9, 44, 0, bg, " ")
    CALL drawstr(9, 45, 0, 4, " ")
    CALL drawstr(9, 46, 0, bg, "        ")
END SUB

SUB draw_body1 ()
    CALL drawstr(6, 30, 0, 15, "    ")
    CALL drawstr(7, 29, 0, 15, "     ")
    CALL drawstr(8, 28, 0, 15, "      ")
    CALL drawstr(9, 27, 0, 15, "       ")
    CALL drawstr(10, 27, 4, 15, "                   ")
    CALL drawstr(11, 28, 4, 15, "   .    .  )      ")
    CALL drawstr(12, 29, 4, 15, "  .    . )      ")
    CALL drawstr(13, 30, 4, 15, "   ..   )    ")
    CALL drawstr(14, 31, 4, 15, "           ")
END SUB

SUB draw_body2 ()
    CALL drawstr(6, 30, 0, 15, "    ")
    CALL drawstr(7, 29, 0, 15, "     ")
    CALL drawstr(8, 28, 0, 15, "      ")
    CALL drawstr(9, 27, 0, 15, "       ")
    CALL drawstr(10, 27, 4, 15, "                   ")
    CALL drawstr(11, 28, 4, 15, "         .    )   ")
    CALL drawstr(12, 29, 4, 15, "    .  ..    )  ")
    CALL drawstr(13, 30, 4, 15, "   .   .   ) ")
    CALL drawstr(14, 31, 4, 15, "           ")
END SUB

SUB draw_legs1 (bg)
    CALL drawstr(15, 1, 14, bg, "                                  |   |")
    CALL drawstr(16, 1, 14, bg, "                                  |   |")
    CALL drawstr(17, 1, 14, bg, "                                  |   |")
    CALL drawstr(18, 1, 14, bg, "                                  |   |")
    CALL drawstr(19, 1, 14, bg, "                                  ^   ^")
END SUB

SUB draw_legs2 (bg)
    CALL drawstr(15, 1, 14, bg, "                                  |   |")
    CALL drawstr(16, 1, 14, bg, "                             >----|   |")
    CALL drawstr(17, 1, 14, bg, "                                      |")
    CALL drawstr(18, 1, 14, bg, "                                      |")
    CALL drawstr(19, 1, 14, bg, "                                      ^")
END SUB
