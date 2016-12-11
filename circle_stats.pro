PRO circle_stats,x  
  
  area=ARE(x)
  circum=CIR(x)
  
  PRINT,'AREA del cerchio ',x,' e ',area
  PRINT,"CIRCONFERENZA del cerchio ",x," e'",circum
  
END

FUNCTION ARE,dummy
RETURN,(3.14*dummy*dummy)
END

FUNCTION CIR,dummy
RETURN,(3.14*2*dummy)
END