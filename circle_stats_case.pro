FUNCTION ARE,dummy
RETURN,(3.14*dummy*dummy)
END

FUNCTION CIR,dummy
RETURN,(3.14*2*dummy)
END

PRO circle_stats_case

choice = ''
READ,choice,PROMPT='Area(a) Circu(c) or both(b):'
cmdlist = ['a','c','b']

IF(STRLOWCASE(choice) EQ cmdlist(0)) THEN index = 0
IF(STRLOWCASE(choice) EQ cmdlist(1)) THEN index = 1
IF(STRLOWCASE(choice) EQ cmdlist(2)) THEN BEGIN 
  index = 2 
ENDIF ELSE BEGIN 
  index = 3 
ENDELSE

x = 2.0 ; The Radius of the Circle
area = ARE(x)
circum = CIR(x)

CASE index of
0: PRINT, 'The Area of a Circle with Radius', x, 'is ', area
1: PRINT, 'The Circumference of a Circle with Radius', x, 'is ', circum
2: BEGIN
  PRINT, 'The Area of a Circle with Radius', x, 'is ', area
  PRINT, 'The Circumference of a Circle with Radius', x, 'is ', circum
END
ELSE: PRINT, 'I comandi validi sono ', cmdlist
ENDCASE

END