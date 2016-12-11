PRO read_image

;; Create array to read sub_hyper into idl
new_image = make_array(200,200,240,value=0)

;; Read in image hyper_sub
;; Enter the file path where you stored the image hyper_sub between ' '
base = 'C:\Users\Fabio\Downloads\Studio\envi\IDL\dati_tutorial'
file = '/hyper_sub'
;; From the header we know that the image sub_hyper has 90 columns,
;; 146 rows, and 240 bands
column = 90
row = 146
band = 240

image_size = [column,row,band]
;; Data type is unsigned integer which is known by idl as data type 12. For
;; numbers associated with other data types refer to the idl help file
hyper_sub = read_binary(base+file, data_dims = image_size, data_type = 12)

;; Read hyper_sub into the array new_image
for z = 0, 239 do begin
  for y = 0, 145 do begin
    for x = 0, 89 do begin
      new_image[x, y, z] = hyper_sub[x, y, z]
    endfor
  endfor
endfor

;; Write new_image to an output file
nuova_immagine = '/new_image1'
openw, 1, base + nuova_immagine
writeu, 1, new_image
close, 1
END