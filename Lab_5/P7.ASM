.MODEL SMALL
.DATA
A DB 100 DUP(?)
.CODE
MOV AX,@DATA
MOV DS,AX
LEA SI,A
MOV CX,5
MOV AH,1
L1:
INT 21H
MOV [SI],AL
INC SI
LOOP L1
MOV BX,5
L2:
MOV CX,BX
MOV AH,2
LEA SI,A
L3:
MOV DL,[SI]
INT 21H
INC SI
LOOP L3
MOV DL,44
INT 21H
SUB BX,1
CMP BX,0
JNZ L2
MOV AH,76
INT 21H
END
