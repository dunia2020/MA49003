.MODEL SMALL
.CODE
MOV AH,1
INT 21H
SUB AL,80
MOV AH,0
MOV CL,AL
MOV AX,1000
IDIV CL
CBW
MOV BL,50
IDIV BL
ADD AH,75
MOV DL,AL
MOV DH,AH
MOV AH,2
MOV DL,DH
INT 21H
MOV AH,76
INT 21H
END