PRO vari_loops

FOR I = 1, 2 DO FOR J = 0, 3 DO BEGIN
PRINT,I,J
ENDFOR

max = 5
count = 0
WHILE(count LT max) DO BEGIN
  countdown = max-count
  PRINT,'Steps to go: ',countdown
  count=count+1
ENDWHILE

END
