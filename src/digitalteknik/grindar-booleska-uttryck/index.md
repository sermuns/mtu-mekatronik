# Grindar / booleska uttryck

När vi ska avkoda digitala signaler, eller när vi ska skapa en digital signal som är beroende av flera andra digitala signaler, så kan vi använda oss av <u>logiska grindar</u>.

<!-- ![Logiska grindar](/media/logic-gates.svg) -->

En grind är en elektronisk komponent som tar emot ett eller flera digitala signaler och skapar en ny digital signal som är beroende av de signaler som den tar emot.


## Grindar

Det finns bara ett fåtal logiska grindar, men med flera av dessa grindar kopplade på rätt sätt kan vi skapa alla möjliga logiska funktioner, och till slut, en hel dator.

Här kommer en lista på de enklaste grindarna:

> ### AND
> ![AND-grind](/media/and.svg)  
> #### Beskrivning
> AND-grinden tar emot två (eller fler) signaler och skapar en ny signal som endast är hög (1) om alla ingångssignaler är höga. Annars är den låg (0).
> #### Exempel
> Ett exempel på en AND-grind är att kärnvapenmissiler endast kan avfyras om två personer trycker på knappen samtidigt. Då är knapparna ingångssignalerna, och avfyrningsmekanismen är utgångssignalen.

> ### OR
> ![OR-grind](/media/or.svg)  
> #### Beskrivning
> OR-grinden tar emot två (eller fler) signaler och skapar en ny signal som är hög (1) om någon av ingångssignalerna är hög. Endast om alla ingångssignaler är låga, så är utgångssignalen låg (0).
> #### Exempel
> Ett exempel på en OR-grind i vardagen kan vara ett huslarm. Larmet aktiveras om någon av ytterdörrarna öppnas. Sensorerna i dörrarna är ingångssignalerna, och larmet är utgångssignalen.


> ### NOT / inverterare
> ![NOT-grind](/media/not.svg)  
> #### Beskrivning
> NOT-grinden tar (från skillnad till de andra grindarna) emot **exakt en** signal. Utsignalen blir hög (1) om ingångssignalen är låg (0), och låg (0) om ingångssignalen är hög (1). Baserat på detta är det också lämpligt att kalla NOT-grinden för en inverterare, eftersom den <u>inverterar</u> signalen.
> #### Exempel
> Ett exempel då NOT-grinden är användbar är om man har en sensor som är hög när den är mörk, och låg när den är ljus. Om man vill tända belysningen när det är mörkt, kan man invertera signalen från sensorn med en NOT-grind.


> ### XOR
> ![XOR-grind](/media/xor.svg)  
> #### Beskrivning
> XOR-grinden är lite speciell. Den tar emot **exakt två** signaler, och skapar en ny signal som är hög (1) om **endast en** av ingångssignalerna är hög. Om båda ingångssignalerna är höga, eller om båda är låga, så är utgångssignalen låg (0).
>
> Ett annat sätt att beskriva XOR-grinden är att den är hög (1) om ingångssignalerna är olika, och låg (0) om de är lika.
> #### Exempel
> När skulle man vilja använda en XOR-grind? Ett väldigt enkelt exempel kan vara om man vill ha strömbrytare för en lampa i trappan, både uppe och nere. När någon trycker på en av brytarna, kommer lampan att tändas, oavsätt om den redan är tänd eller släckt.


## Grindnät / kopplingschema

När man ska förklara hur grindarna i ett system ska kopplas ihop, är det väldigt bra med <u>grindnät</u>. I grindnät representeras varje typ av grind med en speciell symbol.


Låt säga att vi har två insignaler $a$ och $b$, och vi vill skapa en signal $y$ bara är hög om både $a$ och $b$ är höga.

Vi kan skapa detta med en AND-grind i ett grindnät/kopplingsschema:

![AND-grind kopplingsschema](/media/and-schematic.svg)

