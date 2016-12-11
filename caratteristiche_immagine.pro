PRO caratteristiche_immagine
  im = READ_TIFF("C:\Users\Fabio\Downloads\Studio\landsat\LC81910312016217LGN00\LC81910312016217LGN00_B1.TIF")  
  HELP,im
  PRINT,MIN(im),MAX(im)
  PRINT,im[0],im[1]

END