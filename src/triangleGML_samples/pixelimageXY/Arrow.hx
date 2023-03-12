package triangleGML_samples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    // TODO: change arrows to include open
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    pixelShape.simpleRect( 0, 0, pixelShape.width, pixelShape.height, 0xFF000000 );
    var parser = new TriangleGML( pixelShape );
    // parser.addShape( aGrid,         10,    0 );
    for( anArrow in [ arrowShapeTest
                    //, arrowShapeReverseFlareTest
                    //, arrowShapeFlareTest
                    //, arrowThickGradientTest
                ]){
        parser.addShape( anArrow );
    }
    toPNG( pixelShape, '../generatedImages/arrow' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';

var arrowShapeTest: String = 
'<ArrowShape
    both="false"
    x1="500" y1="400" 
    x2="890" y2="230" 
    arrowWidth="70"
    strokeWidth="30" strokeColor="0xff0000FF">
</ArrowShape>';
var arrowShapeReverseFlareTest: String = 
'<ArrowShape
    flare="true"
    both="false"
    reverseFlare="true"
    x1="100" y1="300" 
    x2="360" y2="120" 
    arrowWidth="60"
    arrowHeight="50"
    edgeSoft="10."
    strokeWidth="5" strokeColor="0xffFF0000">
</ArrowShape>';
var arrowShapeFlareTest: String = 
'<ArrowShape
    flare="true"
    both="false"
    x1="400" y1="400" 
    x2="560" y2="720" 
    arrowWidth="60"
    arrowHeight="50"
    edgeSoft="10."
    strokeWidth="5" strokeColor="0xff00FF00">
</ArrowShape>';
var arrowThickGradientTest: String = 
'<ArrowThickGradient
    flare="true"
    reverseFlare="true"
    both="true"
    x1="300" y1="300" 
    x2="560" y2="120" 
    arrowWidth="60"
    arrowHeight="50"
    strokeWidth="5" strokeTopColor="0xFF9000FF" strokeBottomColor="0xffffa200">
</ArrowThickGradient>';