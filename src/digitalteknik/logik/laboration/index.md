# Laboration

Ni räknat på [teoretiska uppgifter](../uppgifter)- ni har skapat booleska uttryck från grindnät, och omvänt. Ni har också skapat sanningstabeller från uttryck och grindnät. Nu är det dags att testa kunskaper i praktiken!

## Integrerade kretsar

I verkligheten skapas logiska grindar för det mesta med hjälp av integrerade kretsar. Dessa kretsar innehåller en eller flera logiska grindar, och kan kopplas ihop för att skapa mer komplexa kretsar.

Här är alla integrerade kretsar som ni kommer att använda:

```admonish warning title="Observera!"
I interna databladet för varje krets är de logiska grindarna skrivna med amerikanska utseenden.

| Grind | Europeisk (IEC) | Amerikansk (ANSI / IEEE) |
|-------|------------------|---------------------------|
| AND   | ![and-iec](/media/and-iec.png) | ![and-ansi](/media/and-ansi.png) |
| OR    | ![or-iec](/media/or-iec.png) | ![or-ansi](/media/or-ansi.png) |
| NOT   | ![not-iec](/media/not-iec.png) | ![not-ansi](/media/not-ansi.png) |
| XOR   | ![xor-iec](/media/xor-iec.png) | ![xor-ansi](/media/xor-ansi.png) |

```

| Namn | Grind | Intern koppling |
|------|-------|-----------------|
| 74HC32 | OR | ![intern-or](/media/74HC32.jpg) |
| 74LS08 | AND | ![intern-and](/media/74LS08.png) |
| 74AC04 | NOT | ![intern-not](/media/74AC04.png) |