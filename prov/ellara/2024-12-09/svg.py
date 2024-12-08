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

with schemdraw.Drawing(file='ström.svg', show=False) as d:
    e.BatteryCell().left(2*u).label('12V',loc='B')
    up_line = e.Line().up(.5*u)
    e.Dot().label('$A$')
    e.Resistor().right(2*u).label("$R = 1k \Omega$")
    e.Dot().label('$B$')
    down_line = e.Line().down(.5*u)

with schemdraw.Drawing(file='serie.svg', show=False) as d:
    e.Resistor().right(.7*u).label("$R_1$")
    e.Resistor().right(.7*u).label("$R_2$")

with schemdraw.Drawing(file='parallell.svg', show=False) as d:
    e.Resistor().right(.7*u).label("$R_2$")
    e.Line().up(.4*u)
    e.Resistor().left(.7*u).label("$R_1$")
    e.Line().down(.4*u)

with schemdraw.Drawing(file='kretsfrågor.svg', show=False) as d:
    e.BatteryCell().left(2*u).label('5V',loc='B')
    up_line = e.Line().up(.5*u)
    e.Dot()
    e.Resistor().right().label("$R_1 = 300 \Omega$")
    e.Dot()
    e.Resistor().right().label("$R_2 = 200 \Omega$")
    e.Dot()
    down_line = e.Line().down(.5*u)
    e.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('$I$', loc='B').color('#400')

with schemdraw.Drawing(file=f"kombkrets.svg", show=False) as d:
    e.BatteryCell().left(1.5*u)
    e.Line().up(u/2)
    d.push()
    e.Resistor().right(1.5*u).label("$R_3$")
    d.pop()
    e.Line().up(u/2)
    e.Resistor().right(.75*u).label("$R_1$")
    e.Resistor().right(.75*u).label("$R_2$")
    e.Line().down(u/2)
    e.Resistor().down(u/2).label("$R_4$", loc="B")

with schemdraw.Drawing(file=f"tre_parallell.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(d.unit/2)
    d.push()
    e.Resistor().right().label("$R_3 = 600 Ω$")
    d.pop()
    e.Line().up(d.unit/2)
    d.push()
    e.Resistor().right().label("$R_2 = 200 Ω$")
    d.pop()
    e.Line().up(d.unit/2)
    e.Resistor().right().label("$R_1 = 100 Ω$")
    e.Line().down(1.5*u)

with schemdraw.Drawing(file=f"bakåt_ers.svg", show=False) as d:
    e.BatteryCell().left().label('$U = ?$')
    e.Line().up(d.unit/2)
    d.push()
    lower_res = e.Resistor().right().label("$R_2 = ?$")
    e.CurrentLabelInline(ofst=-1, direction='out').at(lower_res).label('$I_2$', loc='B')
    d.pop()
    e.Line().up(d.unit/2)
    upper_res = e.Resistor().right().label("$R_1 = 100 Ω$")
    e.CurrentLabelInline(ofst=-1, direction='out').at(upper_res).label('$I_1$', loc='B')
    e.Line().down()


print(f'done in {time.time()-start_time:.2f} seconds')
