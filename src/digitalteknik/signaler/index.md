<script src=/two.min.js></script>

# Signaler

Vad är en signal?

![Signal](/media/81T-loBJ40L._UF1000,1000_QL80_.jpg)

Här är några exempel på signaler:
- Röksignaler
- Elektriska signaler
- Ljudsignal
- Ljussignal

Egentligen kan en signal vara vad som helst, det viktiga är att det <u>betyder något</u> för både den som skickar och den som tar emot signalen.

## Syfte

Syftet med signaler är att **kommunicera** något. Det kan vara allt från att säga "Hej" till att skicka en bild på en katt.

![Katt](/media/NationalGeographic_2572187_square.avif)


## Elektriska signaler

I detta moment kommer vi att fokusera på <u>elektriska signaler</u>, och det betyder att **när jag informellt säger "signal", så pratar jag om "elektriska signal".**

### Analoga eller digitala signaler?

Det finns en skillnad mellan **analoga** och **digitala** signaler. 

#### Analog
Analoga signaler är <u>kontinuerliga</u>. De kan ha vilket värde som helst mellan sitt minimum och maximum. 

> Ett exempel på en analog signal är en <u>sinuskurva</u>. Den kan ha vilket värde som helst mellan sitt minimum och maximum.
> <div id="analog-signal-graph"></div>

#### Digital
Digitala signaler är <u>diskreta</u> (de kan bara vara "av" eller "på" / 0 eller 1 / låg eller hög / min eller max).


<script>

    function rotateArray(arr, n) {
        // given an array, shift the values to the right
        return arr.slice(n).concat(arr.slice(0, n));
    }

    function rotateYValues(vertices, shift) {
        // given an array of coordinates, shift the y values to the right, making them associated with the next x value
        return vertices.map((vertex, index) => {
            return new Two.Vector(vertex.x, vertices[(index + shift) % vertices.length].y);
        });
        
    }

    const DIV_ID = '#analog-signal-graph';
    const analogSignalGraph = new Two({
      autostart: true
    })
    .appendTo(document.querySelector(DIV_ID));
    // get width of div
    const boundingBox = document.querySelector(DIV_ID).getBoundingClientRect();
    const boxWidth = boundingBox.width;
    const boxHeight = boundingBox.height;
    console.log(boxWidth, boxHeight);
    const amplitude = boxHeight / 2.1;
    var path = analogSignalGraph.makePath().noFill();

    path.linewidth = 4;
    path.stroke = 'red';
    path.closed = false;
    
    // create sine wave
    for (let i = 0; i < boxWidth; i+=1) {
        x = i;
        y = amplitude * Math.sin(i * 2 * Math.PI / boxWidth)+ boxHeight / 2;
        path.vertices.push(new Two.Vector(x, y));
    }

    analogSignalGraph.bind('update', function(frameCount) {
        path.vertices = rotateYValues(path.vertices, 1); 
    });
    
</script>