# COBOL-CPF
Validador de cpf escrito em COBOL
## Como usar?

O uso é bastante simplificado. O texto a ser 
validado deve conter 15 caracteres, sendo o 
último um caracter em branco. O texto 
também deve ser bem formado, possuindo 
o formato XXX.XXX.XXX-XX, sendo X o equivalente 
aos números do CPF.

Também deverão ser criados espaços para receber 
a notificação de validade (CPF-RETURN - 'Y' ou 'N'), 
como também a mensagem sobre a situação do número (CPF-STATUS).

Para testar faça: 

```
git clone https://github.com/JordanGaspar/COBOL-CPF.git
cd COBOL-CPF
make
make run
```

Após o teste poderá ser feita a limpeza dos arquivos com o comando 
`make clean`.

Abaixo o exemplo de testes:

```
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
```
