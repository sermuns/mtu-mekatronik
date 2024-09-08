# Vad är digitalteknik?
> "Digitalteknik är ett område inom både elektroniken och datavetenskapen som handlar om analys och konstruktion av digitala nät." - Wikipedia

![Dator](/media/ezb_main_nocut.webp)

I förra momentet pratade vi om sensorer, aktuatorer och styrenheter. Varje komponent har en viktig roll i det mekatroniska systemet, men inget system kan fungera om inte komponenterna kommunicerar med varandra.

Som ni har lärt er, tar sensorer in information från verkligheten, och skickar vidare till styrenheten, som i sin tur styr aktuatorerna.

```mermaid
graph LR
    Sensorer --> Styrenhet
    Styrenhet --> Aktuatorer
```

I detta avsnitt tar vi en närmare titt på hur själva styrenheten fungerar, och hur _lite_ som faktiskt krävs för att skapa en beslutsfattande enhet.

