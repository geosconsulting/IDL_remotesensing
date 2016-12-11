FUNCTION user_bm4, b1, b2

NDVI_float = (float(b1) - b2) / (float(b1) + b2)

b1 = BYTSCL(NDVI_float, min = -1.0, max = 1.0)

RETURN, b1

END

