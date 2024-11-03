# Serie- och parallellkoppling

Hittills har vi tittat på den väldigt enkla kretsen med en spänningskälla och en resistans som tillsammans bestämmer strömmen. Ofta är elektriska system mer komplicerade än såhär. Det kan finnas fler resistorer och även fler spänningskällor. Dessa kan bli ihopkopplade på flera sätt. I grunden finns två sätt att koppla ihop komponenter: **Seriekoppling** och **parallellkoppling**.

## Seriekoppling
Seriekoppling av komponenter betyder att de är kopplade efter varandra så att strömmen som går igenom den ena komponenten är densamma som går igenom den andra.

### Resistorer i serie

Bilden nedan visar en krets med ett batteri och två resistorer som är seriekopplade. 

![](batres.svg)

Vid kretsar som innehåller flera resistorer brukar dessa namnges enligt $R_1$, $R_2$, osv. 

Vid seriekoppling beräknas den totala resistansen i kretsen som summan av alla resistorer.

```admonish example title="Exempel: Totala resistansen"

**Beräkna strömmen, $I$, i kretsen nedan.**

![i](ex_tot_res.svg)

Batteriet har spänningen $U=10 \volt$, $R_1 = 2 \ohm$ och $R_2 = 3 \ohm$.


**Lösning:**

Även här använder vi ohms lag ($U=R \cdot I$).

Eftersom det är den *totala* spänningen som är given så är det också den *totala resistansen* som vi behöver använda i formeln.


$$R _ {tot} = R_1 + R_2 = 2 + 3 = 5 \ohm$$

Löser vi ut strömmen ur ohms lag får vi:

$$I = U/R = 10 / 5 = 2 \ampere$$

Svar: $ I = 2 \ampere$
```

### Ersättningsresistans
I verkligheten finns inte resistorer med alla möjliga resistanser. Exempelvis är det väldigt svårt (om det ens är möjligt) att hitta en resistor med exakt resistansen $1050 \ohm$.
Då hade vi istället seriekopplat två resistorer, en med resistansen $1000 \ohm$ och en med $50 \ohm$. I teorin finns dock inget som säger att en resistor på $1050 \ohm$ inte kan finnas. Därför är det ofta fördelaktigt att ersätta flera resistorer med en enda när vi ska räkna teoretiskt. Detta kallas för ersättningsresistans. Vid seriekopplade komponenter är detta samma sak som den totala resistansen, $R _ {tot}$.

### Spänning över resistorer
När vi har använts oss av Ohms lag tidigare har vi alltid använt den totala spänningen och den totala resistansen i kretsen. Sanningen är att Ohms lag fungerar även på mindre skalor. Vet vi hur stort ett motstånd är och strömmen igenom den så kan vi också beräkna spänningen över motståndet. Vi kan beräkna spänningen över varje resistor som finns i en krets.


```admonish example title="Exempel: Delspänningar"
Nedan ser vi att kretsen har en spänningskälla med spänningen $10 \volt$. Utöver det finns 3 resistorer. $R_1 = 20 \ohm$, $R_2 = 50 \ohm$ och $R_3 = 30 \ohm$.

![](ex_del.svg)

**Beräkna alla delspänningar, alltså spänningen över alla resistorer i kretsen.**

**Lösning:**

För att beräkna delspänningarna måste vi veta resistansen över varje resistor (dessa har vi givet) och strömmen som går igenom resistorerna. 

Strömmen genom resistorerna är densamma genom alla och är den totala strömmen i kretsen. Då måste vi beräkna strömmen!

Ohms lag: $I = U/R$

Vi har den totala spänningen $U = 10 \volt$. Den totala resistansen är $$R _ {tot} = R_1 + R_2 + R_3 = 20 + 50 + 30 = 100 \ohm$$

$$I = 10 / 100 = 0.1 \ampere$$

Nu har vi allt vi behöver för att beräkna delspänningarna.

$$U_1 = R_1I = 20 \cdot 0.1 = 2 \volt$$
$$U_2 = R_2I = 50 \cdot 0.1 = 5 \volt$$
$$U_3 = R_3I = 30 \cdot 0.1 = 3 \volt$$

```

### Spänningskällor i serie
En krets kan även ha fler spänningskällor, inte bara resistorer. Den totala spänningen av seriekopplade spänningskällor fungerar likadant som seriekopplade resistanser. Den totala spänningen blir summan av alla spänningar från de olika spänningskällorna.

```admonish example title =""

Har vi 2 batterier på $5\volt$ blir den totala spänningen $10\volt$.

Har vi spänningskällor som ger $10\volt$, $4\volt$ och $3\volt$ blir den totala spänningen $17\volt$.

```

### Potentialvandring
Som vi har nämnt tidigare är spänning en potentialskillnad mellan två noder. Olika noder är sådana "punkter" där potentialen inte är samma. Vi har också tidigare nämnt att den elektriska potentialen i kretsar ändras efter ett motstånd eller spänningskälla.

Går vi från battriets pluspol mot batteriets minuspol kommer vi att stöta på resistanser (om inte kretsen är kortsluten, och det vill vi ju inte!). Vid pluspolen är potentialen hög och efter varje resistor är potentialen lägre ända fram till batteriets minuspol då den är som lägst. Dessa potentialskillnader som finns innan och efter resistorer är såna *delspänningar* som vi beräknade [ovan](#admonition-exempel-delspänningar).




Så om man går i strömmens riktning minska potentialen med varje resistor. Stöter vi istället på spänningar 




Har vi en enkel krets med enbart en resistor och ett batteri vet vi att skillnaden mellan potentialen innan resistorn och potentialen efter resistorn är samma som spänningen över batteriet. 

```admonish info title="Kirchhoffs spänningslag"
Summan av alla potentialändringar i en sluten krets är $0$.
```

Vad betyder detta egentligen?
Jo, som vi har hört ändras potentialen 


### Amperemeter




## Parallellkoppling
Vad är parallellkoppling?

### KCL

### Parallella spänningskällor

### Ersättningsresistans, parallella resistorer

### Voltmeter

### Spänning vid parallellkoppling





## Kombination av kopplingarna.

### Ersättningsresistans

### Strömmen innan en förgrening och efter mergningen är den totala strömmen.






