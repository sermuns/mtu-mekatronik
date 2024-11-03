import schemdraw
import schemdraw.elements as elm

# OUTPUT_FILE = __file__.replace('.py', '.svg')
elm.style(elm.STYLE_IEC)

with schemdraw.Drawing(file="kretsschema.svg", show=False) as d:
    elm.BatteryCell().right()
    elm.Line().up()
    elm.Resistor().left()
    elm.Line().down()

with schemdraw.Drawing(file="sladd.svg", show=False) as d:
    elm.Line().left()

with schemdraw.Drawing(file="resistor.svg", show=False) as d:
    elm.Resistor().left()

with schemdraw.Drawing(file="lampa.svg", show=False) as d:
    elm.Lamp2().left()

with schemdraw.Drawing(file="brytare.svg", show=False) as d:
    elm.Switch().left().flip()

with schemdraw.Drawing(file="fork.svg", show=False) as d:
    u = d.unit
    elm.Line().right(.5*u).dot()
    d.push()
    elm.Line().right(.3*u)
    d.pop()
    elm.Line().down(.3*u)

with schemdraw.Drawing(file="voltmeter.svg", show=False) as d:
    elm.MeterV().left()

with schemdraw.Drawing(file="amperemeter.svg", show=False) as d:
    elm.MeterA().left()

with schemdraw.Drawing(file="stromriktning.svg", show=False) as d:
    l = elm.Line().right()
    elm.CurrentLabelInline(ofst=0).at(l)

# circuit using ALL of the above
with schemdraw.Drawing(file="krets.svg", show=False) as d:
    bat = elm.BatteryCell().label('Batteri')
    d.add(bat)
    d.add(elm.Line().up())
    d.add(elm.Resistor().label('Resistor'))
    d.add(elm.Line().down())
    d.add(elm.Line().right().length(3))
    d.add(elm.Lamp2().label('Lampa'))
    d.add(elm.Line().down())
    d.add(elm.Switch().label('Brytare'))
    d.add(elm.Line().left().length(3))
    d.add(elm.MeterV().label('Voltmeter'))
    d.add(elm.Line().up())
    d.add(elm.MeterA().label('Amperemeter'))
    d.add(elm.Line().left().length(3))
