PRO apriamo_file_casa
  OPENR,1,"C:\Users\Fabio\Downloads\Studio\landsat\LC81910312016217LGN00\tfc.tif"
  image=FLTARR(400,400)
  READU,1,image
  tv,image
  slide_image,image  
  valore_100_100 = image[100,100,1]
  PRINT,valore_100_100
  CLOSE,1  
END