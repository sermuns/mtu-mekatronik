#!/usr/bin/env python

import schemdraw
import schemdraw.elements as e
import schemdraw.elements
from time import time

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

start_time = time()


with schemdraw.Drawing(file=f"lampstyrka.svg", show=False) as d:
    global u
    u = d.unit
    e.BatteryCell().left(2*u)
    e.Line().up(u/2) 
    e.Resistor().right().label("$R$")
    e.Lamp2().right()
    e.Line().down(u/2) 

print(f"Done in {time()-start_time} s")
