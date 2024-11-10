# Effekt

Effekt är ett begrepp man ofta hör i samband med olika apparater. Exempelvis kan en hårfön dra runt 2200 watt. Ni kanske har någon vag uppfattning om att mer effekt har något att göra med mer energi och det stämmer, på sätt och vis. Låt oss ta det från början.

```admonish info title="Storhet och enhet"

Effekt betecknas $P$ och har enheten watt, $\watt$.

```

I elektriska kretsar kopplar man någon apparat, kan vara en brödrost, högtalare eller en glödlampa till en spänning för att något ska hända. Då omvandlas den elektriska energin till annan energiform. Det kan vara värme i brödrosten, ljud i högtalaren eller ljus i glödlampan. På något sätt omvandlas en mängd energi under en viss tid. Effekten är den storheten som beskriver hur mycket energi per tidsenhet som omvandlas. 

```admonish info title="Definition"

Effekt definieras som energi per tidsenhet. 

```

Effekt är med andra ord, hur fort flödar energin?

```admonish question title="Vad betyder det egentligen att en apparat drar en viss effekt?"

Om en mikrovågsugn har effekten 800 watt, betyder det oftast att **maxeffekten** är 800 watt. Tillverkarna kanske kan garantera att den drar MINDRE än det, men inte exakt hur mycket den drar under drift.

```

När vi pratar om effekt i ellära, jobbar vi med elektrisk energi på en viss tid. Effekt har en formel $P=UI$, och man kan skriva om den på två till sätt med hjälp av ohms lag.

```admonish info title="Formler för effekt"

$$P = UI$$
$$P = RI^2$$
$$P = U^2/R$$

```

Ifall vi har en sluten krets som vi kopplar in en lampa till kommer strömmen att flyta igenom lampan och den kommer börja lysa. Vad beror det på hur starkt lampan lyser? Är det spänningen? Strömmen? Effekten?

```admonish example title="Lampstyrka"

![](lampstyrka.svg)

Om vi ökar resistansen, kommer lampan lysa starkare eller svagare?

Lampan kommer lysa svagare.

Vad är det som ändras när man justerar resistansen? Strömmen minskar, och delspänningen över resistorn ökar, alltså blir det mindre delspänning över lampan. 

Så lampans styrka beror både på strömmen och spänningen. Då passar det bra med effekt $P=UI$, vilket också beror på spänning och ström.

```

Vi har tidigare pratat om att anledningen till att lampan lyser är för att ström flyter igenom den. Men ni kan tänka er istället att anledningen till att lampan lyser är för att en effekt utvecklas i den. Vad spelar det för roll hur man tänker på det? Jo, om man tänker att det är strömmen som styr kanske man tror att dubbelt så mycket ström innebär att lampan lyser dubbelt så mycket men det är inte fallet. 

```admonish example title="något"

Vi har en krets där vi har en lampa inkopplad. Strömmen genom kretsen betecknar vi $I$ och effekten som utvecklas i lampan vid den strömmen kallar vi för $P$. Efter ett tag ökar vi strömmen så att den bli dubbelt så stor utan att resistansen ökar i kretsen.

**Hur mycket starkare eller svagare kommer lampan att lysa efter att strömmen ökades?**

Lösning:

$$P = RI^2$$

Resistansen förblir konstant men strömmen ökar ger oss den nya effekten:

$$P _ {ny} = RI _ {ny}^2 = R(2I)^2 = 4RI^2 = 4P$$

Den nya effekten är fyra gånger så stor som den gamla effekten. Lampan lyser alltså fyra gånger så ljust efter att strömmen ökade jämfört med innan. 

**Svar:** Fyra gånger så starkt.

```

```admonish example title="inget dåligt exempel men den ska inte vara här!"

I en enkel krets finns ett batteri, en resistor $R=12\ohm$ och en lampa. Strömmen igenom kretsen är $I = 0.5 \ampere$. 

a) Bestäm effekten som utvecklas i lampan. 

b) Resistorn byts ut mot en annan resistor som har resistansen $R=6\ohm$. Beräkna den nya strömmen, $I _ {ny}$ och den nya effekten, $P _ {ny}$.

Lösning:  
a) $$P = RI^2 = 12 \cdot 0.5^2 = \underline{3\watt}$$
 
b) Ohms lag ger 

$$U = RI$$

Eftersom batteriet fortfarande är densamma vet vi att den nya spänningen är densmamma som den gamla spänningen. Vilket ger oss:

$$U = R _ {gammal} \cdot I _ {gammal} =12 \cdot 0.5 = 6 \volt$$

$$U = R _ {ny} \cdot I _ {ny} = 6\volt$$

Vi vet också att den nya resistorn har hälften så stor resistans som den gamla ($R _ {ny} = 12/2 = 6\ohm$) så vi får

$$U = 6 = 6 \cdot I _ {ny}$$

Vi kan nu lösa ut $I _ {ny}$.

$$ I _ {ny} = 6/6 = \underline{1 \ampere}$$

Nu när vi har både $R _ {ny}$ och $I _ {ny}$ kan vi också beräkna $P _ {ny}$.

$$ P _ {ny} = R _ {ny}I _ {ny}^2 = 6 \cdot 1^2 = \underline{6\watt}$$
```

<!-- todo Nämn något om värme -->

