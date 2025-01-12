# Mekanik>krafter uppgifter

<style>
img{
    height: 15em;
}
</style>


<ol>

## Ohms lag

<li>

Hur stor är **strömmen** i kretsen?

![ks1](ks1.svg)

<details>
<summary>Svar</summary>

**SVAR:** $I = 5\milli\ampere$

---


$U = 10\volt$, $R=2\kilo\ohm$.


$$ I = U/R $$
$$ I = \frac{10\volt}{2\kilo\ohm} = 5\milli\ampere $$

</details>

</li>


<li>

Hur stor resistans i kretsen?

![ks2](ks2.svg)

<details>
<summary>Svar</summary>

**SVAR:** $R = 500\ohm$

---

$U = 3.3\volt$, $I=6.6\milli\ohm$.

$$ R = U/I $$
$$ R = \frac{3.3\volt}{6.6\milli\ampere} = 500\ohm $$

</details>

</li>


<li>

Hur stor spänning behövs i kretsen?

![ks2](ks3.svg)

<details>
<summary>Svar</summary>

**SVAR:** $U = 23\volt$

---

$R = 1\kilo\ohm$, $I=23\milli\ohm$.

$$ U = R I $$
$$ U = 1\kilo\ohm \cdot 23\milli\ampere = 23\volt $$


</details>

</li>

## Seriekoppling

<li>

a) Hur stor är den **totala spänningen**?

b) Hur stor är **strömmen** i kretsen?

![](ks4.svg)

<details>
<summary>Svar</summary>

**SVAR:**

a) $U = 6\volt$

b) $I = 6\milli\ampere$


---

$U_1 = 3\volt$, $U_2 = 3\volt$, $R = 1\kilo\ohm$.

a) $U = U_1 + U_2 = 3\volt + 3\volt = 6\volt$

b) $I = \frac{U}{R} = \frac{6\volt}{1\kilo\ohm} = 6\milli\ampere$

</details>

</li>

<li>

a) Vad är ersättningsresistansen för kretsen?

b) Hur stor är **strömmen** i kretsen?

c) Hur stor är del**spänningen** över varje resistor?


![](ks5.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

a) $6 \kilo\ohm$

b) $I = 2\milli\ampere$

c) $U_1 = 4\volt$, $U_2 = 8\volt$


---

Man kan lösa detta på två sätt: antingen genom att först räkna ut totala strömmen och applicera Ohms lag, eller så kan man ta hjälp av **KVL**.

**Ohms lag:**

$U = 12\volt$, $R_1=2\kilo\ohm$, $R_2=4\kilo\ohm$.

$R _ {ers} = R_1 + R_2 = 6\kilo\ohm$

$$ I = \frac{U}{ R _ {ers} } = \frac{12\volt}{6\kilo\ohm} = 2\milli\ampere $$

$$ U_1 = I R_1 = 2\milli\ampere \cdot 2\kilo\ohm = 4\volt $$

$$ U_2 = I R_2 = 2\milli\ampere \cdot 4\kilo\ohm = 8\volt $$

**KVL:**

$R _ {tot} = R_1 + R_2 = 6\kilo\ohm$

$$ U_1 = U * \frac{R_1}{R _ {tot}} = 12\volt \cdot \frac{2\kilo\ohm}{6\kilo\ohm} = 4\volt $$

$$ U_2 = U - U_1 = 12\volt - 4\volt = 8\volt $$

</details>

</li>

<li>

Beräkna $R_2$

![](ks7.svg)

<details>
<summary>Svar</summary>

**SVAR:** $4 \ohm$

---

Ett alternativ är genom **KVL**.

$U-U_1-U_2 = 0$

$U_2 = U-U_1 = U - I R_1 = 10 \volt - 2 \volt = 8 \volt$

$U_2 = R_2 I = 8 \volt$

$R_2 = 8/I = 8/2 = 4 \ohm$

<br>

Ett annat alternativ är med ohms lag direkt!


