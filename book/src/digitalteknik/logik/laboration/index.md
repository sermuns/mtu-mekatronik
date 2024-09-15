# Laboration

Hittills i kursen har vi lärt oss skriva booleska uttryck från grindnät, och rita upp grindnät från booleska uttryck. Dessutom har vi lärt oss att skapa och tolka sanningstabeller. Nu när vi har tränat på teoretiska uppgifter, ska vi testa kunskaperna i praktiken med <u>laboration</u>.

<blockquote>

## Innehåll

<!-- toc -->

</blockquote>


<!-- <center>

[↓ Uppgifterna ni ska göra hittar ni längre ned på sidan ↓](#laborationsuppgifter)

</center> -->

```admonish warning title=""
**Innan ni börjar med laborationsuppgifterna förväntas ni läsa igenom denna sida, då det innehåller viktig information om de komponenter som används i labben.**
```

## Teori

### Integrerade kretsar (IC)

![ic](/media/ic.png)

En av de billigaste sätten att få logiska grindar i verkligheten är genom <u>integrerade kretsar</u>. Varje litet chip innehåller flera logiska grindar, där de olika "benen" är antingen in- eller utsignaler. Se nedan för hur de är internt kopplade.

Observera att skåran i form av en halvcirkel har betydelse. Med hjälp av den kan man se om man håller IC:n på rätt håll.

```admonish warning title="Observera!"
I datablad för integrerade kretsar är de logiska grindarna skrivna med amerikanska symboler. Bilden nedan visar en jämförelse mellan de amerikanska och europeiska symbolerna.

![ansi-iec-comparison](/media/logic-gates-comparison.png)
```

| Namn / serie | Funktion | Bild                             |
| ------------ | -------- | -------------------------------- |
| 74HC32       | OR       | ![intern-or](/media/74HC32.jpg)  |
| 74LS08       | AND      | ![intern-and](/media/74LS08.png) |
| 74AC04       | NOT      | ![intern-not](/media/74AC04.png) |

### Breadboard

![breadboard](/media/breadboard.png)

Hur ska man koppla upp allting nu? Med hjälp av en breadboard (kopplingsdäck)!

En breadboard innehåller en massa hål där man kan trycka in dupont/jumper-kablar (de klassiska färgglada sladdarna). Inuti breadboarden är den ihopkopplad så här:
![breadboard-koppling](/media/breadboard-diagram.webp)

Standarden är att trycka fast IC:n i mitten av breadboarden, och dra sladd från plus-rälsen till dess <kbd>VCC</kbd> och från minus-rälsen till dess <kbd>GND</kbd>.

> ![irl-breadboard](/media/irl-breadboard.JPG)
> De integrerade kretsarna passar perfekt i mitten av en breadboard, med sju av sina ben på ena sidan, och sju på andra sidan.


### Arduino

![arduino-nano](/media/arduino-nano.png)

Slutligen, för att ge ström till kretsen använder vi oss av en `Arduino Nano`. Vi kommer **inte** programmera den.

Arduinon kommer att ge ström till de integrerade kretsarna genom sina <kbd>5V</kbd> och <kbd>GND</kbd>-pinnar. Ni kommer också koppla slutliga utsignalen $y$ till pin <kbd>A0</kbd> på Arduinon för att se resultatet.

### Knappar

![button](/media/button.png)

Knapparna som vi använder i laborationen kan kännas lite förvirrande, för de har faktiskt fyra ben. Det skulle kanske kännas mer logiskt om de bara hade två ben, och när man tryckte så kopplas de två benen ihop.

Sättet som dessa fyrbenta knappar fungerar är enligt kopplingsschemat i bilden ovan. Normal sätt är ben A och D ihopkopplade med varandra, och likaså B och C. Det är endast när man trycker på knappen som en brygga sluts i mitten, så då är plötsligt alla fyra ben ihopkopplade i en H-form.

I laborationen ska ni skapa insignaler genom att koppla in knappar enligt bilden nedan. Själva signalen från knappen får ni från ben **C**.

![button-usage](/media/button-usage.png)

Förklaring av bilden:
- A kopplas till <kbd>VCC</kbd>
- B kopplas **genom en resistor (>1kΩ)** till <kbd>GND</kbd>
- C kopplas till valfri ingång på IC-kretsen, här kommer själva utsignalen
- D kopplas inte.

### Koppling

Ni kommer använda dupont/jumper-kablar för att koppla samman punkter på breadboarden. De fungerar helt enkelt genom att trycka ned sladdens ände i ett hål, och sedan andra änden i ett annat hål som man vill sammankoppla.

En bra sak att göra, om det är möjligt, är att <u>färgkoda</u>. Sladdar som är direktkopplade till <kbd>VCC</kbd> brukar vara röda, och sladdar som är diretkopplade till <kbd>GND</kbd> brukar vara svarta. Om man någonsin kopplar ihop två röda och svarta sladdar så borde man bli livrädd :)

```admonish danger title="Kortslutning!"
Om man <u>kortsluter</u> någonting på breadboarden, så kan det skada Arduinon, IC-kretsarna och i värsta fall börja brinna. Var försiktiga och **dubbelkolla alltid** kopplingarna innan ni kopplar in ström.

![kortslutning-knapp](/media/kortslutning-knapp.png)
_I denna krets blir det kortslutning om knappen trycks in, eftersom <kbd>VCC</kbd> och <kbd>GND</kbd> kopplas ihop. Därför är det viktigt med en resistor mellan <kbd>GND</kbd> och knappen._

```

<br><br><br><br>

---
## Laborationsuppgifter
I uppgifterna nedan ska ni koppla upp en krets som implementerar en viss logisk funktion.

Ni ska använda er av de integrerade kretsarna, en breadboard och en Arduino Nano.

Utsignalen $y$ ska kopplas till pin <kbd>A0</kbd> på Arduinon, och kommer då lysa upp den inbygga LED-lampan (ofta benämnd **L**) på Arduinon när den är hög.

<ol class="exercises">

<li>
Koppla upp en krets som realiserar
$$y = a$$
</li>

<li>
Koppla upp en krets som realiserar 
$$y = ab + c$$
</li>

<li>
Koppla upp en krets som realiserar
$$y = a^{\prime}b + ab^{\prime}$$
</li>

<li>
Koppla upp en krets som realiserar

![lab4](/media/lab4.svg)
</li>

<li>
Koppla upp en krets som realiserar

| a   | b   | y   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |
</li>

</ol>