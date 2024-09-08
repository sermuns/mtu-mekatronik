# Booleska uttryck

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

**XOR** skrivs med ett $\oplus$, vilket inte finns i vanlig matematik. När man räknar med XOR kan man tänka sig att man:
1. Adderar de två signalerna
2. Utsignalen blir 1 om summan blev **lika med 1**, annars 0.

Här är alla möjliga kombinationer:

$$0 \oplus 0 = 0$$
$$0 \oplus 1 = 1$$
$$1 \oplus 0 = 1$$
$$1 \oplus 1 = 0$$

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