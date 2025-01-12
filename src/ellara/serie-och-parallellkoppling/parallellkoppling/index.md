# Parallellkoppling
Det som kännetecknar parallellkopplingar är att det finns förgreningar i kretsen som leder till att strömmen i vissa delar i kretsen inte kommer att vara den totala strömmen. 

```admonish question title="Vad är poängen med parallellkoppling?"

Det kallas för parallellkoppling när det finns flera vägar för strömmen att ta. Strömmen delar då upp sig i så kallade delströmmar.

Ett exempel på parallellkoppling i vardagen är julbelysning. Har du någonsin märkt att ett ljus i slingan har gått sönder samtidigt som de andra ljusen fortsätter lysa? Detta har att göra med att ljusen är parallellkopplade. När ena ljuset går sönder, gör det inte så mycket för kretsen är fortfarande sluten för alla andra ljus och strömmen kan flöda. Då är det lätt att se vilken som behöver bytas och allt blir inte helt mörkt. 

Hade alla lampor varit seriekopplade skulle kretsen brytas så fort en lampa går sönder och vi hade inte vetat vilken lampa som var den söndriga.

```

### Resistorer parallellt kopplade

Nedan syns en krets med ett batteri och två parallellkopplade resistorer.

Precis som vid seriekopplade resistorer, kan det nu vara bekvämt att ersätta de parallellkopplade resistorerna med en enda <u>ersättningsresistans</u>.

![](parallell.svg)

#### Ersättningsresistans
Ersättningsresistansen kallas den resistansen som kan ersätta två eller fler resistanser. Vid seriekopplade resistanser vet vi att ersättningsresistansen beräknades som summan av resistanserna. Tyvärr är den inte lika intuitiv för parallellkopplingar. 

Vid parallella resistorer beräknas ersättningsresistansen enligt
$$\frac{1}{R _ {ers}} = \frac{1}{R_1} + \frac{1}{R_2} + ...$$

osv för så många resistorer som är parallellt kopplade.

```admonish example title="Exempel: Ersättningsresistanser"

I krets finns två resistorer kopplade parallellt, $R_1 = 5 \ohm$ och $R_2 = 3 \ohm$. Du vill ersätta de två resistorerna med en enda resistor. **Hur stor resistans bör den nya resistorn ha?**

![](ex_ers_res.svg)

Lösning: 
$$\frac{1}{R _ {ers}} = \frac{1}{R_1} + \frac{1}{R_2}$$
$$\frac{1}{R _ {ers}} = \frac{1}{5} + \frac{1}{3} = \frac{3}{15} + \frac{5}{15} = \frac{8}{15}$$

Sista steget för att få $R _ {ers}$ är att <u>invertera</u> båda sidorna. Det betyder att man "vänder upp-och-ned" på bråken, täljare ska bli nämnare och nämnare blir täljare:

$$R _ {ers} = \frac{15}{8} \ohm$$

**Svar:** Vi kan ersätta de två resistorerna i kretsen med en resistor med resistansen $\frac{15}{8} \ohm$. 

```

Efter att har beräknat ersättningsresistansen kan kretsschemat ritas om som en krets med enbart en resistor, och beräkningarna kan fortsätta som vi tidigare har lärt oss.

```admonish example title="Exempel: Resistorer parallellt"

I en krets finns ett batteri med spänningen $U = 42 \volt$, och två resistorer där $R_1 = 70 \ohm$ och $R_2 = 30 \ohm$. **Beräkna den total strömmen i kretsen.**

![](res_par_batt.svg)

Enligt Ohms lag gäller:

$$I = U / R$$

$I$ är den totala strömmen i kretsen, $U$ är spänningen i kretsen och $R$ är den totala resistansen i kretsen.

Den totala resistansen är ersättningsresistansen och fås enligt

$$\frac{1}{R _ {ers}} = \frac{1}{R_1} + \frac{1}{R_2}$$
$$\frac{1}{R _ {ers}} = \frac{1}{70} + \frac{1}{30} = \frac{30}{2100} + \frac{70}{2100} = \frac{100}{2100}$$

$$R _ {ers} = \frac{2100}{100} = 21 \ohm$$

Nu när vi har ersättningsresistansen kan vi rita kretsen nedan.

![](res_par_batt_ny.svg)

$$I = U/R = 42/21 = 2 \ampere$$

**Svar:** $I = 2 \ampere$.


```


### Kirchhoffs strömlag
Som vi lärde oss i förra kapitel innebär parallellkoppling att det finns minst en förgrening i kretsen där den totala strömmen kan dela på sig i så kallade delströmmar. 

I en seriekopplad krets är den totala strömmen, $I$, densamma som strömmen genom HELA kretsen. Den har ju ingen annan stans att ta vägen. 

![](kirchoff1.svg)

Vid parallellt kopplade komponenter kommer en del av strömmen att ta ena vägen medan den andra delen av strömmen tar den andra vägen. 

![](kirchoff2.svg)

