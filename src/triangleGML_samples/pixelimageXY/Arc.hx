package triangleGML_samples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    pixelShape.simpleRect( 0, 0, pixelShape.width, pixelShape.height, 0xFF000000 );
    var parser = new TriangleGML( pixelShape );
    parser.addShape( aGrid, 10, 10 );
    parser.addShape( arcPie,         10,    0 );
    parser.addShape( arcEllipse,        10,  500 );
    parser.addShape( arcChord,    10, 1000 );
    parser.addShape( arcPie2,      1210,    0 );
    parser.addShape( arcEllipse2,     1210,  500 );
    parser.addShape( arcChord2, 1210, 1000 );
    toPNG( pixelShape, '../generatedImages/arc' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';

var arcPie = 
'<ArcForm 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF0000" strokeWidth="12" 
    fill="0xFF00FF00" 
    startAngle="0" sweepAngle="240"
    arcType="pie">
</ArcForm>';

var arcEllipse =
'<ArcForm 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFF0000FF" strokeWidth="12" 
    fill="0xFFFF00EE" 
    startAngle="0" sweepAngle="240"
    arcType="ellipse">
</ArcForm>';

var arcChord =
'<ArcForm 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF7700" strokeWidth="12" 
    fill="0xFF00A6FF" 
    startAngle="0" sweepAngle="240"
    arcType="chord">
</ArcForm>';

var arcPie2 = 
'<ArcForm 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF0000" strokeWidth="12" 
    fill="0xFF00FF00" 
    startAngle="120" sweepAngle="70"
    arcType="pie">
</ArcForm>';

var arcEllipse2 =
'<ArcForm 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFF0000FF" strokeWidth="12" 
    fill="0xFFFF00EE" 
    startAngle="-43" sweepAngle="108"
    arcType="ellipse">
</ArcForm>';

var arcChord2 =
'<ArcForm 
    left="100"  top="100" 
    width="500" height="480" 
    strokeColor="0xFFFF7700" strokeWidth="12" 
    fill="0xFF00A6FF" 
    startAngle="190" sweepAngle="90"
    arcType="chord">
</ArcForm>';



