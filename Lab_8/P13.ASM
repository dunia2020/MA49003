.MODEL SMALL
.CODE
MOV CL,11
MOV DL,'A'
MOV AH,1
INT 21H
ADD AL,28
ADD AL,50
PUSHF
POP AX
SHR AX,CL
PUSH AX
POPF
JC L1
MOV DL,'B'
L1:
MOV AH,2
INT 21H
MOV AH,76
INT 21H
END