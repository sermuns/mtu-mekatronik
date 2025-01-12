# Mellan bin och hex

Tidigare i kapitlet har vi jobbat en del med omvandlingar mellan olika talsystem, specifikt mellan binärt och decimalt samt hexadecimalt och decimalt. Nu ska vi ta en närmare titt på hur omvandlingar kan ske mellan binärt och hexadecimalt.


Hexadecimala tal kan ses som binära tal skrivna väldigt kompakt. Detta innbär att i situationer där binärt används kan ofta hexadecimalt också användas. Med kompakt menas att samma information (tal) beskrivs med färre symboler. Ett binärt tal är oftast fyra gånger så långt som ett hexadecimalt tal.

Vadå *oftast*? Vi återkommer till det lite längre ner på sidan!


```admonish question title="Varför är det binära talet 4 gånger så långt som det hexadecimala talet?"
Utan att gå in allför mycket på detaljer har det att göra med basernas förhållande. Det binära talsystemet har 2 som bas medan det hexadecimala har 16=2⁴ som bas. Exponententernas förhållande är hur mycket information de innehåller 4:1 med hex:bin. För att förmedla samma mängd information behöver det binära talet fyra gånger så många symboler. På samma sätt kan vi jämföra talsystsemet med basen 4 och 2. 4=2² så talsystemet med basen fyra förmedlar dubbelt så mycket information som det binära med samma längd tal. Därför blir det binära talet dubbelt så långt som samma tal i basen 4.
```

## Hur sker omvandlingen? 


Som en följd av basernas förhållande är det väldigt smidigt att översätta tal mellan dessa talsystem. Ett binärt tal kan delas in i symboler om fyra (börja från höger/kommatecknet) där varje sån indelning blir en enda hexadecimal symbol. På så sätt kan omvandlingen göras i mindre skala än om allt skulle räknas om till det decimala talsystemet och sedan vidare till nästa talsystem. För att gå från hexadecimalt till decimalt görs samma sak, fast baklänges. Det hexadecimala talet omvandlas symbol för symbol till fyra binära symboler åt gången. 

```admonish example title="Exempel 1: binärt till hexadecimalt"
Omvandla det binära talet 1000 till hexadecimalt.

Här är indelningen i fyra symboler redan färdig så det enda vi behöver göra är att avgöra hur mycket det binära talet är värt.

$$1011 _ {2} = (8+4+2) _ {10} = 14 _ {10} = E _ {16}$$

Alltså,  
$$1000 _ {2}=E _ {16}.$$

```


```admonish example title="Exempel 2: binärt till hexadecimalt"
Omvandla det binära talet $1101 \ 0011 \ 1111 \ 0001{,}\  0101_2$ till hexadecimalt.


Indelningen sker enligt följande:
$1101&emsp;0011 &emsp;1111&emsp;0001,&emsp;0101  $  
Detta kommer bli ett hexadecimalt tal med 5 symboler: 4 framför och en efter kommatecknet. 

$$
1101_2 = (8 + 4 + 1) _ {10} = 13 _ {10} = D _ {16}
$$

$$
0011_2 =(2 + 1) _ {10} = 3 _ {10} = 3 _ {16}
$$

$$
1111_2 = (8 + 4 + 2 + 1) _ {10} = 15 _ {10} = F _ {16}
$$

$$
0001_2 = 1 _ {10} = 1 _ {16}
$$

$$
0101_2 = (4 + 1)  _ {10}= 5 _ {10} = 5 _ {16}
$$

Alltså,  
$$1101 \ 0011 \ 1111 \ 0001{,}\  0101_2 = D3F1,5 _ {16}.$$

```

```admonish example title="Exempel 3 : hexadecimalt till binärt"
Hur skrivs det hexadeciamala talet $FAB$ i det binära talsystemet?

$$
F _ {16} = 15 _ {10} = 1111 _ {2}
$$

$$
A _ {16} = 10 _ {10} = 1010 _ {2}
$$

$$
B _ {16} = 11 _ {10} = 1011 _ {2}
$$

Alltså,

$$
FAB _ {16} = 1111\ 1010\ 1011 _ {2}
$$
```

I alla exmepel ovan är det binära talet 4 gånger så långt som det hexadecimala talet. Så när är detta inte fallet? Jo, ifall den första symbolen i ett hexadecimalt tal har ett värde lägre än 8. 

```admonish title=""
$$
7 _ {16} = 7 _ {10} = 0111 _ {2} = 111 _ {2}
$$

$$
1 _ {16} = 0001 _ {2} = 1 _ {2}
$$

```

Utöver då den första symbolens värde är lägre än åtta kan längden också påverkas av den sista symbolen ifall den är höger om kommatecknet. 

```admonish title=""

$$
0.8 _ {16} = 0000.1000 = 0.1 _ {2}
$$

$$
0.2 _ {16} = 0000.0010 = 0.001 _ {2}
$$

```

Ett binärt tal behöver alltså inte ha en längd som är delbar med 4 eftersom alla nollor framför den första 1:an och, ifall talet innehåller ett kommatecken, alla nollor efter den sista 1:an kan tas bort. Tänk på när ni översätter hexadecimala tal till binära tal att inte ta bort några nollor under processen utan att göra det när ni har hela talet framför er. 

```admonish danger title="Hur ni INTE ska göra"
Översätt 53A(16) till binärt.

$$
5 _ {16} = 0101 _ {2} = 101 _ {2}
$$

$$
3 _ {16} = 0011 _ {2} = 11 _ {2}
$$

$$
A _ {16} = 1010 _ {2} = 101 _ {2}
$$ 

Härefter konstaterar ni att $
53A _ {16} = 1011\ 1101 _ {2}
$, vilket INTE stämmer.

Rätt svar är $
53A _ {16} = 0101\ 0011\ 1010 _ {2} = 101\ 0011\ 1010 _ {2}
$

```

```admonish example title="Ifall längden inte är delbar med fyra"
Översätt det binära talet $1001110,1$ till motsvarande tal i det hexadecimala talsystemet. 

Dela in i grupper om fyra. Börja alltid från kommatecknet!  
När det binära talet har en längd som inte är delbar med fyra kan man lägga till nollor i början av talet och <u>om kommatecken finns</u> i slutet av talet!

$$
1001110\,1 _ {2} = 0100\ 1110\,1000 _ {2}
$$

$$
0100 _ {2} = 4 _ {16}
$$

$$
1110 _ {2} = (8 + 4 + 2) _ {16} = E _ {16}
$$

$$
1000 _ {2} = 8 _ {16}
$$

Alltså,

$$
1001110\,1 _ {2} = 4E8 _ {16}
$$
```