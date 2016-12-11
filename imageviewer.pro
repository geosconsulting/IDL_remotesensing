PRO imageViewer
OPENR,1,"C:\Users\Fabio\Downloads\Studio\envi\IDL\dati_tutorial\image1"
image=FLTARR(400,400)
READU,1,image
tv,image
image_equal=HIST_EQUAL(image)
tv,image_equal
slide_image,image_equal
CLOSE,1
END