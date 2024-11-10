# Kombinerade kretsar
Vi lärde oss från tidigare avsnitt att om komponenter är kopplade i serie är strömmen igenom de densamma, medan spänningen fördelar sig över dem i delspänningar enligt Kirchhoffs spänningslag. För komponenter som är kopplade parallellt delar sig strömmen i delströmmar enligt Kirchhoffs strömlag, medan spänningen är samma över de parallella grenarna.

Kretsar i verkligheten är ofta lite mer komplicerade än att alla komponenter är kopplade i serie eller att alla komponenter är kopplade parallellt. I kretsen nedan syns det att $R_1$ och $R_2$ är kopplade parallellt med varandra. Den parallellkopplingen är dock kopplad i serie med $R_3$ och spänningskällan.

![](kom-krets.svg)

Ohms lag gäller även här, det gäller bara att hålla koll på vilken ström och vilken spänning som finns på de olika delarna i kretsen.

Tar vi kretsen ovan som exempel vet vi att spänningskällan har spänningen U. Enligt Kirchhoffs spänningslag måste den spänningen fördelas över alla komponenterna i serie. 

```admonish example title="Exempel: Kombinerad krets"

I kretsen nedan har batteriet spänningen $U = 20 \volt$, och resistorerna är $R_1 = 100\ohm$, $R_2 = 150 \ohm$ och $R_3 = 20\ohm$. 

![](ex-upg.svg)


**a) Bestäm den totala strömmen i kretsen.**  
**b) Bestäm delspänningarna över alla resistorer i kretsen.**  
**c) Bestäm alla delströmmar i kretsen.**


Lösning

**a)** Vi kan lösa ut den totala strömmen ur Ohms lag. Det vi behöver då är den totala spänningen från spänningskällorna och den totala resistansen. 

$R_1$ och $R_2$ är kopplade parallellt och kan ersättas med resistansen som vi kallar för $R _ {12}$. 

$$\frac{1}{R _ {12}} = \frac{1}{R_1} + \frac{1}{R_2}$$
$$\frac{1}{R _ {12}} = \frac{1}{100} + \frac{1}{150} = \frac{100+150}{100 \cdot 150}= \frac{1}{60}$$
$$R _ {12} = 60 \ohm$$

![](ex-upg2.svg)

Nu är $R _ {12}$ och $R_3$ i serie och den totala resistansen i kretsen kan beräknas som summan av dessa. 

$$R _ {tot} = R _ {12} + R_3 = 60 + 20 = 80\ohm$$

Vi söker $I _ {tot}$ och vet $R _ {tot}$ och $U _ {tot}$. Då kan vi använda ohms lag.

$$I _ {tot} = U _ {tot} / R _ {tot} = 20 / 80 = 1/4 = \underline{0.25\ampere}$$ 

**b)** Vi söker delspänningarna över resistorerna. Vi kallar spänningen över $R_1$ för $U_1$, spänningen över $R_2$ för $U_2$, osv.

Vi kan utnyttja Ohms lag för att beräkna $U_3$.

$$U_3 = R_3 \cdot I _ {tot}$$

Anledningen till att vi använder $I _ {tot}$ är för att det är den strömmen som går igenom resistansen. 

$$U_3 = 20 \cdot 0.25 = \underline{5\volt}$$

Om vi potentialvandrar från batteriets pluspol mot minuspolen och går igenom $R_1$ ser vi att finns en potentialskillnad över den resistorn. Den delspänningen har vi kallat för $U_1$. Fortsätter vi att vandra stöter vi också på $U_3$. Därefter ör vi framme vid minuspolen.

Kirchhoffs spänningslag säger att alla spänningar i en krets efter ett helt varv ska vara noll. Detta ger

$$U _ {tot} - U_1 - U_3 = 0$$
$$U_1 = U _ {tot} - U_3 = 20 - 5 = \underline{15\volt}$$

Vi vet att vid parallellkoppling är spänningen över de olika grenarna samma. Vi vet alltså att $U_1 = U_2 = \underline{15 \volt}$.

**c)** Vi söker nu alla delspänningar. Dessa är $I_1$ som går igenom $R_1$ och $I_2$ som går igenom $R_2$.

I $R_1$ finns resistansen $R_1 = 100\ohm$, spänningen över är $U_1 = 15 \volt$ och strömmen igenom är $I_1 = ?$.

Med Ohms lag får vi:

$$I_1 = U_1 / R_1 = 15 / 100 = \underline{0.15\ampere}$$

På samma sätt kan vi beräkna $I_2$.

$$I_2 = U_2 / R_2 = 15 / 150 = \underline{0.1\ampere}$$

```

Har man koll på hur man räknar på parallella och seriella kopplingar är inte kombinerade kretsar mycket svårare.

## Ersättnignsresistans
I tidigare kapitel har vi kunnat kalla ersättningsresistansen för $R _ {ersättning}$. I kombinerade kretsar vill vi ibland ha flera ersättnignsresistanser. Därför är det bra ifall vi istället namnger ersättningsresistanserna efter de resistorer som vi har ersatt. Har Vi exempelvis $R_1$ och $R_2$ ersätter vi dem med $R _ {12}$.

För att det ska gå lätt att ersätta resistorerna kan ni försöka tänka på vissa saker:
1. Ersätt resistorerna som är kopplade i serie på samma gren.
2. Ersätt de parallella kopplingarna.
3. Ersätt resterande seriekoppling.

Det är kanske lite oklart nu hur en krets kan se ut och vad ni förväntas göra så vi tar ett exempel.

```admonish example title="Ersättnignsresistanser"

I en krets har vi åtta resistanser som är kopplade enligt bilden nedan.

<!-- todo BILD -->
BILD

**Hur ska vi gå till väga för att beräkna den totala resistansen?**

Lösning:

Om vi tar en närmare titt på resistanserna $R_1$, $R_2$ och $R_3$ ser vi att $R_1$ är kopplad parallellt med de två resistorerna $R_2$ och $R_3$. Innan vi kan beräkna ersättningsresistansen för den parallella kopplingen måste vi först beräkna ersättningsresistansen för $R_2$ och $R_3$.

$$R _ {23} = R_2 + R_3$$

<!-- todo ny bild -->
BILD

Nu kan vi beräkna ersättningsresistansen för $R_1$ och $R _ {23}$. Vi kallar den för $R _ {123}$.

$$\frac{1}{R _ {123}} = \frac{1}{R_1} + \frac{1}{R _ {23}}$$

<!-- todo ny bild -->
BILD

Nu kan vi kolla på resistorerna 4 till 8. 
Innan vi kan beräkna den parallella kopplingen måste vi först se till att alla seriekopplade resistorer på samma gren har ersatts. 

Vi ersätter $R_5$, $R_6$ och $R_7$ med $R _ {567}$.

<!-- todo ny bild -->
BILD

Vi kan nu ersätta den parallella kopplingen med $R _ {45678}$.

<!-- todo ny bild -->
BILD

Nu har vi en krets med två resistorer som är kopplade i serie så det är bara att ersätta dem också så har vi fått den totala resistansen.

$$R _ {tot} = R _ {123} + R _ {45678}$$

<!-- todo ny bild -->
BILD


```