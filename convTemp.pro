PRO convtemp,conv,temp 
  
  IF (STRLOWCASE(conv) EQ 'f') THEN BEGIN
    celsius = (temp-32)*5/9
    PRINT,"ricevuto ",conv ,celsius 
  ENDIF   
  IF (STRLOWCASE(conv) EQ 'c') THEN BEGIN
    Kelvin = 273 + temp
    PRINT,"ricevuto ",conv,Kelvin
  ENDIF
END