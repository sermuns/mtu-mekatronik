# Laboration

Hittills i kursen har vi lärt oss skriva booleska uttryck från grindnät, och rita upp grindnät från booleska uttryck. Dessutom har vi lärt oss att skapa och tolka sanningstabeller. Nu när vi har tränat på teoretiska uppgifter, ska vi testa kunskaperna i praktiken med <u>laboration</u>.

<!-- <center>

[↓ Uppgifterna ni ska göra hittar ni längre ned på sidan ↓](#laborationsuppgifter)

</center> -->

```admonish warning title=""
**Innan ni börjar med laborationsuppgifterna förväntas ni läsa igenom denna sida, då det innehåller viktig information om de komponenter som används i labben.**
```

## Integrerade kretsar (IC)

![ic](/media/ic.png)

En av de billigaste sätten att få logiska grindar i verkligheten är genom <u>integrerade kretsar</u>. Varje litet chip innehåller flera logiska grindar, där de olika "benen" är antingen in- eller utsignaler. Se nedan för hur de är internt kopplade.

Observera att skåran i form av en halvcirkel har betydelse. Med hjälp av den kan man se om man håller IC:n på rätt håll.

```admonish warning title="Observera!"
I datablad för integrerade kretsar är de logiska grindarna skrivna med amerikanska symboler. Bilden nedan visar en jämförelse mellan de amerikanska och europeiska symbolerna.

![ansi-iec-comparison](/media/logic-gates-comparison.png)
```

| Namn | Grind | Intern koppling |
|------|-------|-----------------|
| 74HC32 | OR | ![intern-or](/media/74HC32.jpg) |
| 74LS08 | AND | ![intern-and](/media/74LS08.png) |
| 74AC04 | NOT | ![intern-not](/media/74AC04.png) |

## Breadboard

![breadboard](/media/breadboard.png)

Hur ska man koppla upp allting nu? Med hjälp av en breadboard (kopplingsdäck)!

En breadboard innehåller en massa hål där man kan trycka in dupont/jumper-kablar (de klassiska färgglada sladdarna). Inuti breadboarden är den ihopkopplad så här:
![breadboard-koppling](/media/breadboard-diagram.webp)

Standarden är att trycka fast IC:n i mitten av breadboarden, och dra sladd från plus-rälsen till dess <kbd>VCC</kbd> och från minus-rälsen till dess <kbd>GND</kbd>.

> ![irl-breadboard](/media/irl-breadboard.JPG)
> De integrerade kretsarna passar perfekt i mitten av en breadboard, med sju av sina ben på ena sidan, och sju på andra sidan.


## Arduino

![arduino-nano](/media/arduino-nano.png)

Slutligen, för att ge ström till kretsen använder vi oss av en `Arduino Nano`. Vi kommer **inte** programmera den.

Arduinon kommer att ge ström till de integrerade kretsarna genom sina <kbd>5V</kbd> och <kbd>GND</kbd>-pinnar. Ni kommer också koppla slutliga utsignalen $y$ till pin <kbd>D13</kbd> på Arduinon för att se resultatet.

<br>
<br>

---
## Laborationsuppgifter
I uppgifterna nedan ska ni koppla upp en krets som implementerar en viss logisk funktion. Ni ska använda er av de integrerade kretsarna som beskrivs ovan, samt en breadboard och en Arduino Nano.

### Laborationsuppgift 1
Skapa en krets som implementerar _$y = ab + c$._

### Laborationsuppgift 2
Skapa en krets som implementerar följande sanningstabell:

| a | b | y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

