<style>
table{
    td{
        padding: .7em;
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

För att förklara vad man vill bygga är det smidigt att rita upp kretsar i ett <u>kretsschema</u>.

<img src="kretsschema.svg"></img>
*En enkel krets med en spänningskälla och en resistor*

Ett kretsschema är en förenklad bild av en elektrisk krets där olika symboler används för att representera olika komponenter. 

## Komponenter
Först en sammanfattning, sen kommer en mer detaljerad förklaring av varje symbol nedan.

| Komponent                         | Symbol                          |
| --------------------------------- | ------------------------------- |
| [Sladd/ledare](#ledare)           | ![Sladd/ledare](sladd.svg)      |
| [Förgrening](#förgrening)         | ![Förgrening](fork.svg)         |
| [Spänningskälla](#spänningskälla) | ![Spänningskälla](skall.svg)    |
| [Resistor](#resistor)             | ![Resistor](resistor.svg)       |
| [Brytare](#brytare)               | ![Brytare](brytare.svg)         |
| [Lampa](#lampa)                   | ![Lampa](lampa.svg)             |
| [Voltmeter](#voltmeter)           | ![Voltmeter](voltmeter.svg)     |
| [Amperemeter](#amperemeter)       | ![Amperemeter](amperemeter.svg) |
| [Strömriktning](#strömriktning)   | ![Strömriktning](stromriktning.svg) |

### Ledare
En koppling mellan två noder ritas med en enkel linje.

![Sladd/ledare](sladd.svg)

### Förgrening
En förgrening är en plats där strömmen delar sig. Man markerar detta med en punkt.

![Förgrening](fork.svg)


### Spänningskälla
Det långa strecket är **plus**-polen (+), och det korta strecket är **minus**-polen (-).

![Spänningskälla](skall.svg)

```admonish warning title="Likspänning"
Symbolen ovan betyder **likspänningskälla**. Det finns andra beteckningar för växelspänning.
```

### Resistor
En resistor är en komponent som begränsar strömmen i kretsen. Det finns ingen skillnad på resistorns "ben", man kan koppla in den hur som helst.

![Resistor](resistor.svg)

### Brytare
En brytare är en komponent som kan bryta strömmen i kretsen. När brytaren är stängd (som på bilden) går ström genom den, när den är öppen går ingen ström.

Knappar, spakar är brytare.

![Brytare](brytare.svg)


### Lampa
En lampa är en komponent som lyser när ström går genom den. Ofta måste de kopplas på rätt sätt i verkligheten, men det är inget man bryr sig om i kretsschemat.

![Lampa](lampa.svg)

### Voltmeter
Instrument som mäter spänning. Den ska kopplas **parallellt** mellan de två noder man vill mäta spänningen mellan.

![Voltmeter](voltmeter.svg)


### Amperemeter
Instrument som mäter ström. Den ska kopplas **i serie**, alltså om man vill mäta strömmen i en vill sladd, måste man temporärt klippa av sladden och koppla in amperemetern.

![Amperemeter](amperemeter.svg)

### Strömriktning

Om man vill vara övertydlig kan man rita ut hur strömmen kommer flöda. Det gör man med en pil som pekar i den riktning strömmen kommer att flyta.

![Strömriktning](stromriktning.svg)

```admonish warning title="Strömriktning"
Även om elektricitet består av negativa partiklars flöde från minus till plus, så är det allmänt känt att strömmen flyter från **plus** till **minus**. Detta är en gammal konvention som fortfarande används.
```
