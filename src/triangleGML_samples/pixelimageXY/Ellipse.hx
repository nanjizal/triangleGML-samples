package triangleGMLsamples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( aGrid,         10,    0 );
    for( anEllipse in [ ellipseTest
                      , circleTest
                      , softEllipseTest ]){
        parser.addShape( anArrow );
    }
    toPNG( pixelShape, 'ellipse.png' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';

var ellipseTest =  
'<EllipseShape 
    top="100" 
    width="200" 
    height="50" 
    strokeColor="0xFF0000" strokeWidth="1" 
    fill="0xFF00FF00">
</EllipseShape>';
var circleTest: String = 
'<CircleShape 
    left="200" top="200" 
    diameter="300" 
    strokeColor="0xFFFF0000" strokeWidth="10" 
    fill="0xFF00FF00">
</CircleShape>';
var softEllipseTest: String = 
'<EllipseShape 
    left="500" top="500" 
    width="400" 
    height="400" 
    strokeColor="0xFFFF0000"
    softEdge="10">
</SoftEllipseShape>';