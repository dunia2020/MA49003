.MODEL SMALL
.CODE
MOV AH,1
INT 21H
MOV CL,AL
INT 21H
CMP AL,57
JG L1
SUB AL,48
JMP L2
L1:
SUB AL,55
L2:
ADD CL,AL
MOV DL,CL
MOV AH,2
INT 21H
MOV AH,76
INT 21H
END