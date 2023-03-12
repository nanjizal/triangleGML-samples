package triangleGML_samples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( backGround );
    parser.addShape( aGrid );
    parser.addShape( aGrid2 );
    parser.addShape( aGrid3 );   
    parser.addShape( aGrid4 ); 
    parser.addShape( aGrid5 );    
    toPNG( pixelShape, '../generatedImages/grid' );
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
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';
var aGrid2 = 
'<LineGridShape
    left = "500"  top = "500"
    width = "1000" height = "1000"
    delta = "30" deltaH = "30"
    strokeColor="0xcce64e29" strokeWidth="2">
</LineGridShape>';
var aGrid3 = 
'<LineGridShape
    left = "300"  top = "800"
    width = "800" height = "800"
    delta = "12" deltaH = "15"
    strokeColor="0xcc296be6" strokeWidth="2">
</LineGridShape>';
var aGrid4 = 
'<LineGridShape
    left = "1200"  top = "3"
    width = "520" height = "550"
    delta = "40" deltaH = "10"
    strokeColor="0xcc9513c0" strokeWidth="8">
</LineGridShape>';
var aGrid5 = 
'<LineGridShape
    left = "200"  top = "50"
    width = "520" height = "550"
    delta = "100" deltaH = "100"
    rotation = "33"
    strokeColor="0xe4fff700" strokeWidth="2">
</LineGridShape>';