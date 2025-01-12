# Hexadecimala talsystemet

Det <u>hexadecimala talsystemet</u> är ett talsystem med basen 16. De symboler som används är som decimalt 0-9, men utöver det tillkommer A-F där A=10, B=11, C=12, D=13, E=14 och F=15.

|   Decimalt   | Hexadecimalt |
| :----------: | :----------: |
| $0   _ {10}$ | $ 0 _ {16} $ |
| $1   _ {10}$ | $ 1 _ {16} $ |
| $2   _ {10}$ | $ 2 _ {16} $ |
| $3   _ {10}$ | $ 3 _ {16} $ |
| $4   _ {10}$ | $ 4 _ {16} $ |
| $5   _ {10}$ | $ 5 _ {16} $ |
| $6   _ {10}$ | $ 6 _ {16} $ |
| $7   _ {10}$ | $ 7 _ {16} $ |
| $8   _ {10}$ | $ 8 _ {16} $ |
| $9   _ {10}$ | $ 9 _ {16} $ |
| $10  _ {10}$ | $ A _ {16} $ |
| $11  _ {10}$ | $ B _ {16} $ |
| $12  _ {10}$ | $ C _ {16} $ |
| $13  _ {10}$ | $ D _ {16} $ |
| $14  _ {10}$ | $ E _ {16} $ |
| $15  _ {10}$ | $ F _ {16} $ |

_(Notationen för hexadecimalt är en nedsänkt "16")_

## Från hexadecimalt till decimalt

Tidigare har vi lärt oss hur vi ska översätta tal från det decimala talsystemet till det binära.

Samma metod kan vi nu applicera på det hexadecimala talsystemet, med skillnaden att positionernas värde inte fördubblas varje steg till vänster, utan multipliceras med 16. 

Position 0, längst till höger (eller närmast kommatecknet) har värdet $16^0=1$, position 1 har värdet $16^1=16$, position 2 har värdet $16^2=256$, osv.

<img src="/media/hex-ex1.svg" style="height: 7em;"></img>


```admonish example title="Några exempel: hexadecimalt till decimalt"

$$ 26 _ {16} = ( 2\cdot16 + 6\cdot1 ) _ {10} = (32+6) _ {10} = 38 _ {10} $$

$$ 100 _ {16} = ( 1\cdot16^2 + 0\cdot16 + 0\cdot1 ) _ {10} = (256+0) _ {10} = 256 _ {10} $$


$$ 150 _ {16} = ( 1\cdot16^2 + 5\cdot16 + 0\cdot1 ) _ {10} = (256+80) _ {10} = 336 _ {10} $$
```


Nu när vi känner oss bekväma med basen 16 ska vi också jobba lite med de "nya" symbolerna. Alla beräkningar sker likadant som hittills.


```admonish example title="Exempel med bokstäver: hexadecimalt till decimalt"


$$ {1F} _ {16} = 1\cdot16 + 15\cdot1 = 31 _ {10} $$

<img src="/media/hex-ex2.svg" style="height: 10em;"></img>

<br>
$$ {2A} _ {16} = 2\cdot16 + 10\cdot1 = 42 _ {10} $$

<img src="/media/hex-ex3.svg" style="height: 10em;"></img>
```

## Från decimalt till hexadecimalt
För att översätta från hexadecimalt till decimalt använder vi <b>nästan</b> samma metod som i det binära talsystemet.

<ol>

<li>

Avgör vilket det högsta värdet på positionerna är som inte överstiger det decimala värdet. 

</li>

<li>

Här dyker skillnaden upp mellan binärt och andra talsystem: i det binära talsystemet finns bara 0 och 1. Alltså, om det finns något på en positon som inte är 0 så är det garanterat 1. I talsystem som inte har basen 2 är det inte riktigt lika enkelt. I det hexadecimala talsystemet kan det stå en 0:a eller 1:a, men det kan också stå 5, 8, D, mm. Därför måste vi i det här steget avgöra vilken symbol som ska stå på den positionen. Med mer vardagligt språk: Hur många gånger finns positionens värde i det decimala värdet? Svaret på den frågan blir symbolen på positionen·

</li>

<li>

Nu ska ursprungstalet subtraheras med symbolen vi precis satte ut gånger positionens värde.

</li>

<li>

Gå vidare till nästa position och avgör vilken symbol som ska stå där, därefter subtrahera värdet ur resterande värdet tills färdigt. 

</li>

</ol>

```admonish example title="Exempel 1: decimalt till hexadecimalt"

Omvandla ${20} _ {10}$ till hexadecimalt.

Största värdet på positionen som inte överstiger talet: 16

Hur många gånger får 16 plats i 20? 1 gång.

$$ 20-1\cdot16=4 $$

Nästa positionsvärde: 1

Hur många gånger får 1 plats i 4? 4 gånger.

Så, 

$$20 _ {10} = 14 _ {16}$$

```

```admonish example title="Exempel 2: decimalt till hexadecimalt"


Vad är ${149} _ {10}$ i hexadecimalt?

Största värdet på positionen som inte överstiger talet: 16

Hur många gånger får 16 plats i 149? 9 gånger.

$$ 149-9\cdot16=5 $$

Nästa positionsvärde: 1

Hur många gånger får 1 plats i 5? 5 gånger.

Så,

$$149 _ {10} = 95 _ {16}$$

```