Grindnät ritas vanligtvis med ingångar till vänster och utgång till höger. I detta fall är $a$ och $b$ ingångar, och $y$ är utgången.

![Detaljerad AND-grind kopplingsschema](/media/and-schematic-detail.svg)

Grindnät ritas alltså med symboler för grindarna, och linjer som representerar kopplingarna (sladdar) mellan signaler/grindar. I detta fall är det en linje från $a$ till grinden, en linje från $b$ till grinden, och en linje från grinden till $y$.

## Booleska uttryck

De logiska grindarna har faktiskt också en plats i matematikens värld, och det är i booleska uttryck.

Istället för att rita upp grindnät för att beskriva hur signaler ska kopplas ihop, kan man göra det ännu mer kompakt med booleska uttryck.

För att beskriva att man har en signal $y$ som är 1 när både $a$ och $b$ är 1, skriver man

$$
y = a \cdot b
$$
eller 
$$
y = ab
$$

Det ser ju ut som multiplikation!? Ja, sanningen är att AND-grinden _ÄR_  multiplikation. Det viktiga att komma ihåg är booleska uttryck hanterar bara binära signaler, alltså endast 0 eller 1.

```admonish
Testa att stoppa in 0 eller 1 för $a$ och $b$ i uttrycket ovan, vad blir svaret?
```

Hur skrivs då resten av grindarna med booleska uttryck?

**OR** skrivs med ett + (plus), till exempel $y=a+b$. Det fungerar faktiskt precis som vi tänker oss för de flesta fallen:

$$0+0=0$$
$$0+1=1$$
$$1+0=1$$

Men vad händer när både $a$ och $b$ är 1? Eftersom vi jobbar med binära signaler så kan inte $y$ bli större än 1!

$$1+1\neq2$$

utan

$$1+1=1$$

<br>

**NOT** skrivs med ett **prim**-tecken över signalen, till exempel $y=a^{\prime}$ (Det har ingenting att göra med derivata från matematik 3). Det finns bara två fall:

$$0^{\prime}=1$$
$$1^{\prime}=0$$

<br>

**XOR** skrivs med ett $\oplus$, vilket inte finns i vanlig matematik. När man räknar med XOR kan man tänka sig att man klassikt adderar de två signalerna, och sen kollar om summan blev **exakt 1**. Om det blir mer eller mindre, blir svaret 0.

Här är alla möjliga kombinationer:

$$0 \oplus 0 = 0$$
$$0 \oplus 1 = 1$$
$$1 \oplus 0 = 1$$
$$1 \oplus 1 = 0$$


```admonish warning
<center>

$a \oplus b \oplus c$ betyder ingenting!
</center>
```

### Prioriteringsregler

Som tidigare nämnt kan grindnät bestå av flera grindar som är sammankopplade.

Exempelvis $y=ab+c$, vilket ser ut såhär:

![komplicerat grindnät](/media/complex-grindnat.svg)

Som tur är fungerar de klassiska prioriteringsreglerna från matematiken: multiplikation före addition. Därför ger $y=c+ab$ samma resultat.

| Prioritet | Klassisk matematik | Boolesk matematik |
| --- | --- | --- |
| 1 | Parenteser | Parenteser |
| 2 | Potenser | NOT |
| 3 | Multiplikation / division | AND / XOR |
| 4 | Addition | OR |


```admonish tip
Det är aldrig fel att använda paranteser! Använd hellre för många om du är osäker på prioriteringsreglerna
```

Man får vara försiktig när man skapar booleska uttryck med både AND och XOR i sig eftersom uttryck som 

$$y=a \oplus b \cdot c$$

kan vara förvirrande. Man kan antingen tolka detta som 

![förvirrande1](/media/xor-and-1.svg)
_$y=(a \oplus b) \cdot c$_

eller

![förvirrande2](/media/xor-and-2.svg)
_$y=a \oplus (b \cdot c)$_



## Sanningstabeller

