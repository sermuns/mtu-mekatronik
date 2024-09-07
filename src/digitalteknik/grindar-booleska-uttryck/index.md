# Grindar / booleska uttryck

När vi ska avkoda flera digitala signaler samtidigt, eller när vi ska skapa en digital signal som är beroende av flera andra digitala signaler, så kan vi använda oss av <u>logiska grindar</u>.

<!-- ![Logiska grindar](/media/logic-gates.svg) -->

En grind är en elektronisk komponent som tar emot ett eller flera digitala signaler och skapar en ny digital signal som är beroende av de signaler som den tar emot.


## Grindar

Det finns bara ett fåtal logiska grindar, men med flera av dessa grindar kopplade på rätt sätt kan vi skapa alla möjliga logiska funktioner, och till slut, en hel dator.

Här kommer en lista på de enklaste grindarna:

> ### AND
> ![AND-grind](/media/and.svg)  
> AND-grinden tar emot två (eller fler) signaler och skapar en ny signal som endast är hög (1) om alla ingångssignaler är höga. Annars är den låg (0).
>
> Ett exempel på en AND-grind är att kärnvapenmissiler endast kan avfyras om två personer trycker på knappen samtidigt. Då är knapparna ingångssignalerna, och avfyrningsmekanismen är utgångssignalen.

> ### OR
> ![OR-grind](/media/or.svg)  
> OR-grinden tar emot två (eller fler) signaler och skapar en ny signal som är hög (1) om någon av ingångssignalerna är hög. Endast om alla ingångssignaler är låga, så är utgångssignalen låg (0).
>
> Ett exempel på en OR-grind i vardagen kan vara ett huslarm. Larmet aktiveras om någon av ytterdörrarna öppnas. Sensorerna i dörrarna är ingångssignalerna, och larmet är utgångssignalen.


> ### NOT / inverterare
> ![NOT-grind](/media/not.svg)  
> NOT-grinden tar (från skillnad till de andra grindarna) emot **exakt en** signal. Utsignalen blir hög (1) om ingångssignalen är låg (0), och låg (0) om ingångssignalen är hög (1). Baserat på detta är det också lämpligt att kalla NOT-grinden för en inverterare, eftersom den <u>inverterar</u> signalen.
>
> Ett exempel då NOT-grinden är användbar är om man har en sensor som är hög när den är mörk, och låg när den är ljus. Om man vill tända belysningen när det är mörkt, kan man invertera signalen från sensorn med en NOT-grind.


> ### XOR
> ![XOR-grind](/media/xor.svg)  
> XOR-grinden är lite speciell. Den tar emot **exakt två signaler**, och skapar en ny signal som är hög (1) om **endast en** av ingångssignalerna är hög. Om båda ingångssignalerna är höga, eller om båda är låga, så är utgångssignalen låg (0).
>
> Ett annat sätt att beskriva XOR-grinden är att den är hög (1) om ingångssignalerna är olika, och låg (0) om de är lika.
>
> När skulle man vilja använda en XOR-grind? Ett väldigt enkelt exempel kan vara om man vill ha strömbrytare för en lampa i trappan, både uppe och nere. När någon trycker på en av brytarna, kommer lampan att tändas, oavsätt om den redan är tänd eller släckt.


## Grindnät / kopplingschema

När man ska förklara hur grindarna i ett system ska kopplas ihop, är det väldigt bra med <u>grindnät</u>. I grindnät representeras varje typ av grind med en speciell symbol.


Låt säga att vi har två signaler $a$ och $b$, och vi vill skapa en ny signal $y$ som är hög (1) om $a$ är hög (1) och $b$ är låg (0). Då ska vi använda en AND-grind.

Vi kan representera detta med en AND-grind i ett grindnät/kopplingsschema:

![AND-grind kopplingsschema](/media/and-schematic.svg)

Grindnät ritas vanligtvis med ingångar till vänster och utgång till höger. I detta fall är $a$ och $b$ ingångar, och $y$ är utgången.

![Detaljerad AND-grind kopplingsschema](/media/and-schematic-detail.svg)

Grindnät ritas alltså med symboler för grindarna, och linjer som representerar kopplingarna mellan signaler/grindar. I detta fall är det en linje från $a$ till grinden, en linje från $b$ till grinden, och en linje från grinden till $y$.

## Sanningstabeller



## Booleska uttryck

Det kan kännas som om det är mycket att hålla reda på nu, med alla grindar och dess beteende, men en sista sak som knyter ihop allt är <u>booleska uttryck</u>. 

AND, OR och NOT-grindar har alla en plats i matematikens värld, och det är i booleska uttryck.

Istället för att använda grindnät för att beskriva hur signaler ska kopplas ihop, kan man göra det ännu mer kompakt med booleska uttryck.

För att beskriva att man ha en signal $y$ som är 1 när både $a$ och $b$ är 1, skriver man

$$
y = a \cdot b
$$
eller 
$$
y = ab
$$

Det ser ju ut som multiplikation!? Ja, sanningen är att AND-grinden _ÄR_  multiplikation. Det viktiga att komma ihåg är booleska uttryck hanterar bara binära signaler, alltså endast 0 eller 1.

Hur skrivs resten av grindarna med booleska uttryck?


## TLDR / sammanfattning

Här kommer tabell över grindarna, och dess representation som symboler och i sanningstabeller.

<table>
  <thead>
    <tr>
      <th>Grindnamn</th>
      <th>Grindnät</th>
      <th>Booleskt uttryck</th>
      <th>Sanningstabell</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>AND</td>
      <td><img src="/media/and.svg" alt="AND-grind" /></td>
      <td>$y = a \cdot b$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>b</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>0</td>
              <td>1</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>1</td>
              <td>1</td>
              <td>1</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td>OR</td>
      <td><img src="/media/or.svg" alt="OR-grind" /></td>
      <td>$y = a + b$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>b</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>0</td>
              <td>1</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>1</td>
              <td>1</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td>NOT</td>
      <td><img src="/media/not.svg" alt="NOT-grind" /></td>
      <td>$y = \overline{a}$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td>XOR</td>
      <td><img src="/media/xor.svg" alt="XOR-grind" /></td>
      <td>$y = a \oplus b$</td>
      <td>
        <table>
          <thead>
            <tr>
              <th>a</th>
              <th>b</th>
              <th>y</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>0</td>
              <td>0</td>
              <td>0</td>
            </tr>
            <tr>
              <td>0</td>
              <td>1</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>0</td>
              <td>1</td>
            </tr>
            <tr>
              <td>1</td>
              <td>1</td>
              <td>0</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>