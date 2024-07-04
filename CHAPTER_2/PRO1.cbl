000100 IDENTIFICATION   DIVISION.
000200 PROGRAM-ID.      PRO1.
000300 DATA             DIVISION.
000400 WORKING-STORAGE  SECTION.
000500 01 TEST-TARGET.
000600    05 TEST-1    PIC X(5).
000700    05 TEST-2    PIC X(10).
000800    05 TEST-3    PIC N(5).
000900 01 STR      PIC X(2)  VALUE "ZX".
001000 01 D-COUNT.
001100*ゼロで初期化。何度も使用する場合はそのたび初期化します。
001200    05 COUNT-1    PIC 9     VALUE ZERO.
001300    05 COUNT-2    PIC 9     VALUE ZERO.
001400    05 COUNT-3    PIC 9     VALUE ZERO.
001500    05 COUNT-4    PIC 9     VALUE ZERO.
001600    05 COUNT-5    PIC 9     VALUE ZERO.
001700    05 COUNT-6    PIC 9     VALUE ZERO.
001800    05 COUNT-7    PIC 9     VALUE ZERO.
001900    05 COUNT-8    PIC 9     VALUE ZERO.
002000    05 COUNT-9    PIC 9     VALUE ZERO.
002100    05 COUNT-10   PIC 9     VALUE ZERO.
002200 PROCEDURE        DIVISION.
002300 開始             SECTION.
002400 D-COUNTを取得.
002500*CHARACTERS指定
002600     MOVE "PC" TO TEST-1.
002700     INSPECT TEST-1 TALLYING COUNT-1 FOR CHARACTERS.
002800*BEFORE指定
002900     MOVE "XYZ" TO TEST-1.
003000     INSPECT TEST-1 TALLYING COUNT-2 FOR CHARACTERS BEFORE "Z".
003100*AFTER指定
003200     INSPECT TEST-1 TALLYING COUNT-3 FOR CHARACTERS AFTER "XY".
003300*単独のALL指定、複数のALL指定(「,」は任意記述)
003400     MOVE "XYZXY" TO TEST-1.
003500     INSPECT TEST-1 TALLYING COUNT-4 FOR ALL "XY".
003600     INSPECT TEST-1 TALLYING COUNT-5 FOR ALL "XY", ALL STR.
003700*LEADING指定
003800     MOVE "ABABCABABC" TO TEST-2.
003900     INSPECT TEST-2 TALLYING COUNT-6 FOR LEADING "AB".
004000*複数のFOR指定
004100     INSPECT TEST-2 TALLYING
004200        COUNT-7 FOR ALL "ABC"
004300        COUNT-8 FOR LEADING "AB"
004400        COUNT-9 FOR CHARACTERS.
004500*日本語のD-COUNT
004600     MOVE N"日本語TEST-" TO TEST-3.
004700     INSPECT TEST-3 TALLYING COUNT-10 FOR ALL N"TEST-".
004800 画面表示.
004900*COUNT-1→5、COUNT-2→2、COUNT-3→3、COUNT-4→2、COUNT-5→2、COUNT-6→2、
005000*COUNT-7→2、COUNT-8→1、COUNT-9→2、COUNT-10→1
005100     DISPLAY COUNT-1.
005200     DISPLAY COUNT-2.
005300     DISPLAY COUNT-3.
005400     DISPLAY COUNT-4.
005500     DISPLAY COUNT-5.
005600     DISPLAY COUNT-6.
005700     DISPLAY COUNT-7.
005800     DISPLAY COUNT-8.
005900     DISPLAY COUNT-9.
006000     DISPLAY COUNT-10.
006100 プログラム終了.
006200     STOP RUN.