.MODEL SMALL
.CODE
MOV AH,1
INT 21H
SUB AL,80
CBW
MOV CX,256
IMUL CX
MOV CX,AX
MOV DX,1
MOV AX,34464
IDIV CX
ADD AX,75
MOV AH,2
MOV DX,AX
INT 21H
MOV AH,76
INT 21H
END