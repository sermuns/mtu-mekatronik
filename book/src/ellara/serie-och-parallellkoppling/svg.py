import schemdraw
import schemdraw.elements as e
import schemdraw.elements
from time import time

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

start_time = time()

with schemdraw.Drawing(file=f"batres.svg", show=False) as d:
    global u
    u = d.unit
    e.BatteryCell().left(2*u)
    e.Line().up()
    e.Resistor().right()
    e.Resistor().right()
    e.Line().down()

with schemdraw.Drawing(file=f"ex_tot_res.svg", show=False) as d:
    e.BatteryCell().left(2*u).label('10 V')
    e.Line().up()
    e.Resistor().right().label('2 Ω')
    e.Resistor().right().label('3 Ω')
    down_line = e.Line().down()
    e.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('I')

with schemdraw.Drawing(file=f"ex_del.svg", show=False) as d:
    e.BatteryCell().left(3*u).label('10 V')
    e.Line().up()
    e.Resistor().right().label('20 Ω')
    e.Resistor().right().label('50 Ω')
    e.Resistor().right().label('30 Ω')
    down_line = e.Line().down()

with schemdraw.Drawing(file=f"kvl.svg", show=False) as d:
    e.BatteryCell().left().label('6 V')
    e.BatteryCell().left().label('6 V')
    e.Line().down()
    e.Resistor().right().label('$R_1$').label(('–', '10 V', '+'), loc='B')
    e.Resistor().right().label('$R_2$')
    e.Line().up()

with schemdraw.Drawing(file=f"parallell.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(u/2)
    d.push()
    e.Resistor().right()
    d.pop()
    e.Line().up(u/2)
    e.Resistor().right()
    e.Line().down()

with schemdraw.Drawing(file=f"ex_ers_res.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(u/2)
    d.push()
    e.Resistor().right().label('$R_2 = 3 Ω$')
    d.pop()
    e.Line().up(u/2)
    e.Resistor().right().label('$R_1 = 5 Ω$')
    e.Line().down()

with schemdraw.Drawing(file=f"res_par_batt.svg", show=False) as d:
    e.BatteryCell().left().label('42 V')
    e.Line().up(u/2)
    d.push()
    e.Resistor().right().label('$R_2 = 30 Ω$')
    d.pop()
    e.Line().up(u/2)
    e.Resistor().right().label('$R_1 = 70 Ω$')
    e.Line().down()

with schemdraw.Drawing(file=f"res_par_batt_ny.svg", show=False) as d:
    e.BatteryCell().left().label('42 V')
    e.Line().up(u/2)
    e.Resistor().right().label(r'$R_{ers} = 21$ Ω')
    down_line = e.Line().down(u/2)
    e.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('$I$', loc='B')

with schemdraw.Drawing(file=f"kirchoff1.svg", show=False) as d:
    e.BatteryCell().left()
    up_line = e.Line().up(u/2)
    e.CurrentLabelInline(ofst=0, direction='out').at(up_line).label('$I$', loc='T')
    e.Resistor().right()
    down_line = e.Line().down(u/2)
    e.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('$I$', loc='B')

with schemdraw.Drawing(file=f"kirchoff2.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(u/2)
    d.push()
    middle_resistor = e.Resistor().right()
    d.pop()
    e.Line().up(u/2)
    e.Resistor().right() 
    down_line = e.Line().down()
    e.CurrentLabelInline(ofst=-1, direction='out').at(down_line).label(r'$I_{tot}$', loc='B')
    e.CurrentLabelInline(ofst=.5, direction='out').at(down_line).label('$I_1$', loc='B')
    e.CurrentLabelInline(ofst=-1.1, direction='out').at(middle_resistor).label('$I_2$', loc='B')

with schemdraw.Drawing(file=f"strom_punkt.svg", show=False) as d:
    first = e.Line().right(u/2).dot()
    e.CurrentLabelInline(ofst=0).at(first).label('$I$')
    d.push()
    down = e.Line().down(u/2)
    e.CurrentLabelInline(ofst=0).at(down).label('$I_2$')
    d.pop()
    last = e.Line().right(u/2)
    e.CurrentLabelInline(ofst=0).at(last).label('$I_1$')

with schemdraw.Drawing(file=f"nod_forklaring.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(.8*u)
    e.Line().right(u/8).dot()
    d.push()
    res_sep= u/4
    e.Line().up(res_sep)
    e.Resistor().right(u*6/8)
    e.Dot(color='red').label('$A_2$', loc="T")
    e.Line().down(res_sep)
    d.pop()
    e.Line().down(res_sep)
    e.Resistor().right(u*6/8)
    e.Dot(color='red').label('$A_3$', loc="B")
    e.Line().up(res_sep).dot()
    e.Line().right(u/8)
    e.Line().down(.8*u)
    e.Dot(color='red').label('$A_1$', loc="R")
    
with schemdraw.Drawing(file=f"nod_forklaring2.svg", show=False) as d:
    e.BatteryCell().left()
    e.Dot(color='green').label('$B_3$', loc="B")
    e.Line().up(.8*u)
    e.Line().right(u/8).dot()
    d.push()
    res_sep= u/4
    e.Line().up(res_sep)
    e.Dot(color='green').label('$B_1$', loc="T")
    e.Resistor().right(u*6/8)
    e.Line().down(res_sep)
    d.pop()
    e.Line().down(res_sep)
    e.Dot(color='green').label('$B_2$', loc="B")
    e.Resistor().right(u*6/8)
    e.Line().up(res_sep).dot()
    e.Dot(color='red').label('$A$', loc="L")
    e.Line().right(u/8)
    e.Line().down(.8*u)

print(f"Done in {time()-start_time} s")
