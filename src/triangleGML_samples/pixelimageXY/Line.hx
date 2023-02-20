package triangleGMLsamples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( aGrid,         10,    0 );
    parser.addShape( lineGradientTest );
    parser.addShape( lineShapeTest );
    toPNG( pixelShape, 'line.png' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';

var lineGradientTest = 
'<LineGradient 
    x1="100" y1="300" 
    x2="300" y2="120" 
    strokeWidth="10" 
    colorA="0xFF0000" colorB="0xa00cc0" colorC="0x0fa00f" colorD="0x000fff">
</LineGradient>';

var lineShapeTest: String = 
'<LineShape 
    x2="400" y2="400" 
    x1="420" y1="700" 
    strokeWidth="100" strokeColor="0xffFFcc00"
    soft="90"
    luxury="true">
</LineShape>';