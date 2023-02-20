package triangleGMLsamples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( aGrid,         10,    0 );
    parser.addShape( arcPie,        10,  500 );
    parser.addShape( arcEllipse,    10, 1000 );
    parser.addShape( aGrid2,      1210,    0 );
    parser.addShape( arcPie2,     1210,  500 );
    parser.addShape( arcEllipse2, 1210, 1000 );
    toPNG( pixelShape, 'arc.png' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';

var arcPie = 
'<ArcShape 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF0000" strokeWidth="12" 
    fill="0xFF00FF00" 
    startAngle="0" sweepAngle="240"
    arcType="pie">
</ArcShape>';

var arcEllipse =
'<ArcShape 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFF0000FF" strokeWidth="12" 
    fill="0xFFFF00EE" 
    startAngle="0" sweepAngle="240"
    arcType="ellipse">
</ArcShape>';

var arcChord =
'<ArcShape 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF7700" strokeWidth="12" 
    fill="0xFF00A6FF" 
    startAngle="0" sweepAngle="240"
    arcType="chord">
</ArcShape>';

var arcPie2 = 
'<ArcShape 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF0000" strokeWidth="12" 
    fill="0xFF00FF00" 
    startAngle="120" sweepAngle="70"
    arcType="pie">
</ArcShape>';

var arcEllipse2 =
'<ArcShape 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFF0000FF" strokeWidth="12" 
    fill="0xFFFF00EE" 
    startAngle="-43" sweepAngle="108"
    arcType="ellipse">
</ArcShape>';

var arcChord2 =
'<ArcShape 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF7700" strokeWidth="12" 
    fill="0xFF00A6FF" 
    startAngle="190" sweepAngle="90"
    arcType="chord">
</ArcShape>';



