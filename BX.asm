                                          .MODEL SMALL
.STACK 100H
.DATA
NUM DB 5
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV BX, OFFSET NUM
    MOV AL, [BX]

    ADD AL, 30H
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN