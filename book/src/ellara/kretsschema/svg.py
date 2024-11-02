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