Strömmen vill ta den lättaste vägen. Har vi alltså två parallellt kopplade resistorer, där den ena har en lägre resistans kommer att mer ström att strömma där igenom. 

Ni kan tänka er att det finns två vägar att ta till skolan. Den snabbaste/lättaste vägen är den som alla vill ta. Men ni vet att när det är rusningstrafik får man ibland ta den längre/jobbigare vägen för att komma fram i tid. De flesta människorna kommer att ta den snabbare vägen till skolan, men det finns en mindre andel som tar omvägen för att skippa rusningstrafiken.

På samma sätt fungerar ström. Strömmen kommer att ta den vägen som har minst motstånd, men en mindre andel av strömmen måste ta omvägen.

Om man fortsätter resonera kommer man fram till <u>Kirchhoffs strömlag</u>.

```admonish info title="Kirchhoffs strömlag"

Den totala strömmen in i en nod i en krets är lika med den totala strömmen som lämnar noden.
```

![](strom_punkt.svg)

Vad betyder detta? Jo, om du tänker dig att du har en punkt och det finns några strömmar in mot den här punkten. Strömmar kan aldrig bli stilla utan måste fortsätta och då måste de också komma ut ur punkten.

```admonish example title="Exempel: Kirchhoffs strömlag"

In i en punkt flödar tre strömmar, $I_1 = 2 \ampere, I_2 = 6 \ampere, I_3 = 5 \ampere$.

Ut ur punkten kommer två strömmar, $I_4 = 11 \ampere $ och $I_5 =?$

**Bestäm den totala strömmen in i punkten, den totala strömmen ut ur punkten och strömmen $I_5$.**

Lösning:

Den totala strömmen in är summan av alla strömmar in i punkten. 

$$I _ {in} = I_1 + I_2 + I_3 =2 + 6 + 5 = 13\ampere$$

Den totala strömmen ut ur punkten är enligt Kirchhoffs strömlag lika stor som strömmen in i punkten. 

$$I _ {in} = I _ {ut} = 13\ampere$$

$$I _ {ut} = I_4 + I_5$$
$$I_5 = I _ {ut} - I_4 = 13-11 = 2\ampere$$

**Svar:** Den totala strömmen in i punkten och den totala strömmen ut ur punkten är $13 \ampere$ och $I_5 = 2\ampere$.

```




### Spänning vid parallellkoppling
I en seriekoppling vet vi att spänningen från spänningskällan delar sig över resistorerna som finns. Vad är fallet vid parallellkopplingar?


![](nod_forklaring.svg)


