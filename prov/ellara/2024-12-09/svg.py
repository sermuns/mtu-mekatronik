#!/usr/bin/env python
import schemdraw
import schemdraw.elements as e
import os
import glob
import time
schemdraw.use('svg')
schemdraw.svgconfig.svg2 = False
schemdraw.config(
    unit=3,
    font="NewComputerModernMath",
    mathfont="NewComputerModernMath",
)
e.style(e.STYLE_IEC)
u = schemdraw.Drawing().unit

# # remove all *.svg in script dir
# os.chdir(os.path.dirname(os.path.abspath(__file__)))
# os.system('rm -f *.svg')

start_time = time.time()

with schemdraw.Drawing(file='2.svg', show=False) as d:
    e.BatteryCell().left(2*u).label('5V',loc='B')
    up_line = e.Line().up(.5*u)
    e.Dot()
    e.Resistor().right().label("$R_1 = 300 \Omega$")
    e.Dot()
    e.Resistor().right().label("$R_2 = 200 \Omega$")
    e.Dot()
    down_line = e.Line().down(.5*u)
    e.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('$I$', loc='B').color('#400')

print(f'done in {time.time()-start_time:.2f} seconds')
