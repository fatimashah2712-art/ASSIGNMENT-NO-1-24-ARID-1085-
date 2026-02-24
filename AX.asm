                              .MODEL SMALL
.STACK 100H
.DATA
MSG DB "RESULT: $"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 4
    ADD AX, 3

    ADD AL, 30H

    MOV DX, OFFSET MSG
    MOV AH, 9
    INT 21H

    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN