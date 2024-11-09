import time
import schemdraw
import schemdraw.elements as e

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

start_time = time.time()

with schemdraw.Drawing(file=f"parallell.svg", show=False) as d:
    global u
    u = d.unit
    e.BatteryCell().left()
    e.Line().up(d.unit/2)
    d.push()
    e.Resistor().right().label("$R_2$")
    d.pop()
    e.Line().up(d.unit/2)
    e.Resistor().right().label("$R_1$")
    e.Line().down()

with schemdraw.Drawing(file=f"r2_ers.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(d.unit/2)
    d.push()
    e.Resistor().right().label("$R_2$")
    d.pop()
    e.Line().up(d.unit/2)
    e.Resistor().right().label("$R_1 = 100 Ω$")
    e.Line().down()

with schemdraw.Drawing(file=f"unika_noder.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(d.unit/4)
    d.push()
    e.Line().up(u/2)
    e.Resistor().right(.75*u)
    e.Resistor().right(.75*u)
    e.Line().down(3/4*u)
    e.Line().left(1/2*u)
    d.pop()
    d.push()
    e.Resistor().right()
    d.pop()
    e.Line().up(d.unit/4)
    e.Resistor().right()
    e.Line().down(d.unit/2)

with schemdraw.Drawing(file=f"unika_noder_svar.svg", show=False) as d:
    e.BatteryCell().left()
    e.Dot(color='red').label('1',loc="B")
    e.Line().up(d.unit/4)
    d.push()
    e.Line().up(u/2)
    e.Resistor().right(.75*u)
    e.Dot(color='red').label('2')
    e.Resistor().right(.75*u)
    e.Line().down(3/4*u)
    e.Dot(color='red').label('3',loc="B")
    e.Line().left(1/2*u)
    d.pop()
    d.push()
    e.Resistor().right()
    d.pop()
    e.Line().up(d.unit/4)
    e.Resistor().right()
    e.Line().down(d.unit/2)

with schemdraw.Drawing(file=f"kortslut.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(d.unit/4)
    d.push()
    e.Resistor().right()
    d.pop()
    e.Line().up(d.unit/4)
    e.Line().right()
    e.Line().down(d.unit/2)

with schemdraw.Drawing(file=f"kortslut_svar.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(d.unit/4)
    d.push()
    e.Resistor().right()
    d.pop()
    e.Line().up(d.unit/4)
    e.Line().right(u/2)
    e.Dot(color='red').label('1',loc="T")
    e.Line().right(u/2)
    e.Line().down(d.unit/2)

with schemdraw.Drawing(file=f"ers_resistornat.svg", show=False) as d:
    e.BatteryCell().left(1.5*u)
    e.Line().up(u/2)
    d.push()
    e.Resistor().right(1.5*u).label("$R_3 = 100 Ω$")
    d.pop()
    e.Line().up(u/2)
    e.Resistor().right(.75*u).label("$R_1 = 25 Ω$")
    e.Resistor().right(.75*u).label("$R_2 = 75 Ω$")
    e.Line().down(u/2)
    e.Resistor().down(u/2).label("$R_4 = 20 Ω$", loc="B")

print(f"Finished build in {time.time() - start_time:.2f} seconds")
