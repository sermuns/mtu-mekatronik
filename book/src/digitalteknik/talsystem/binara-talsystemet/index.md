<style>

</style>

# Binära talsystemet

Det binära talsystemet är ett talsystem med basen 2 och symbolerna "0" och "1".
Ni kommer alltså aldrig se ett binärt tal som ser ut som följande: 500001000222210014.

```admonish question title="Är talet 101 binärt?"


Inte nödvändigtvis. Det skulle kunna vara binärt eftersom det endast består av 0/1. Det kan också vara i exempelvis basen 10 eller 7, eller väldigt många andra. 
```

För att tydlig visa vilken bas vi vill att talet ska tolkas i ska man sätta ett litet försänkt tal precis efter talet. I det decimala talssystemet är notationen 10, i binärt är den 2. 

$101_2$ är alltså binärt, men hur mycket är det värt i det decimala talsystemet?

## Från binärt till decimalt

För att översätta binära tal till det decimala talsystemet måste vi först avgöra vilket värde de olika positionerna har. Positionen precis till vänster om kommatecknet (ifall inget kommatecken finns så positionen längst till höger) är värd 1, ett steg till vänster har värdet 2, nästa har värdet 4 och så vidare. Varje steg till vänster innebär alltså en fördubbling av positionens värde (i det binära talsystemet - bas 2). Det decimala talet beräknas som summan av termer, där varje term är symbolen på en viss position gånger positionens värde. 

```admonish example title="Binärt till decimalt"
Hur mycket är det binära talet $101$ värt i det decimala talsystemet?

<img src="/media/binar-ex1.svg" style="height: 7em; border: 1px solid var(--fg); padding: 1em;"></img>

$$
\begin{aligned}
101_2 &= 1\cdot2^2 + 0\cdot2^1 + 1\cdot2^0 \\\\
&= 4 + 1 \\\\
&= 5
\end{aligned}
$$

Så det binära talet $101$ är värt 5 i det decimala talsystemet.
```

Nu vet vi hur vi kan översätta binära tal till decimala tal. Hur gör man det omvända?

## Från decimalt till binärt


1. Hitta det största värdet en position kan ha utan att överstiga värdet av det decimala talet.
1. Ta reda på vilken symbol ska stå på den positionen (i det binära talsystemet är det antingen 0 eller 1).
1. Subtrahera värdet av positionen multiplicerat med symbolens värde från det decimala talet.
1. Gå vidare till nästa position och avgör vilken symbol som finns på den samt subtrahera ur värdet som är kvar.
1. Upprepa tills det är färdigt.

Kolla på exemplet nedan för att se hur det går till.

```admonish example title="Decimalt till binärt"
<ol class="more-gap">


Hur översätter man $101 _ {10}$ till binärt?

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

64 får plats i 102, så vi sätter en 1:a på den positionen. 64≤102.

Vi sätter en 1:a på den positionen, och subtraherar 64 från 102.

<img src="/media/binar-ex2-2.svg" style="height: 7em;"></img>

</li>

<li>

$102-64 = 28$

</li>

<li>

Nästa position har värdet 32 vilket är för stort. 32>28.

Vi sätter en 0:a på den positionen.

<img src="/media/binar-ex2-3.svg" style="height: 7em;"></img>

</li>

<li>

16≤28.

16 får plats i 28. Vi sätter en 1:a på den positionen och subtraherar 16 från 28.

<img src="/media/binar-ex2-4.svg" style="height: 7em;"></img>

</li>

<li>

28-16=12

</li>

<li>

Nästa positions värde är 8. 

8≤12, så vi sätter en 1:a på den positionen, och subtraherar 8 från 12.


<img src="/media/binar-ex2-5.svg" style="height: 7em;"></img>

</li>

<li>

12-8=4

</li>

<li>

Nästa positions värde är 4. 

4≤4.

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

Så $$101 _ {10} = 1100110_2 $$
```



