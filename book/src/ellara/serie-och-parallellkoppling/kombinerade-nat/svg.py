#!/usr/bin/env python

import schemdraw
import schemdraw.elements as e
import schemdraw.elements
from time import time

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

start_time = time()


with schemdraw.Drawing(file=f"kom-krets.svg", show=False) as d:
    global u
    u = d.unit
    e.BatteryCell().left(2*u)
    e.Line().up() 
    e.Line().right(u/4)
    d.push()
    e.Line().up(u/4)
    e.Resistor().right(u/2).label("$R_1$")
    e.Line().down(u/4)
    d.pop()
    e.Line().down(u/4)
    e.Resistor().right(u/2).label("$R_2$")
    e.Line().up(u/4)
    e.Resistor().right(1.25*u).label("$R_3$")
    e.Line().down()



with schemdraw.Drawing(file=f"ex-upg.svg", show=False) as d:
    e.BatteryCell().left(2*u).label("20 V")
    e.Line().up() 
    e.Line().right(u/4)
    d.push()
    e.Line().up(u/4)
    e.Resistor().right(u/2).label("$R_1 = 100 Ω$")
    e.Line().down(u/4)
    d.pop()
    e.Line().down(u/4)
    e.Resistor().right(u/2).label("$R_2 = 150 Ω$", loc="B")
    e.Line().up(u/4)
    e.Resistor().right(1.25*u).label("$R_3 = 20 Ω$")
    e.Line().down()

with schemdraw.Drawing(file=f"ex-upg2.svg", show=False) as d:
    e.BatteryCell().left(2*u).label("20 V")
    e.Line().up() 
    e.Line().right(u/4)
    e.Resistor().right(u/2).label("$R_{12} = 60 Ω$")
    e.Resistor().right(1.25*u).label("$R_3 = 20 Ω$")
    e.Line().down()
    




print(f"Done in {time()-start_time} s")