</details>

</li>

## Parallellkoppling

<li>

Vad behöver den högra kretsen ha för **resistans** för att få samma ström som den vänstra?

![](ks6.svg)

<details>
<summary>Svar</summary>

**SVAR:** $R _ {ers} \approx 33.3\ohm$

---

Frågan är egentligen, vad är ersättningresistansen för den vänstra kretsen? Eftersom strömmen också är given skulle man kunna lösa problemet utan att beräkna ersättningsresistansen, dock. Här är två sätt att lösa det:

**Ersättningsresistans:**

$R_1=100\ohm$, $R_2=50\ohm$.

$$ R _ {ers} = \frac{1}{\frac{1}{R_1} + \frac{1}{R_2}} = \frac{1}{\frac{1}{100\ohm} + \frac{1}{50\ohm}} \approx 33.3\ohm $$

**Ohms lag:**

$U = 5\volt$, $I = 150\milli\ampere$.

$$ R _ {ers} = \frac{U}{I} = \frac{5\volt}{150\milli\ampere} \approx 33.3\ohm $$

</details>

</li>
<li>

Vad är ersättningsresistansen $R _ {ers}$ för parallellkopplingen om...

a) $R_1 = 75\ohm$, $R_2 = 100\ohm$

b) $R_1 = 100\ohm$, $R_2 = 100\ohm$

c) $R_1 = 3\ohm$, $R_2 = 5\ohm$


![](parallell.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

a) $R _ {ers} = 300/7 \ohm \approx 42.86\ohm$

b) $R _ {ers} = 50\ohm$

c) $R _ {ers} = 15/8 \ohm = 1.875 \ohm$

---

Formeln för att räkna ut ersättningsresistans är:
$$ \frac{1}{R _ {ers}} = \frac{1}{R_1} + \frac{1}{R_2} + ... $$

a) 
$$ \frac{1}{R _ {ers}} = \frac{1}{75} + \frac{1}{100} = \frac{4}{300} + \frac{3}{300} = \frac{7}{300} $$
$$ R _ {ers} = \frac{300}{7} \ohm \approx 42.86\ohm $$

b) 
$$ \frac{1}{R _ {ers}} = \frac{1}{100} + \frac{1}{100} = \frac{2}{100} = \frac{1}{50} $$
$$ R _ {ers} = 50\ohm $$

c)
$$ \frac{1}{R _ {ers}} = \frac{1}{3} + \frac{1}{5} = \frac{5}{15} + \frac{3}{15} = \frac{8}{15} $$
$$ R _ {ers} = \frac{15}{8} \ohm = 1.875 \ohm $$

</details>

</li>

<li>

Du vet att ersättningsresistansen $R _ {ers} = 50\ohm$ för de parallellkopplade resistorerna.

Vad måste $R_2$ ha för värde om $R_1 = 100\ohm$

