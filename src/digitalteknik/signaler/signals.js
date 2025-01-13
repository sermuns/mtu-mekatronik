
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

function drawSineWave(containerId) {

    const container = document.getElementById(containerId);

    const analogSignalGraph = new Two({
        height: 200,
        autostart: true
    }).appendTo(container);
    // get width of div
    const boxWidth = container.offsetWidth;
    const boxHeight = container.offsetHeight;
    console.log(boxWidth, boxHeight);
    const amplitude = boxHeight / 2.1;
    var path = analogSignalGraph.makePath().noFill();

    path.linewidth = 4;
    path.stroke = 'red';
    path.closed = false;

    // create sine wave
    for (let i = 0; i < boxWidth; i += 1) {
        x = i;
        y = amplitude * Math.sin(i * 2 * Math.PI / boxWidth) + boxHeight / 2;
        path.vertices.push(new Two.Vector(x, y));
    }

    analogSignalGraph.bind('update', function (frameCount) {
        path.vertices = rotateYValues(path.vertices, 1);
    });
}

function drawSquareWave(containerId) {
    const container = document.getElementById(containerId);

    const digitalSignalGraph = new Two({
        height: 200,
        autostart: true
    }).appendTo(container);
    // get width of div
    const boxWidth = container.offsetWidth;
    const boxHeight = container.offsetHeight;
    const amplitude = boxHeight / 2.1;
    var path = digitalSignalGraph.makePath().noFill();

    path.linewidth = 4;
    path.stroke = 'green';
    path.closed = false;

    // create square wave
    for (let i = 0; i < boxWidth; i += 1) {
        x = i;
        y = amplitude * Math.sign(Math.sin(i * 2 * Math.PI / boxWidth)) + boxHeight / 2;
        path.vertices.push(new Two.Vector(x, y));
    }

    digitalSignalGraph.bind('update', function (frameCount) {
        path.vertices = rotateYValues(path.vertices, 1);
    });
}

drawSineWave('sine-wave');
drawSquareWave('square-wave');