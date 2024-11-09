import schemdraw
import schemdraw.elements as e
import schemdraw.elements

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

counter = 0


built = 0

with schemdraw.Drawing(file=f"ks1.svg", show=False) as d:
    global u
    u = d.unit
    e.BatteryCell().left().label('10 V')
    up_line = e.Line().up()
    current_up = e.CurrentLabelInline(
        ofst=0, direction='out', color='red').at(up_line)
    e.Resistor().right().label('2 kΩ')
    down_line = e.Line().down()
    current_down = e.CurrentLabelInline(
        ofst=0, direction='out', color='red').at(down_line).label('I')
    built += 1

with schemdraw.Drawing(file=f"ks2.svg", show=False) as d:
    e.BatteryCell().left().label('3.3 V')
    up_line = e.Line().up()
    e.Resistor().right()
    down_line = e.Line().down()
    current_down = e.CurrentLabelInline(
        ofst=0, direction='out').at(down_line).label('6.6 mA')
    built += 1

with schemdraw.Drawing(file=f"ks3.svg", show=False) as d:
    e.BatteryCell().left()
    up_line = e.Line().up()
    e.Resistor().right().label('1 kΩ')
    down_line = e.Line().down()
    current_down = e.CurrentLabelInline(
        ofst=0, direction='out').at(down_line).label('23 mA')
    built += 1

with schemdraw.Drawing(file=f"ks4.svg", show=False) as d:
    e.BatteryCell().right().label('3 V')
    e.BatteryCell().right().label('3 V')
    e.Line().down()
    e.Resistor().left(2*d.unit).label('1 kΩ')
    e.Line().up()
    
    built += 1

with schemdraw.Drawing(file=f"ks5.svg", show=False) as d:
    e.BatteryCell().left(6).label('12 V')
    up_line = e.Line().up()
    e.Resistor().right().label('$R_1$ = 2 kΩ')
    e.Resistor().right().label('$R_2$ = 4 kΩ')
    down_line = e.Line().down()
    built += 1

with schemdraw.Drawing(file=f"ks7.svg", show=False) as d:

    u = d.unit
    e.BatteryCell().left(6).label('10 V')
    up_line = e.Line().up()
    e.Resistor().right().label('$R_1$ = 1 Ω')
    e.Resistor().right().label('$R_2$')
    down_line = e.Line().down()
    e.CurrentLabelInline(
        ofst=0*u, direction='out').at(down_line).label('2 A', loc='B')
    built += 1

with schemdraw.Drawing(file=f"ks6.svg", show=False) as d:
    u = d.unit
    e.BatteryCell().left().label('5 V')
    e.Line().up(.6*u)
    d.push()
    e.Resistor().right().label('50 Ω')
    d.pop()
    e.Line().up(.6*u)
    e.Resistor().right().label('100 Ω')
    down_line = e.Line().down(1.2*u)
    e.CurrentLabelInline(
        ofst=-.4*u, direction='out').at(down_line).label('150 mA', loc='B')

    d.move(2*d.unit, 0)

    e.BatteryCell().left().label('5 V')
    e.Line().up(.6*u)
    e.Resistor().right()
    e.Line().down(.6*u)

    built += 1

with schemdraw.Drawing(file=f"parallell.svg", show=False) as d:
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



print(f"Built {built} files")
