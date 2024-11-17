import schemdraw
import schemdraw.elements as e
import schemdraw.elements

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

counter = 0


built = 0

with schemdraw.Drawing(file=f"ex_ser.svg", show=False) as d:
    global u
    u = d.unit
    e.BatteryCell().left(2*u)
    up_line = e.Line().up(u/2).dot()
    d.push()
    e.Line().up(u/2)
    e.MeterV().right()
    e.Line().down(u/2).dot()
    d.pop()
    e.Resistor().right()
    e.Resistor().right()
    down_line = e.Line().down(u/2)
    built += 1


print(f"Built {built} files")
