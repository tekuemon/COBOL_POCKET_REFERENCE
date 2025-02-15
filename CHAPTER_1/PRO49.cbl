       IDENTIFICATION DIVISION.
      *PROGRAM-ID. OYA.
       PROGRAM-ID. PRO49.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DATA1 PIC X(5) VALUE "OYA1".
       01 DATA2 GLOBAL PIC X(5) VALUE "OYA2".
       01 DATA3 GLOBAL PIC X(5) VALUE "OYA3".
       PROCEDURE DIVISION.
       OYA_START SECTION.
       OYA_DISPLAY.
      *DATA3->OYA3, DATA2->OYA2, DATA1->OYA1.
           DISPLAY "DATA1(OYA) : "DATA1.
           DISPLAY "DATA2(OYA) : "DATA2.
           DISPLAY "DATA3(OYA) : "DATA3.
       CALL_KO.
           CALL "KO".
       END_PROGRAM.
           STOP RUN.
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. KO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DATA1 PIC X(5) VALUE "KO1".
       01 DATA2 PIC X(5) VALUE "KO2".
       01 DATA3 GLOBAL PIC X(5) VALUE "KO3".
       PROCEDURE DIVISION.
       KO_START SECTION.
       KO_DISPLAY.
      *DATA3->KO3, DATA2->KO2, DATA1->KO1.
           DISPLAY "DATA1(KO) : "DATA1.
           DISPLAY "DATA2(KO) : "DATA2.
           DISPLAY "DATA3(KO) : "DATA3.
       CALL_MAGO.
           CALL "MAGO".
       END_KO.
           EXIT PROGRAM.
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAGO.
       PROCEDURE DIVISION.
       MAGO_START SECTION.
       MAGO_DISPLAY.
      *DATA3->KO3, DATA2->OYA2,DATA1->ERROR
      *    DISPLAY "DATA1(MAGO) : "DATA1.
           DISPLAY "DATA2(MAGO) : "DATA2.
           DISPLAY "DATA3(MAGO) : "DATA3.
       END_MAGO.
           EXIT PROGRAM.
      *END_MAGO_PROGRAM.
       END PROGRAM MAGO.
      *END_KO_PROGRAM.
       END PROGRAM KO.
      *END_OYA_PROGRAM.
      *END PROGRAM OYA.
       END PROGRAM PRO49.
