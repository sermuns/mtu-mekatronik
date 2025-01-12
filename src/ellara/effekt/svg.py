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

with schemdraw.Drawing(file=f"ex_varmeenergi.svg", show=False) as d:
    e.BatteryCell().left().label("$U = 10$V",loc="B")
    e.Line().up(u/2) 
    e.Resistor().right().label("$R = 10$Ω")
    down_line= e.Line().down(u/2) 
    e.CurrentLabelInline(ofst=0, direction='out').at(down_line).label("$I = 2$A",loc="B")

print(f"Done in {time()-start_time} s")
