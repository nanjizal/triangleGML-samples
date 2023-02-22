# triangleGML-samples
A samples folder shows XML shapes rendered as pixels in CPU software coded with **Haxe language**.
<sub><sub>
Currently the examples are setup for the haxe c++ target to create png's.  
  
Initially **pixelImageXY** was developed in Haxe Javascript target, rendered on a Canvas.  
  
In theory pixelimageXY can be used on any Haxe target/toolkit although transfer of pixels may need implementing in some cases.  
  
**triangleGML** is just a generic abstract class shell. The generics **DRAWTOOL** and **IMAGETOOL** can be implemented by extending the abstact classes with underscore ending names. The **TriangleXML_** class needs extending with a get **getTriangleGML** implementation using a switch statement that returning a shape class from an XML node name. So for instance you can use TriangleGML as a starting point for Canvas implementation.
</sub></sub>  
## Dependancies
- https://github.com/nanjizal/triangleGML abstract xml shape parser
- https://github.com/nanjizal/justPath SVG pathData string parser and basic abstract draw API 
- https://github.com/haxeFoundation/format provides PNG saving
- https://github.com/nanjizal/pixelImageXY pixel drawing implementation
  
## Generated images
Samples that currently work [&check;] and samples that need debugging [&cross;], or are not wired up [ ].
- [&cross;] [Arrow](generatedImages/arc.png)
- [&check;] [Arc](generatedImages/arc.png)  
    <img src="generatedImages/arc.png" width="250"/>
- [_] [curve](generatedImages/curve.png)  
- [&check;] [Ellipse](generatedImages/ellipse.png)  
    <img src="generatedImages/ellipse.png" width="250"/>
- [&check;] [Quad](generatedImages/quad.png)  
    <img src="generatedImages/quad.png" width="250"/>
- more to add...

## **CURRENTLY The relevant dev folders for pixelimageXY and triangleGML have not been commited on github, but need to test render of readme.**