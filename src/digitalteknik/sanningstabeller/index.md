# Sanningstabeller

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

```admonish question
Testa att skapa sanningstabeller för OR, NOT och XOR-grindarna (kom ihåg att NOT endast tar **en** insignal). Svar finns i [sammanfattningen](/digitalteknik/logik#tldr--sammanfattning).
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


```admonish question
Skapa sanningstabellen för $y = abcd$
```