Om vi potentialvandrar längs med en parallellkopplad krets från spänningskällans pluspol mot minuspolen ser vi att mellan punkt A3 och A2 finns ingen potentialskillnad. Detta vet vi för att det inte finns något motstånd eller någon spänningskälla mellan A3 och A2 så därför kan inte potentialen varken minska eller öka. Med exakt samma resonemang ser vi att potentialen inte ändras mellan A1 och A3. Ingen potentialskillnad betyder att alla dessa punkter tillhör samma [nod](../potential-och-spanning#nod).

Då kan vi markera förgreningen innan resistorerna som nod A.

```admonish tip title="Beteckna noder"

Ofta är det bra att markera noderna mellan resistorer ifall dessa är seriekopplade eller vid förgreningar vid parallellkopplingar.

```

![](nod_forklaring2.svg)


Om vi fortsätter vår potentialvandring från A genom $R_1$ vet vi att potentialen kommer att minska  med spänningen som ligger över resistorn. Vi kan kalla den punkten för B1. Vandrar vi från A genom $R_1$ kommer vi till punkten B2. Eftersom att det inte finns något resistans eller någon spänningskälla mellan B1 och B2 eller B3 måste dessa vara samma noder. Vi kan markera noden B i förgreningen.

![](nod_forklaring3.svg)

Det vi har kommit fram till nu är att vid parallellkopplingar av resistorer finns det en nod vid förgreningen innan resistorerna och en nod vid förgreningen efter dem. Vilken väg vi än väljer att gå igenom är potentialskillnaden lika stor mellan A och B, alltså spänningen över alla grenar är lika stora. Detta gäller ALLTID. Vi kommer kolla på mer komplicerade kretsar framöver och även där gäller det att vid parallellkopplingar är spänningen över grenarna lika stora.

```admonish info title="Parallellkoppling"

När spänningskällan är parallellkopplad med resistorerna kommer spänningen över varje gren vara lika stor som spänningen över spänningskällan.

```

```admonish example title="Exempel: Delströmmar och parallella resistorer"

I en krets finns ett batteri på med spänningen $U = 15 \volt$. Den är parallellkopplad med resistorerna $R_1 = 20 \ohm$ respektive $R_2 = ? \ohm$ enligt bilden nedan.

Den totala strömmen är $I _ {tot} = 1 \ampere$.

![](ex_del_parallell.svg)

**a) Beräkna delströmmarna $I_1$ och $I_2$.**

**b) Beräkna $R_2$.**

**c) Bestäm också $I_3$.**

Lösning:

a) $I_1$ kan vi beräkna m.h.a Ohms lag:

$$I_1 = U_1 / R_1$$

Där $U_1$ är spänningen över $R_1$, $U_1 = U = 15\volt$.

$$I_1 = 15 / 20 = 7.5/10 = \underline{0.75 \ampere}$$

Om vi betraktar noden A ser vi att strömmen in är $I _ {tot}$ och strömmarna ut är $I_1$ och $I_2$.Vi vet då att $$I _ {tot} = I_1 + I_2$$

$$I_2 = I _ {tot} - I_1 = 1 - 0.75 = \underline{0.25 \ampere}$$


b) Vi utnyttjar Ohms lag även här.

$$R_2 = U_2 / I_2 = 15 / 0.25 = \underline{60\ohm}$$

c) Vid förgreningen efter resistorerna möts $I_1$ och $I_2$ igen så 

$$I_3 = I_1 + I_2 = I _ {tot} = \underline{1 \ampere}$$

**Svar:**

a) $I_1 = 0.75 \ampere$, $I_2 = 0.25 \ampere$  
b) $R_2 = 60 \ohm$   
c) $I_3 = 1 \ampere$.

```

### Parallella spänningskällor
I seriekopplade kretsar har vi stött på flera spänningskällor. Då har vi bara kunnat addera spänningarna och fått den totala spänningen i kretsen. Vid parallellt kopplade spänningskällor är inte matten lika lätt, så vi kommer inte att räkna på det.

Något som är bra ifall ni känner till är dock vad seriekopplade respektive parallellt kopplade spänningskällor har för påverkan på kretsen. 

Har vi en krets med ett batteri och en resistans så har vi en ström som kan beräknas $$I = U/R$$ Om vi kopplar in ett lika stort batteri <u>i serie</u> i kretsen kommer den nya spänningen att vara $$U _ {tot} = U + U = 2U$$ Då blir den nya strömmen genom kretsen $$I _ {ny} = U _ {tot}/R = 2U / R = 2I$$

Strömmen genom kretsen blir alltså dubbelt så stor efter att det andra batteriet kopplas in.

Detta är inte fallet vid parallellkoppling. Ifall vi har en krets med ett batteri och en resistor får vi en ström $I$ i kretsen. Om vi då kopplar in ett till lika stort batteri <u>parallellt</u> i kretsen har vi ingen förändring i strömmen. 

Batterierna hjälps åt att skapa strömmen som kommer att vara lika stort som innan

$$I _ {ny} = I$$

Eftersom batterierna är lika stora och hjälps åt att skapa strömmen behöver var och en bara leverera hälften så mycket spänning för strömmen, $I$. Batterierna kommer alltså att hålla dubbelt så länge.

```admonish info title="Parallella spänningskällor"

Strömmen i kretsen påverkas inte, och batterierna håller längre.

```


### Voltmeter

En voltmeter är ett mätinstrument som mäter potentialskillnaden mellan två punkter. Man säger att den mäter *spänningen över* komponenterna. För att en voltmeter ska kunna avgöra spänningen över en eller flera komponenter måste den kopplas parallellt med dessa. 

Vi vet ju att strömmen delar på sig när den har chansen men hur mycket ström som tar vilken väg beror på hur stor resistanserna är på de olika vägarna/grenarna. Voltmetern har en VÄLDIGT stor inre resistans för att inte påverka kretsen när den kopplas in.


### <u>Sammanfattning:</u>
- Parallellkoppling är när komponenter kopplas "över" varandra så att strömmen har flera vägar att välja. När strömmen delar på sig skapas så kallade delströmmar. 

- Hur stort motståndet är på de olika vägarna avgör hur stor andel av strömmen som kommer att flöda därigenom. Grenen med lägre resistans kommer ha en större andel ström.

- Finns flera resistorer kopplade parallellt kan alla resistorer ersättas med en enda resistans, *ersättningsresistansen*. [Formeln](#ersättningsresistans) ser annorlunda ut i parallellkopplingar än i seriekopplingar. 

- Efter att ersättningsresistansen har beräknats kan vi rita ett nytt kretsschema där hela kretsen är seriekopplad. Därefter kan vi räkna precis som för seriekopplade kretsar. 

- Kirchhoffs strömlag: Den totala strömmen in i en nod i en krets är lika med den totala strömmen som lämnar noden.

- Spänningen är densamma över alla parallellt kopplade grenar. 

- Bra att rita noder i förgreningar.

- Parallellt kopplade spänningskällor förändrar inte den totala strömmen i  kretsen. Däremot håller batterierna längre. 

- Potentialen ändras efter en resistor eller en spänningskälla. Olika noder är punkter som har olika potentialer. 

- En voltmeter ska kopplas parallellt med komponenterna som den ska mäta spänningen över.
