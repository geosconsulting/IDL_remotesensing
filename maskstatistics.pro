PRO maskStatistics

;cercare il file
file = FILEPATH('worldelv.dat', SUBDIRECTORY = ['examples', 'data'])

;copiare il file in una immagine
imageSize = [360, 360]
image = READ_BINARY(file, DATA_DIMS = imageSize)

;preparare la finestra per riecevee
DEVICE, DECOMPOSED = 0

;carico palette
LOADCT, 38
WINDOW, 0, XSIZE = imageSize[0], YSIZE = imageSize[1], $
TITLE = 'World Elevation'

;mostrare immagine
TV, image

;quindi faccio query sull'immagine e poi moltiplico l'immagine per la maschera
oceanMask = image LT 125
maskedImage = image*oceanMask

WINDOW,1,XSIZE=2*imageSize[0],YSIZE=imageSize[1], $
  TITLE= 'Oceans Mask (left) and Resulting Image (right)'
 
TVSCL,oceanMask,0
TV,maskedImage,1

landMask = image GE 125
maskedImage = image*landMask
WINDOW, 2, XSIZE = 2*imageSize[0], YSIZE = imageSize[1], $
TITLE = 'Land Mask (left) and Resulting Image (right)'
TVSCL, landMask, 0
TV, maskedImage, 1

END
