package triangleGML_samples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( backGround ); // investigate why need to oversize.
    parser.addShape( aGrid,         10,    0 );
    parser.addShape( quadShape );
    parser.addShape( quadShapeSoft, 340, 5 );
    parser.addShape( quadShapeLuxury, 340, 500 ); 
    toPNG( pixelShape, '../generatedImages/quad' );
}
var backGround = 
'<RectangleForm
    left = "-1"
    top = "-1"
    width = "3073"
    height = "2305"
    fill = "0xFF000203">
</RectangleForm>';
var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xff003300" strokeWidth="3">
</LineGridShape>';
var quadShapeSoft = 
'<QuadShape 
aX="500" aY="300" 
bX="530" bY="220"
cX="700" cY="120"
dX="900" dY="500" 
edgeSoft="90"
strokeColor="0xFFFF0000" strokeWidth="1"> 
</QuadShape>';
var quadShape = '<QuadShape 
aX="500" aY="300" 
bX="530" bY="220"
cX="700" cY="120"
dX="900" dY="500" 
strokeColor="0xFFFF0000" strokeWidth="1">
</QuadShape>';
var quadShapeLuxury = 
'<QuadShape 
aX="500" aY="300" 
bX="530" bY="220"
cX="700" cY="120"
dX="900" dY="500" 
edgeSoft="90"
luxury="true"
strokeColor="0xFFFF0000" strokeWidth="1"> 
</QuadShape>';