PRO arrayTest1

zeros=INTARR(6)
PRINT,zeros

ones = MAKE_ARRAY(6, /Integer, value=1)
PRINT,ones

twos = replicate(2.0,3,3)
PRINT,twos

index_arr = indgen(6)
PRINT,index_arr
PRINT,index_arr[5]
PRINT,index_arr[5]*8500

multi_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
PRINT,multi_arr
PRINT,multi_arr(1,2)



END

