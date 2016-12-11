PRO casesemplice

contatore = 1
REPEAT BEGIN  
READ,x,PROMPT='Inserisci numero: '
CASE 1 of
  (x LT 10): PRINT,'Meno di dieci'
  (x GT 10) : BEGIN
        PRINT,'Piu di dieci'
        END
   ELSE : PRINT,'Esattamente dieci'   
ENDCASE
contatore = contatore+1
ENDREP UNTIL contatore GT 3

END