![](r2_ers.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

$R_2 = 100\ohm$

---

Formeln för ersättningsresistans är samma som i föregående uppgift, men nu är det istället $R_2$ som är okänt.

$$\frac{1}{50} = \frac{1}{100} + \frac{1}{R_2} \iff \frac{1}{50} - \frac{1}{100} = \frac{1}{R_2}$$

$$\iff \frac{2}{100} - \frac{1}{100} = \frac{1}{R_2} \iff \frac{1}{100} = \frac{1}{R_2}$$

invertera båda sidorna:

$$R_2 = 100\ohm$$

</details>

</li>

<li>

Vad är ersättningsresistansen för kretsen?

![](ers_tre.svg)

<details>
<summary>Svar</summary>

**SVAR:**

$R _ {ers} = 60\ohm$

---

Nu är det faktiskt tre resistor i parallell med varandra, men formeln för parallellkopplade resistorer funkar oavsett hur många resistorer det är.

$$ \frac 1 {R _ {ers}} = \frac 1 {100} + \frac 1 {200} + \frac 1 {600}$$
$$ \iff \frac 1 {R _ {ers}} = \frac {6}{600} + \frac {3}{600} + \frac {1}{600}$$
$$ \iff \frac 1 {R _ {ers}} = \frac {10}{600}$$

Invertera bråket:

$$ \iff R _ {ers} = \frac {600} {10} = 60\ohm $$


</details>

</li>

## Effekt

<li>

Beräkna effekten i kretsen, testa gärna att använda olika formler!

![](000.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$529\watt$

---
**ALT 1:**

Eftersom $U$ och $R$ är givna är det passande med $P = \frac{U^2}{R}$

$P = \frac{(230 \volt)^2}{100 \ohm} = \frac{52900\volt}{100\ohm} = 529 \watt$

<br>

**ALT 1:**

Det går också bra att först räkna ut strömmen $I$ och sen beräkna effekten genom $P=UI$.

$I=\frac{U}{R} = \frac{230\volt}{100\ohm} = 2.3\ampere$

$P = UI = 230\volt \cdot 2.3\ampere = 529\watt$

</details>

</li>

<li>

Beräkna effekten i kretsen.

![](001.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$2.704 \mega\watt$

---

**ALT 1:**

$$P = I^2 R = (5.2 \ampere)^2 \cdot 100 \kilo\ohm = 2.704 \mega\watt$$

<br>

**ALT 2:**

Räkna först ut vad spänningen borde vara, sen använd $P = U I$.

$$U = R I = 100 \kilo\ohm \cdot 5.2 \ampere = 520 \kilo\volt$$

$$P = U I = 520 \kilo\volt \cdot 5.2 \ampere = 2.704 \mega\watt$$

</details>

</li>

<li>

Beräkna effekten i kretsen. Beräkna också strömmen med hjälp av effekten. 

![](002.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$P=1.44\watt$, $I=120\milli\ampere$

---

$P=\frac{U^2}{R}=\frac{(12\volt)^2}{100\ohm}=1.44\watt$

$I=\sqrt{\frac{P}{R}}=\sqrt{\frac{1.44\watt}{100\ohm}}=120\milli\ampere$


</details>

</li>
<li>

Beräkna effekten i kretsen.

![](003.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$ P \approx 352.67\watt$

---

$P = \frac{U^2}{R} = \frac{(230\volt)^2}{150\ohm} = 352.67\watt$

</details>

</li>
<li>

a) Hur stor är spänningen över varje resistor?

b) Hur stor effekt skapas i varje resistor?

c) Vad är den totala effekten i kretsen?

![](004.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$U_1 \approx 153.33 \volt$, $U_2 \approx 76.67 \volt$

$P_1 \approx 235.11 \watt$, $P_2 \approx 117.56 \watt$

$P \approx 352.67 \watt$

---

**ALT 1:**

Man kan börja med att räkna ut strömmen. $I=\frac{U}{R}$. 

$$I = \frac{230\volt}{(100 + 50)\ohm} \approx 1.53\ampere$$
 
a) 
$$U_1 = I \cdot 100\ohm \approx 153.33\volt$$

$$U_2 = I \cdot 50\ohm \approx 76.67\volt$$

b)
$$P_1 = U_1 \cdot I \approx 235.11\watt$$

$$P_2 = U_2 \cdot I \approx 117.56\watt$$

c) 

$$P = U \cdot I = 230\volt \cdot 1.53\ampere = 352.67\watt$$


<br>

**ALT 2:**

Man kan skippa att räkna ut strömmen och istället använda spänningsdelning för att lista ut spänningen över varje resistor.

$$R _ {tot} = 100\ohm + 50\ohm = 150\ohm$$

a) 
$$U_1 = U \cdot \frac{R_1}{R _ {tot}} = 230\volt \cdot \frac{100\ohm}{150\ohm} = 153.33\volt$$

