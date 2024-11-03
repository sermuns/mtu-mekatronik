import schemdraw
import schemdraw.elements as elm
import schemdraw.elements

elm.style(elm.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath")

built = 0

with schemdraw.Drawing(file="ks.svg", show=False) as d:
    elm.BatteryCell().left().label('5 V')
    up_line = elm.Line().up()
    current_up = elm.CurrentLabelInline(ofst=0, direction='out', color='red').at(up_line)
    elm.Resistor().right().label('1 kΩ')
    down_line = elm.Line().down()
    current_down = elm.CurrentLabelInline(ofst=0, direction='out', color='red').at(down_line).label('I')
    built += 1

print(f"Built {built} files")
