PRO band_equivalent_reflectance

dir='C:\Users\Fabio\Downloads\Studio\envi\IDL\spec_data'

CD,dir
files=FILE_SEARCH('*brf.txt',COUNT=numfiles1)
counter1=1

WHILE(counter1 LT numfiles1)DO BEGIN
  name=files(counter1)
  OPENR,1,name
  response = FLTARR(2201)
  READF,1,response

  dir='C:\Users\Fabio\Downloads\Studio\envi\IDL\response_fns'
  CD,dir
  files1=FILE_SEARCH('*n.txt',COUNT=numfiles)
  counter=0

  WHILE(counter1 LT numfiles1)DO BEGIN
    name1=files1(counter)
    OPENR,2,name1
    data = FLTARR(2151)
    READF,2,data
  
  outName2= name + '_' + name1 + '.CONVxxx.dat'
  outName = 'out.txt'
  outData = TOTAL(data*response)/TOTAL(data)
 
  OPENW, 3, outName, /APPEND ; writes all entries to one file
  PRINTF, 3, outName2, outData ; print the out file name and parameter value
  CLOSE,3
  CLOSE, 2
  counter = counter + 1 
  ENDWHILE
; reset the directory for the next run
  dir='C:\Users\Fabio\Downloads\Studio\envi\IDL\spec_data'
  CD, dir
  CLOSE, 1
  counter1 = counter1 +1
ENDWHILE
END
