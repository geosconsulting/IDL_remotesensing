PRO arrayTest

;Senza valori iniziali
A = INTARR(10,10)
PRINT,A

;Con valori iniziali
B = MAKE_ARRAY(10, 10, /FLOAT, VALUE=1.5)
PRINT,B

C = A+B
PRINT,C

PRINT,TOTAL(C)
PRINT,MIN(C)
PRINT,MAX(C)

END