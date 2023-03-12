package triangleGML_samples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    pixelShape.simpleRect( 0, 0, pixelShape.width, pixelShape.height, 0xFF000000 );
    parser.addShape( aGrid,         10,    0 );
    //parser.addShape( lineGradientTest );
    parser.addShape( lineShapeTest );
    parser.addShape( lineShapeTest3 );
    for( i in 0...30 ){
        var x1 = Std.random( 1000 );
        var y1 = Std.random( 1000 );
        var x2 = Std.random( 1000 );
        var y2 = Std.random( 1000 );
        var color = Std.random( 0xFFFFFF ) + 0xFF000000;
        var width = Math.random()*30;
        parser.addShape( '<LineShape 
        x2="$x2" y2="$y2" 
        x1="$x1" y1="$y1" 
        strokeWidth="$width" strokeColor="$color">
    </LineShape>');
    }
    toPNG( pixelShape, '../generatedImages/line' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';
/*
var lineGradientTest = 
'<LineGradient 
    x1="100" y1="300" 
    x2="300" y2="120" 
    strokeWidth="10" 
    colorA="0xFF0000" colorB="0xa00cc0" colorC="0x0fa00f" colorD="0x000fff">
</LineGradient>';
*/
var lineShapeTest: String = 
'<LineShape 
    x2="400" y2="400" 
    x1="420" y1="700" 
    strokeWidth="3" strokeColor="0xFFFFcc00">
</LineShape>';
var lineShapeTest3: String = 
'<LineShape 
    x2="600" y2="800" 
    x1="190" y1="200" 
    strokeWidth="40" strokeColor="0xffff00e1">
</LineShape>';
var lineShapeTest2: String = 
'<LineShape 
    x2="400" y2="400" 
    x1="420" y1="700" 
    strokeWidth="100" strokeColor="0xffFFcc00"
    soft="90"
    luxury="true">
</LineShape>';