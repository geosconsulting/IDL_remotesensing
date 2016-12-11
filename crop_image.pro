PRO crop_image

world = READ_PNG (FILEPATH ('avhrr.png', ROOT_DIR = ['C:\Users\Fabio\Downloads\Studio\envi\'], $
    SUBDIRECTORY = ['dati']), R, G, B)

DEVICE,RETAIN=2,DECOMPOSED = 0
TVLCT,R,G,B

worldSize = SIZE(world, /DIMENSIONS)
WINDOW,0,XSIZE = worldSize[0],YSIZE=worldSize[1]

TV,world

CURSOR,LeftLowX,LeftLowY, /DEVICE 
PRINT,LeftLowX,LeftLowY

CURSOR,RightTopX,RightTopY, /DEVICE 
PRINT,RightTopX,RightTopY
africa = world[LeftLowX:RightTopX,LeftLowY:RightTopY]

WINDOW,1, XSIZE = (RightTopX - LeftLowX + 1), YSIZE = (RightTopY - LeftLowY + 1)
TV, africa

END