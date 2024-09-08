# Grindar

När vi ska avkoda digitala signaler, eller när vi ska skapa en digital signal som är beroende av flera andra digitala signaler, så kan vi använda oss av <u>logiska grindar</u>.

En grind är en elektronisk komponent som tar emot ett eller flera digitala signaler och skapar en ny digital signal som är beroende av de signaler som den tar emot.

Det finns bara ett fåtal logiska grindar, men med flera av dessa grindar kopplade på rätt sätt kan vi skapa alla möjliga logiska funktioner, och till slut, en hel dator.

Här kommer en lista på de enklaste grindarna:

> ### AND
> ![AND-grind](/media/and.svg)  
> #### Beskrivning
> AND-grinden tar emot två (eller fler) signaler och skapar en ny signal som endast är hög (1) om alla ingångssignaler är höga. Annars är den låg (0).
> #### Exempel
> Ett exempel på en AND-grind är att kärnvapenmissiler endast kan avfyras om två personer trycker på knappen samtidigt. Då är knapparna ingångssignalerna, och avfyrningsmekanismen är utgångssignalen.

> ### OR
> ![OR-grind](/media/or.svg)  
> #### Beskrivning
> OR-grinden tar emot två (eller fler) signaler och skapar en ny signal som är hög (1) om någon av ingångssignalerna är hög. Endast om alla ingångssignaler är låga, så är utgångssignalen låg (0).
> #### Exempel
> Ett exempel på en OR-grind i vardagen kan vara ett huslarm. Larmet aktiveras om någon av ytterdörrarna öppnas. Sensorerna i dörrarna är ingångssignalerna, och larmet är utgångssignalen.


> ### NOT / inverterare
> ![NOT-grind](/media/not.svg)  
> #### Beskrivning
> NOT-grinden tar (från skillnad till de andra grindarna) emot **exakt en** signal. Utsignalen blir hög (1) om ingångssignalen är låg (0), och låg (0) om ingångssignalen är hög (1). Baserat på detta är det också lämpligt att kalla NOT-grinden för en inverterare, eftersom den <u>inverterar</u> signalen.
> #### Exempel
> Ett exempel då NOT-grinden är användbar är om man har en sensor som är hög när den är mörk, och låg när den är ljus. Om man vill tända belysningen när det är mörkt, kan man invertera signalen från sensorn med en NOT-grind.


> ### XOR
> ![XOR-grind](/media/xor.svg)  
> #### Beskrivning
> XOR-grinden är lite speciell. Den tar emot **exakt två** signaler, och skapar en ny signal som är hög (1) om **endast en** av ingångssignalerna är hög. Om båda ingångssignalerna är höga, eller om båda är låga, så är utgångssignalen låg (0).
>
> Ett annat sätt att beskriva XOR-grinden är att den är hög (1) om ingångssignalerna är olika, och låg (0) om de är lika.
> #### Exempel
> När skulle man vilja använda en XOR-grind? Ett väldigt enkelt exempel kan vara om man vill ha strömbrytare för en lampa i trappan, både uppe och nere. När någon trycker på en av brytarna, kommer lampan att tändas, oavsätt om den redan är tänd eller släckt.


## Grindnät / kopplingschema

När man ska förklara hur grindarna i ett system ska kopplas ihop, är det väldigt bra med <u>grindnät</u>. I grindnät representeras varje typ av grind med en speciell symbol.


Låt säga att vi har två insignaler $a$ och $b$, och vi vill skapa en signal $y$ bara är hög om både $a$ och $b$ är höga.

Vi kan skapa detta med en AND-grind i ett grindnät/kopplingsschema:

![AND-grind kopplingsschema](/media/and-schematic.svg)

Grindnät ritas vanligtvis med ingångar till vänster och utgång till höger. I detta fall är $a$ och $b$ ingångar, och $y$ är utgången.

![Detaljerad AND-grind kopplingsschema](/media/and-schematic-detail.svg)

Grindnät ritas alltså med symboler för grindarna, och linjer som representerar kopplingarna (sladdar) mellan signaler/grindar. I detta fall är det en linje från $a$ till grinden, en linje från $b$ till grinden, och en linje från grinden till $y$.

## Sammansatta grindnät

Grindnät består för det mesta inte av bara **en grind** utan istället många grindar, där den ena grindens utgång kan bli nästa grinds ingång och så vidare.

Man kan göra grindnät som dessa

![xor-and](/media/xor-and-1.svg)

Eller kanske invertera utgången från en AND-grind?

![not-ring](/media/not-ring.svg)

Att invertera utgången av en grind är en så pass vanlig grej inom digitalteknik, så istället för att rita ut NOT-grinden flyttar man över dess ring till utgången på förra grinden. Såhär:

![not-ring2](/media/not-ring2.svg)