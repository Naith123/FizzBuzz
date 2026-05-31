       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-I            PIC 999 VALUE 0.
       01  WS-Q3           PIC 999 VALUE 0.
       01  WS-R3           PIC 999 VALUE 0.
       01  WS-Q5           PIC 999 VALUE 0.
       01  WS-R5           PIC 999 VALUE 0.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > 100
               DIVIDE WS-I BY 3 GIVING WS-Q3
                   REMAINDER WS-R3
               DIVIDE WS-I BY 5 GIVING WS-Q5
                   REMAINDER WS-R5
               
               IF WS-R3 = 0 AND WS-R5 = 0
                   DISPLAY "FizzBuzz"
               ELSE IF WS-R3 = 0
                   DISPLAY "Fizz"
               ELSE IF WS-R5 = 0
                   DISPLAY "Buzz"
               ELSE
                   DISPLAY WS-I
               END-IF
               END-IF
               END-IF
           END-PERFORM.
           STOP RUN.
