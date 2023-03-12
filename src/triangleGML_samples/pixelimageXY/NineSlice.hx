package triangleGML_samples.pixelimageXY;

import haxe.io.Bytes;
import pixelimageXY.Pixelshape;
import pixelimageXY.Pixelimage;
import pixelimageXY.formats.Format;
import pixelimageXY.triangleGML.TriangleGML;
import pixelimageXY.algo.GeomPix;

function main(){ 
    var pixelShape = new Pixelshape( 1024*3, 768*3 );
    pixelShape.transparent = true;
    var parser = new TriangleGML( pixelShape );
    parser.addShape( backGround );
    parser.addShape( aGrid,         10,    0 );
    // addImageToParser( parser, pixelShape );
    parser.addShape( nineSlice );
    parser.addShape( nineSlice2 );
    toPNG( pixelShape, '../generatedImages/nineSlice' );
}
function getImageData( name: String ):{ nineSlice: Pixelimage, win: RectangleWindow }{
    var nineSliceTex: Pixelimage = fromPNG( name, true );
    var win = new RectangleWindow( 0, 0, nineSliceTex.width, nineSliceTex.height );
    return { nineSlice: nineSliceTex, win: win }
}
// not needed if sys as can put path in directly.
function addImageToParser( parser: TriangleGML, pixelShape: Pixelshape ){
    var imgData = getImageData( '../res/img/nineSliceButton' );
    var pixeltex: Pixelshape = ( cast imgData.nineSlice: Pixelshape );
    parser.addImage( 'nineSliceButton', pixeltex );
    // or direct
    pixelShape.imgNineSlice( imgData.nineSlice, imgData.win, 400, 400, 512, 512, 100, 100, 300, 300, 512, 512, 150, 150, 250, 250 );
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
// if image resource has been added then can use a reference instead.
// imageTexture="nineSliceButton"
var nineSlice = 
'<NineSlicePicture
    srcPicture="../res/img/nineSliceButton"
    left = "400"
    top = "400"
    initWid  = "512"
    initHi   = "512"
    initLeft = "100" 
    initTop  = "100"
    initFat  = "300"
    initTall = "300"
    newWid  = "512"
    newHi   = "512"
    newLeft = "150"
    newTop  = "150"
    newFat  = "250"
    newTall = "250">
</NineSlicePicture>';
var nineSlice2 = 
'<NineSlicePicture
    srcPicture="../res/img/nineSliceButton"
    left = "900"
    top = "900"
    initWid  = "512"
    initHi   = "512"
    initLeft = "100" 
    initTop  = "100"
    initFat  = "300"
    initTall = "300"
    newWid  = "1024"
    newHi   = "1024"
    newLeft = "200"
    newTop  = "200"
    newFat  = "600"
    newTall = "600">
</NineSlicePicture>';