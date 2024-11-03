<style>
table{
    td{
        padding: 1em;
    }
    img{
        width: 20em;
    }
}

p>img{
    width: 30em;
}

</style>

# Kretsschema

För att förklara vad man vill bygga är det smidigt att rita upp kretser i ett <u>kretsschema</u>.

<img src="kretsschema.svg" style="width: 20em;"></img>
*En enkel krets med en spänningskälla och en resistor*

Ett kretsschema är en förenklad bild av en elektrisk krets där olika symboler används för att representera olika komponenter. 

## Komponenter
Först en sammanfattning, sen kommer en mer detaljerad förklaring av varje symbol nedan.

| Komponent                         | Symbol                       |
| --------------------------------- | ---------------------------- |
| [Sladd/ledare](#ledare)           | ![Sladd/ledare](sladd.svg)   |
| [Spänningskälla](#spänningskälla) | ![Spänningskälla](skall.svg) |
| [Resistor](#resistor)       | ![Resistor](resistor.svg)    |
| [Lampa](#lampa)                   | ![Lampa](lampa.svg)          |

### Ledare
En koppling mellan två noder ritas med en enkel linje.

![Sladd/ledare](sladd.svg)

### Spänningskälla
Det långa strecket är **plus**-polen (+), och det korta strecket är **minus**-polen (-).

![Spänningskälla](skall.svg)

```admonish warning title="Likspänning"
Symbolen ovan betyder **likspänningskälla**. Det finns andra beteckningar för växelspänning.
```

### Resistor
En resistor är en komponent som begränsar strömmen i kretsen. Det finns ingen skillnad på resistorns "ben", man kan koppla in den hur som helst.

![Resistor](resistor.svg)

### Lampa
En lampa är en komponent som lyser när ström går genom den. Ofta måste de kopplas på rätt sätt i verkligheten, men det är inget man bryr sig om i kretsschemat.

![Lampa](lampa.svg)