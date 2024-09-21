<style>
    .more-gap li {
        margin-bottom: 5em;
    }
</style>

# Binära talsystemet

Det binära talsystemet är ett talsystem med basen 2 och symbolerna "0" och "1".
Ni kommer alltså aldrig se ett binärt tal som ser ut som följande: 500001000222210014.

Är 101 binärt?
Inte nödvändigtvis. Det kan möjligen vara binärt eftersom symbolerna i talet ingår alla i de binära symbolerna men det kan också vara i exempelvis basen 10 eller 7, eller väldigt många andra. För att vi ska veta vilken bas ett tal är skrivet i finns ett litet försänkt tal precis efter talet. I det decimala talssystemet är notationen 10, i binärt är den 2. 

så $101_2$ är alltså binärt. Vad har det för värde?

<img src="/media/binar-ex1.png" style="height: 7em;"></img>

```admonish example title="Binärt till decimalt"
Hur mycket är det binära talet $101$ värt i det decimala talsystemet?


För att räkna ut det binära talet i decimala talsystemet, läser vi från höger till vänster. Den högersta siffran är värd 1, den näst högersta är värd 2, den näst näst högersta är värd 4, och så vidare, fördubblas värdet för varje steg till vänster.

\\[101_2 = 4 + 0 + 1 = 5_{10} \\]

Så det binära talet $101$ är värt 5 i det decimala talsystemet.
```

Nu vet vi hur vi kan översätta binära tal till decimala tal. Hur kan vi göra det omvända?

1. Ha koll på vilket decimalt tal som ska översättas.
1. Hitta det största värdet en position kan ha utan att överstiga värdet av det decimala talet.
1. Ta reda på vilken symbol ska stå på den positionen (i det binära talsystemet är det antingen 0 eller 1).
1. Subtrahera värdet av positionen*symbolens värde ur ursprungstalet.
1. Gå vidare till nästa position och avgör vilken symbol som finns på den samt subtrahera ur värdet som är kvar.
1. Upprepa tills det är färdigt.

```admonish example title="Decimalt till binärt"
<ol class="more-gap">

<li>

\\(102_{10}\\)

</li>

<li>

| Position | Värde |
|----------|-------|
| $1$     | $2^0=1$   |
| $2$     | $2^1=2$   |
| $3$     | $2^2=4$   |
| $4$     | $2^3=8$   |
| $5$     | $2^4=16$  |
| $6$     | $2^5=32$  |
| $7$     | $2^6=64$  |
| $8$     | $2^7=128$ |


128>102 alltså kommer ingen 128 finnas med i det binära talet.

<img src="/media/binar-ex2-1.svg" style="height: 2em;"></img>

</li>

<li>

64 får plats i 102, så vi sätter en 1:a på den positionen.

<img src="/media/binar-ex2-2.svg" style="height: 7em;"></img>

</li>

<li>

$102-64 = 28$

</li>

<li>

Nästa position har värdet 32 vilket är för stort. 32>28.

<img src="/media/binar-ex2-3.svg" style="height: 7em;"></img>

</li>

<li>

16<28 finns bara med en gång.

<img src="/media/binar-ex2-4.svg" style="height: 7em;"></img>

</li>

<li>

28-16=12

</li>

<li>

Nästa positions värde är 8. 8<12.

<img src="/media/binar-ex2-5.svg" style="height: 7em;"></img>

</li>

<li>

12-8=4

</li>

<li>

Nästa positions värde är 4=4.

<img src="/media/binar-ex2-6.svg" style="height: 7em;"></img>

</li>

<li>

4-4=0

</li>

<li>

Resterande är noll. 

<img src="/media/binar-ex2-7.svg" style="height: 7em;"></img>

</li>

</ol>
```
