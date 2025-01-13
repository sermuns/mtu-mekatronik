<script src=/two.min.js></script>

# Signaler

![atmega](/media/atmega.jpg)

Datorer består av en massa komponenter som "samarbetar" för att få allting att fungera. Kommunikationen mellan komponenterna sker genom så kallade <u>signaler</u>.

Egentligen kan en signal vara vad som helst, det viktiga är att det _betyder något_ för både den som skickar och den som tar emot signalen. Till exempel kanske du vill hjälpa din kompis att fuska på ett prov. Då kan ni komma överens om att ett knack i bordet betyder svara A, två knack betyder B, och så vidare.

Några andra signaler kan vara:
- Röksignaler
- Ljud
- Ljus
- Elektricitet

## Elektriska signaler

I detta moment kommer vi att fokusera på <u>elektriska signaler</u>, och allmänt i kursen **när jag informellt säger "signal", så menar jag "elektrisk signal".**

### Analoga eller digitala signaler?

Det finns två olika typer av signaler, **analoga** och **digitala** signaler.

#### Digital signal

I denna kurs är <u>digitala</u> signaler samma som <u>binära</u> signaler, vilket betyder att de bara kan ha en av två värden: 0 eller 1. Om man är bekväm med programmering kan man tänka sig en digital signal som en boolean.


I digitaltekniken säger man också att 0 är "låg" och 1 är "hög". Orden låg och hög kommer ifrån om den elektriska signalen har låg eller hög spänning.

> En rektangelvåg är ett exempel på en helt digital signal. Den kan bara ha två värden: 0 eller 1. När en mikrokontroller (som Arduino) skickar en signal till en LED, så skickar den en rektangelvåg, och då varierar spänningen mellan 0V och 5V.
> <div id="square-wave"></div>

#### Analog signal
Analoga signaler är <u>kontinuerliga</u>, vilket betyder att de kan ha vilket värde som helst mellan sitt minimum och maximum. 

> Ett exempel på en analog signal i naturen är solens bana på himlen. Solen följer en mjuk kurva när den går upp och ned. Skulle solens bana vara digital skulle den plötsligt teleportera upp på morgonen, och teleportera ned på kvällen.
> <div id="sine-wave"></div>

Mikrokontrollrar har ofta två typer av ingångar beroende på vilken signal som ska tas in. Den analoga ingången används när man ska kunna mäta ett helt område av värden, som till exempel en ljusmätare; det kan vara kolsvart eller jätteljust, men det kan också vara någonstans mitt emellan dessa extremer. 

Arduino representerar analoga värden med en siffra mellan 0 till 1023.


<script src=signals.js></script>