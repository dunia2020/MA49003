.MODEL SMALL
.DATA
A DB 100 DUP(?)
.CODE
MOV AX,@DATA
MOV DS,AX
LEA SI,A
MOV AH,1
MOV BL,1
L1:
INT 21H
MOV [SI],AL
INC SI
CMP BL,1
JNE L2
SUB BL,1
CMP AL,90
JL L2
DEC SI
SUB AL,32
MOV [SI],AL
INC SI
L2:
CMP AL,"Z"
JNE L1
DEC SI
MOV [SI],BYTE PTR 36
LEA DX,A
MOV AH,9
INT 21H
MOV AH,76
INT 21H
END
