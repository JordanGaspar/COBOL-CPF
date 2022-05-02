       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CPF-INPUT-OUTPUT.
           05 CPF-RAW PIC X(15).
           05 CPF-RETURN PIC X.
           05 CPF-STATUS PIC X(50).
       PROCEDURE DIVISION.
           INITIALIZE CPF-RAW.
           DISPLAY 'FROM TEST!'.
           MOVE "123.456.789-09 " TO CPF-RAW.
           CALL 'CPF' USING BY REFERENCE CPF-RAW.
           DISPLAY CPF-STATUS.
           STOP RUN.