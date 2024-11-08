import time
import schemdraw
import schemdraw.elements as e
import schemdraw.elements

e.style(e.STYLE_IEC)
schemdraw.config(font="NewComputerModernMath", mathfont="cm")

start_time = time.time()

with schemdraw.Drawing(file=f"parallell.svg", show=False) as d:
    e.BatteryCell().left()
    e.Line().up(d.unit/2)
    d.push()
    e.Resistor().right().label("$R_2$")
    d.pop()
    e.Line().up(d.unit/2)
    e.Resistor().right().label("$R_1$")
    e.Line().down()

print(f"Finished build in {time.time() - start_time:.2f} seconds")
