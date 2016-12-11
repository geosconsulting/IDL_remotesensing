FUNCTION user_bm2, b1

lut = 255 - BINDGEN(256)

b1 = BYTSCL(b1)

b1 = lut[b1]

RETURN, b1

END

