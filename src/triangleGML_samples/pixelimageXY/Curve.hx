package triangleGMLsamples.pixelimageXY;

import pixelimageXY.Pixelshape;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( aGrid,         10,    0 );
    parser.addShape( cubicCurveTest );
    toPNG( pixelShape, 'curve.png' );
}

var aGrid = 
'<LineGridShape
    left = "100"  top = "100"
    width = "2048" height = "1536"
    delta = "100" deltaH = "100"
    strokeColor="0xfF003300" strokeWidth="3">
</LineGridShape>';

var cubicCurveTest = 
                    '<CubicCurveShape 
                        x1="100" y1="200" 
                        x2="100" y2="100" 
                        x3="250" y3="100" 
                        x4="250" y4="200"
                        strokeColor="0xFFFF0000" strokeWidth="10" 
                        fill="0xFF00FF00">
                    </CubicCurveShape>';