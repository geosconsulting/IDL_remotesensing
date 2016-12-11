PRO statistics

;cercare il file
file = FILEPATH('convec.dat', SUBDIRECTORY = ['examples', 'data'])

;copiare il file in una immagine
imageSize = [248, 248]
image = READ_BINARY(file, DATA_DIMS = imageSize)

;preparare la finestra per riecevee
DEVICE, DECOMPOSED = 0

;carico palette
LOADCT, 12
WINDOW, 0, XSIZE = imageSize[0], YSIZE = imageSize[1], $
TITLE = 'Earth Mantle Convection'

;mostrare immagine
TV, image

;quindi faccio query sull'immagine e poi applico la maschera
core = BYTSCL(image EQ 255)
difference = image - core

WINDOW, 2, XSIZE = imageSize[0], YSIZE = imageSize[1], $
TITLE = 'Difference of Original & Core'
TV, difference

IMAGE_STATISTICS, difference, COUNT = pixelNumber, $
DATA_SUM = pixelTotal, MAXIMUM = pixelMax, $
MEAN = pixelMean, MINIMUM = pixelMin, $
STDDEV = pixelDeviation, $
SUM_OF_SQUARES = pixelSquareSum, $
VARIANCE = pixelVariance

PRINT, ''
PRINT, 'IMAGE STATISTICS:'
PRINT, 'Total Number of Pixels = ', pixelNumber
PRINT, 'Total of Pixel Values = ', pixelTotal
PRINT, 'Maximum Pixel Value = ', pixelMax
PRINT, 'Mean of Pixel Values = ', pixelMean
PRINT, 'Minimum Pixel Value = ', pixelMin
PRINT, 'Standard Deviation of Pixel Values = ', pixelDeviation
PRINT, 'Total of Squared Pixel Values = ', pixelSquareSum
PRINT, 'Variance of Pixel Values = ', pixelVariance

nonzeroMask = difference NE 0

IMAGE_STATISTICS, difference, COUNT = pixelNumber, $
DATA_SUM = pixelTotal, MASK = nonzeroMask, $
MAXIMUM = pixelMax, MEAN = pixelMean, $
MINIMUM = pixelMin, STDDEV = pixelDeviation, $
SUM_OF_SQUARES = pixelSquareSum, $
VARIANCE = pixelVariance

PRINT, ''
PRINT, 'MASKED IMAGE STATISTICS:'
PRINT, 'Total Number of Pixels = ', pixelNumber
PRINT, 'Total of Pixel Values = ', pixelTotal
PRINT, 'Maximum Pixel Value = ', pixelMax
PRINT, 'Mean of Pixel Values = ', pixelMean
PRINT, 'Minimum Pixel Value = ', pixelMin
PRINT, 'Standard Deviation of Pixel Values = ', pixelDeviation
PRINT, 'Total of Squared Pixel Values = ', pixelSquareSum
PRINT, 'Variance of Pixel Values = ', pixelVariance

END
