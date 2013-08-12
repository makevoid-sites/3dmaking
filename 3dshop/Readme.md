# 3DShop

If you have a 3D Printing service/shop, this may be the tool you want.

It lets your clients upload their STL files, it generates the GCode and let them see how much they are going to spend and if the GCode is safe to print (has been sliced correctly).

>  you can input your Slicer program configs (layer height, etc)

### initial support

- Cura (CuraEngine)

### future suppor

- Slicer


### showterms:

some part of this project's development are been recorded using showterm

Building a small test suite (spec) to test slicer (CuraEngine) settings to get output values in the desired range: <http://showterm.io/94f036465d2e8e7a67690>

### notes:

cura settings(.h) useful slicing parameters:

    layerThickness
    initialLayerThickness
    filamentDiameter
    filamentFlow
    extrusionWidth
    insetCount
    downSkinCount
    upSkinCount
    sparseInfillLineDistance
    infillOverlap

    initialSpeedupLayers
    initialLayerSpeed
    printSpeed
    infillSpeed
    moveSpeed
