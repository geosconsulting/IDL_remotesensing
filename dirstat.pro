PRO dirstat

dir = 'C:\Program Files\Exelis\ENVI50\classic\data'
CD,dir

files = FILE_SEARCH('bh*.img',COUNT=numfiles)

counter = 0
WHILE(counter LT numfiles) DO BEGIN
name=files(counter)
OPENR,1,name
A=INTARR(512,512)
READU,1,A

high=MAX(A)
low=MIN(A)
avg = MEAN(A)
sdev = STDDEV(A)
PRINT, 'Nome File ', name
PRINT, 'The measures for image', counter + 1, ' are:'
PRINT, 'Max: ', high, '; Min', low, '; Mean: ', avg, '; Standard Deviation: ', sdev

CLOSE,1
counter=counter+1

ENDWHILE

END
