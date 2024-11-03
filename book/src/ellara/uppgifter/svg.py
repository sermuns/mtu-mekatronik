import schemdraw
import schemdraw.elements as elm
import schemdraw.elements

elm.style(elm.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath",mathfont="cm")

built = 0

with schemdraw.Drawing(file="ks1.svg", show=False) as d:
    elm.BatteryCell().left().label('10 V')
    up_line = elm.Line().up()
    current_up = elm.CurrentLabelInline(ofst=0, direction='out', color='red').at(up_line)
    elm.Resistor().right().label('2 kΩ')
    down_line = elm.Line().down()
    current_down = elm.CurrentLabelInline(ofst=0, direction='out', color='red').at(down_line).label('I')
    built += 1

with schemdraw.Drawing(file="ks2.svg", show=False) as d:
    elm.BatteryCell().left().label('3.3 V')
    up_line = elm.Line().up()
    elm.Resistor().right()
    down_line = elm.Line().down()
    current_down = elm.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('6.6 mA')
    built += 1

with schemdraw.Drawing(file="ks3.svg", show=False) as d:
    elm.BatteryCell().left()
    up_line = elm.Line().up()
    elm.Resistor().right().label('1 kΩ')
    down_line = elm.Line().down()
    current_down = elm.CurrentLabelInline(ofst=0, direction='out').at(down_line).label('23 mA')
    built += 1

with schemdraw.Drawing(file="ks4.svg", show=False) as d:
    elm.BatteryCell().left(6).label('12 V')
    up_line = elm.Line().up()
    elm.Resistor().right().label('$R_1$ = 2 kΩ')
    elm.Resistor().right().label('$R_2$ = 4 kΩ')
    down_line = elm.Line().down()
    built += 1

print(f"Built {built} files")