$$U_2 = U \cdot \frac{R_2}{R _ {tot}} = 230\volt \cdot \frac{50\ohm}{150\ohm} = 76.67\volt$$

b) Vi räknar ut effekten direkt på varje resistor genom $P=\frac{U}{R}$
$$P_1 = \frac{U_1^2}{R_1} = \frac{(153.33\volt)^2}{100\ohm} = 235.11\watt$$

$$P_2 = \frac{U_2^2}{R_2} = \frac{(76.67\volt)^2}{50\ohm} = 117.56\watt$$

c)

$$P = U \cdot I = 230\volt \cdot 1.53\ampere = 352.67\watt$$

</details>

</li>
<li>

Beräkna strömmen och spänningen i kretsen om du vet att totala effekten $P=1\kilo\watt$.

![](006.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$U=100\volt$, $I=10\ampere$

---

Vi kan omformulera effektformeln.

$$P=\frac{U^2}{R} \iff PR = U^2 \iff \sqrt{PR} = U$$

alltså är $U = \sqrt{PR}$.

$$U = \sqrt{1\kilo\watt \cdot 10\ohm} = \sqrt{10000} = 100\volt$$

Vi kan nu räkna ut strömmen genom Ohms lag.

$$I = \frac{U}{R} = \frac{100\volt}{10\ohm} = 10\ampere$$

</details>

</li>

## Noder

<li>

Markera alla noder i kretsen. Varför är de noder?

![](unika_noder.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

![](unika_noder_svar.svg)

---

Dessa är de enda tre noderna i kretsen, eftersom det finns komponenter (spänningskällor eller resistorer) som skiljer dem åt.

</details>

</li>
<li>

Markera alla noder i kretsen. Varför är detta en kortslutning?

![](kortslut.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

![](kortslut_svar.svg)

---

Det finns bara en nod. Problemet är att noden både är kopplad med plus- och minuspol, det finns ingen komponent som stoppar upp potentialskillnaden och det kommer strömma jättemycket genom noden.

</details>

</li>

## Kombinerade kretsar

<li>

Hitta ersättningsresistansen för resistornätet.

![](ers_resistornat.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

$R _ {ers} = 70\ohm$

---

Det kanske ser komplicerat ut, men lösningen är att börja med att ersätta resistanser på den minsta nivån möjligt och sen "jobba sig uppåt".

Vi kan börja med att kombinera $R_1$ och $R_2$ till en resistans $R _ {12}$.

$$ R _ {12} = R_1 + R_2 = 25\ohm + 75\ohm = 100\ohm $$

Sen kan vi räkna ersättningsresistansen på $R _ {12}$ och $R_3$. Vi kan kalla den för $R _ {123}$.

$$ \frac{1}{R _ {123}} = \frac{1}{R _ {12}} + \frac{1}{R_3} = \frac{1}{100} + \frac{1}{100} = \frac{2}{100} $$

$$ R _ {123} = \frac{100}{2} = 50\ohm $$

Sista steget blir att kombinera $R _ {123}$ och $R_4$ till den totala ersättningsresistans $R _ {ers}$.

$$ R _ {ers} = R _ {123} + R_4 = 50\ohm + 20\ohm = 70\ohm $$

</details>

</li>

## Strömförgrening

<li>

a) Vad är delströmmarna $I_1$ och $I_2$?

b) Vad är totala strömmen $I$?

![](008.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$I_1 = 2.3\ampere$, $I_2 = 4.6\ampere$, $I = 6.9\ampere$

---

Applicera ohms lag ($I = \frac{U}{R}$) för varje gren. För den övre grenen blir strömmen $I_1$:

$$I_1 = \frac{230\volt}{100\ohm} = 2.3\ampere$$

För $I_2$:

$$I_2 = \frac{230\volt}{50\ohm} = 4.6\ampere$$

Då blir den totala strömmen $I$ summan av delströmmarna.

$$I = I_1 + I_2 = 2.3\ampere + 4.6\ampere = 6.9\ampere$$

<br>

**ALTERNATIVT SÄTT ATT HITTA $I$**:

Man kan också hitta ersättningsresistansen och sen använda ohms lag på den totala kretsen.

$$R _ {ers} = \frac{100 \cdot 50}{100 + 50} \approx 33.33\ohm$$

$$I = \frac{U}{R} \approx \frac{230\volt}{33.33\ohm} = 6.9\ampere$$

</details>

</li>

<li>

Beräkna hur stor spänningskällan $U$ borde vara, totala strömmen $I$ och delströmmen $I_2$ om du vet att $I_1=2.3\ampere$.

![](010.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$U=2300\volt$, $I=11.5\ampere$, $I_2=9.2\ampere$

---

Vi börjar att applicera ohms lag på den övre grenen. $$U = 1\kilo\ohm \cdot 2.3\ampere = 2300\volt$$

Det är samma spänning i alla grenar i en parallellkoppling, vilket betyder att denna spänning är lika med spänningskällan.

Nu kan vi lista ut delströmmen $I_2$:

$$I_2 = \frac{2300\volt}{250\ohm} = 9.2\ampere$$

Och till sist, den totala strömmen är summan av delströmmarna:

$$I = 2.3\ampere + 9.2\ampere = 11.5\ampere$$


</details>

</li>

<li>

Beräkna totala strömmen I, spänningarna U1 och U3, samt delströmmarna I1 och I2.

![](012.png)

<details>
<summary>Svar</summary>

**SVAR:** 

$I \approx 0.21 \ampere$, $U_3 \approx 210 \volt$, $U_1 \approx 21 \volt$, $I_1 = I_2 = I/2 \approx 0.10 \ampere$.

---

Det kan vara svårt att välja hur man ska börja med uppgiften. En idé är att börja med att hitta den totala strömmen $I$. Då kan det vara bra att hitta den totala ersättningsresistansen.

Vi börjar med att kombinera de två parallellkopplade resistorerna på $200\ohm$. Vi kan kalla dem för $R_1$ och $R_2$.

$$ \frac 1 R _ {12} = \frac 1 {R_1} + \frac 1 {R_2} = \frac 1 {200} + \frac 1 {200} = \frac 2 {200} $$

$$ R _ {12} = \frac {200} 2 = 100\ohm $$

Nu, den totala ersättningsresistansen $R$.

$$ R = 1000\ohm + R _ {12} = 1000\ohm + 100\ohm = 1100\ohm $$

Nu kan vi applicera ohms lag på hela kretsen för att hitta strömmen $I$:

$$I=\frac{U}{R}=\frac{230\volt}{1100\ohm} \approx 0.21\ampere$$

Eftersom grenarna i parallellkopplingen har lika stor resistans kommer strömmen dela upp sig jämnt, så $I_1 = I_2$ och $I=I_1+I_2$.

Då är $I_1$ och $I_2$:
$$I_1 = I_2 = \frac{I}{2} = \frac{0.21\ampere}{2} \approx 0.10\ampere$$

</details>

</li>



## Kirchhoffs lagar

<li>

a) Vad är delspänningen över varje resistor?  
b) Vad är batteriets spänning?

![](kirchhoff_delspann.svg)

<details>
<summary>Svar</summary>

**SVAR:** 

a) $U_1 = 6\volt$, $U_2 = 10\volt$  
b) $U = 16 \volt$

---

a) Ohms lag applicerat på varje resistor ger

$$U_1 = I \cdot R_1 = 0.2\ampere \cdot 30\ohm = 6\volt$$

$$U_2 = I \cdot R_2 = 0.2\ampere \cdot 50\ohm = 10\volt$$

b) **KVL:** Eftersom resistorerna är kopplade i serie har spänningen fördelats och summan av delspänningarna ska motsvara den totala spänningen:

$$U = U_1 + U_2 = 6\volt + 10\volt = 16\volt$$



</details>

</li>

</ol>