Ett sista sätt att representera logiken i ett system är med <u>sanningstabeller</u>. En sanningstabell visar alla kombinationer av insignaler och berättar vad utsignalen blir.

Exempelvis, här är sanningstabellen för en AND-grind, där $a$ och $b$ är insignaler, och $y$ är utsignalen:

| $a$ | $b$ | $y=ab$ |
| --- | --- | ------ |
| 0   | 0   | 0      |
| 0   | 1   | 0      |
| 1   | 0   | 0      |
| 1   | 1   | 1      |

För att skapa en sanningstabell, skriver man upp alla möjliga kombinationer av insignaler, och beräknar vad utsignalen blir för varje kombination.

<table class="centered">
  <thead>
    <th>$a$</th>
    <th>$b$</th>
    <th>$y=ab$</th>
  </thead>
  <tr>
    <td style="text-align:center;">0</td>
    <td style="text-align:center;">0</td>
    <td style="text-align:center;">0 $\cdot$ 0 = 0</td>
  </tr>
  <tr>
    <td style="text-align:center;">0</td>
    <td style="text-align:center;">1</td>
    <td style="text-align:center;">0 $\cdot$ 1 = 0</td>
  </tr>
  <tr>
    <td style="text-align:center;">1</td>
    <td style="text-align:center;">0</td>
    <td style="text-align:center;">1 $\cdot$ 0 = 0</td>
  </tr>
  <tr>
    <td style="text-align:center;">1</td>
    <td style="text-align:center;">1</td>
    <td style="text-align:center;">1 $\cdot$ 1 = 1</td>
  </tr>
</table>

```admonish
Testa att skapa sanningstabeller för OR, NOT och XOR-grindarna (kom ihåg att NOT endast tar **en** insignal). Svar finns i [sammanfattningen](#tldr--sammanfattning).
```

### Metod för att skapa sanningstabeller

1. Ta reda på hur många insignaler som finns.
1. Räkna ut antal kombinationer med dessa insignaler. Antalet kombinationer med $n$ stycken signaler blir alltid $2^n$. 
   1. För en signal ($n=1$) blir antal kombinationer $2^1=2$. För tre signaler blir antal kombinationer $2^3=2\cdot2\cdot2=8$.
1. Skapa en tabell med en kolonn för varje insignal, och en kolonn för utsignalen.

1. Börja fylla i kolonnen som tillhör insignalen längst till höger. Variera 0:or och 1:or varje ny rad.

<table>
  <thead>
    <th>$a$</th>
    <th>$b$</th>
    <th>$c$</th>
    <th>$y$</th>
  </thead>
  <tbody>
    <tr>
      <td></td>
      <td></td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>1</td>
      <td></td>
    </tr>
  </tbody>
</table>

5. Flytta ett steg till vänster och fördubbla antalet 0:or och 1:or enligt följande:

<table>
  <thead>
    <th>$a$</th>
    <th>$b$</th>
    <th>$c$</th>
    <th>$y$</th>
  </thead>
  <tbody>
    <tr>
      <td></td>
      <td>0</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>0</td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>1</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>1</td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>0</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>0</td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>1</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td>1</td>
      <td>1</td>
      <td></td>
    </tr>

  </tbody>
</table>

6. Upprepa steg 5 tills alla kolumner är fyllda.

<table>
  <thead>
    <th>$a$</th>
    <th>$b$</th>
    <th>$c$</th>
    <th>$y$</th>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td>0</td>
      <td>0</td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td>0</td>
      <td>1</td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td></td>
    </tr>
    <tr>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td></td>
    </tr>
  </tbody>
</table>

7. Beräkna utsignalen för varje rad enligt booleska uttrycket. (I exemplet har vi inte sagt vad $y$ ska vara, så vi kan inte fylla i det.)


```admonish
Skapa sanningstabellen för $y = abcd$
```


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
      <td>$y = a^{\prime}$</td>
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