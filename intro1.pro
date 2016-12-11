PRO intro1
  OPENR,1,"C:\Users\Fabio\Downloads\Studio\envi\IDL\dati_tutorial\image1"
  A=FLTARR(400,400)
  READU,1,A
  CLOSE,1  
  
  B=A
  C=B+100
  
  OPENW,2,"C:\Users\Fabio\Downloads\Studio\envi\IDL\dati_tutorial\eldindorondero"
  WRITEU,2,C
  CLOSE,2
  
END