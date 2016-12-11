PRO clippedImage

;cercare il file
file = FILEPATH('hurric.dat', SUBDIRECTORY = ['examples', 'data'])

;copiare il file in una immagine
imageSize = [440, 340]
image = READ_BINARY(file, DATA_DIMS = imageSize)

;preparare la finestra per riecevee
DEVICE, DECOMPOSED = 0

;carico palette
LOADCT, 0
WINDOW, 0, XSIZE = imageSize[0], YSIZE = imageSize[1], TITLE = 'Hurricane Gilbert'

;mostrare immagine
TV, image

topClippedImage = image > 125
WINDOW,1,XSIZE=2*imageSize[0],YSIZE=imageSize[1], $
  TITLE = 'Image Greater Than 125, TV (left) and TVSCL (right)' 

TV,topClippedImage,0
TVSCL,topClippedImage,1

bottomClippedImage = image < 125
WINDOW, 2, XSIZE = 2*imageSize[0], YSIZE = imageSize[1], $
TITLE = 'Image Less Than 125, TV (left) ' + $
'and TVSCL (right)'
TV, bottomClippedImage, 0
TVSCL, bottomClippedImage, 1
   
END
