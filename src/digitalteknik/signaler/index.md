<script src=/two.min.js></script>

# Signaler

**FRÅGA:** Vad är en signal?

![Signal](/media/81T-loBJ40L._UF1000,1000_QL80_.jpg)

Här är några exempel på signaler:
- Röksignaler
- Elektriska signaler
- Ljudsignal
- Ljussignal

**SVAR:** Egentligen kan en signal vara vad som helst, det viktiga är att det <u>betyder något</u> för både den som skickar och den som tar emot signalen.

## Syfte med signaler

Man använder signaler för att **kommunicera** något. Det kan vara allt från att säga "Hej" till att skicka en bild på en katt.

![Katt](/media/NationalGeographic_2572187_square.avif)

När man skickar en signal är det viktigt att man kommer överens om hur man ska tolka signalen. Till exempel kanske du vill hjälpa din kompis att fuska på ett prov. Då kan ni komma överens om att ett knack i bordet betyder svara A, två knack betyder B, och så vidare. Hostningar kan ha speciella betydelser också.


## Elektriska signaler

I detta moment kommer vi att fokusera på <u>elektriska signaler</u>, och det betyder att **när jag informellt säger "signal", så pratar jag om "elektriska signal".**

### Analoga eller digitala signaler?

Det finns en skillnad mellan **analoga** och **digitala** signaler. 

#### Analog
Analoga signaler är <u>kontinuerliga</u>. De kan ha vilket värde som helst mellan sitt minimum och maximum. 

> Ett exempel på en analog signal är en sinusvåg. Den kan ha vilket värde som helst mellan sitt minimum och maximum.
> Elektriciteten som kommer från vägguttaget är en sinuskurva med minsta värde -230 V och maxvärde 230V.
> <div id="sine-wave"></div>

#### Digital
Digitala signaler är <u>diskreta</u>, vilket i detta fall betyder att de bara kan ha ett begränsat antal värden, oftast två.

Om den digitala signalen bara kan ha två värden, så kallas den för <u>binär</u>. Binära signaler är de mest använda i digitalteknik, eftersom de är enkla att skapa och tolka.

> En rektangelvåg är ett exempel på en helt digital signal. Den kan bara ha två värden: 0 eller 1. När en mikrokontroller såsom Arduino skickar en signal till en LED, så skickar den en rektangelvåg, och då varierar spänningen mellan 0V och 5V.
> <div id="square-wave"></div>

<script src=signals.js></script>