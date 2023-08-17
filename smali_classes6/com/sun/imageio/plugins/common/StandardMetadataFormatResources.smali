.class public Lcom/sun/imageio/plugins/common/StandardMetadataFormatResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 12

    const/16 v0, 0x53

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Chroma"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Chroma (color) information"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorSpaceType"

    aput-object v3, v2, v4

    const-string v3, "The raw color space of the image"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NumChannels"

    aput-object v3, v2, v4

    const-string v3, "The number of channels in the raw image, including alpha"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Gamma"

    aput-object v3, v2, v4

    const-string v3, "The image gamma"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BlackIsZero"

    aput-object v3, v2, v4

    const-string v3, "True if smaller values represent darker shades"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Palette"

    aput-object v3, v2, v4

    const-string v3, "Palette-color information"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PaletteEntry"

    aput-object v3, v2, v4

    const-string v3, "A palette entry"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PaletteEntry/index"

    aput-object v3, v2, v4

    const-string v3, "The index of the palette entry"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PaletteEntry/red"

    aput-object v3, v2, v4

    const-string v3, "The red value for the palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PaletteEntry/green"

    aput-object v3, v2, v4

    const-string v3, "The green value for the palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PaletteEntry/blue"

    aput-object v3, v2, v4

    const-string v3, "The blue value for the palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PaletteEntry/alpha"

    aput-object v3, v2, v4

    const-string v3, "The alpha value for the palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BackgroundIndex"

    aput-object v3, v2, v4

    const-string v3, "A palette index to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BackgroundColor"

    aput-object v3, v2, v4

    const-string v3, "An RGB triple to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BackgroundColor/red"

    aput-object v3, v2, v4

    const-string v3, "The red background value"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BackgroundColor/green"

    aput-object v3, v2, v4

    const-string v3, "The green background value"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BackgroundColor/blue"

    aput-object v3, v2, v4

    const-string v3, "The blue background value"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Compression"

    aput-object v3, v2, v4

    const-string v3, "Compression information"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CompressionTypeName"

    aput-object v3, v2, v4

    const-string v3, "The name of the compression scheme in use"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Lossless"

    aput-object v3, v2, v4

    const-string v3, "True if the compression scheme is lossless"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BitRate"

    aput-object v3, v2, v4

    const-string v3, "The estimated bit rate of the compression scheme"

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NumProgressiveScans"

    aput-object v3, v2, v4

    const-string v3, "The number of progressive scans used in the image encoding"

    aput-object v3, v2, v5

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Data"

    aput-object v3, v2, v4

    const-string v3, "Information on the image layout"

    aput-object v3, v2, v5

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlanarConfiguration"

    aput-object v3, v2, v4

    const-string v3, "The organization of image samples in the stream"

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SampleFormat"

    aput-object v3, v2, v4

    const-string v3, "The numeric format of image samples"

    aput-object v3, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BitsPerSample"

    aput-object v3, v2, v4

    const-string v3, "The number of bits per sample"

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BitsPerSample/value"

    aput-object v3, v2, v4

    const-string v3, "A list of integers, one per channel"

    aput-object v3, v2, v5

    const/16 v6, 0x1a

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "SignificantBitsPerSample"

    aput-object v6, v2, v4

    const-string v6, "The number of significant bits per sample"

    aput-object v6, v2, v5

    const/16 v6, 0x1b

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "SignificantBitsPerSample/value"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    const/16 v6, 0x1c

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "SampleMSB"

    aput-object v6, v2, v4

    const-string v6, "The position of the most significant bit of each sample"

    aput-object v6, v2, v5

    const/16 v6, 0x1d

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "SampleMSB/value"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Dimension"

    aput-object v3, v2, v4

    const-string v3, "Dimension information"

    aput-object v3, v2, v5

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PixelAspectRatio"

    aput-object v3, v2, v4

    const-string v3, "The width of a pixel divided by its height"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageOrientation"

    aput-object v3, v2, v4

    const-string v3, "The desired orientation of the image in terms of flips and counter-clockwise rotations"

    aput-object v3, v2, v5

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "HorizontalPixelSize"

    aput-object v3, v2, v4

    const-string v3, "The width of a pixel, in millimeters, as it should be rendered on media"

    aput-object v3, v2, v5

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VerticalPixelSize"

    aput-object v3, v2, v4

    const-string v3, "The height of a pixel, in millimeters, as it should be rendered on media"

    aput-object v3, v2, v5

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "HorizontalPhysicalPixelSpacing"

    aput-object v3, v2, v4

    const-string v3, "The horizontal distance in the subject of the image, in millimeters, represented by one pixel at the center of the image"

    aput-object v3, v2, v5

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VerticalPhysicalPixelSpacing"

    aput-object v3, v2, v4

    const-string v3, "The vertical distance in the subject of the image, in millimeters, represented by one pixel at the center of the image"

    aput-object v3, v2, v5

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "HorizontalPosition"

    aput-object v3, v2, v4

    const-string v3, "The horizontal position, in millimeters, where the image should be rendered on media "

    aput-object v3, v2, v5

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VerticalPosition"

    aput-object v3, v2, v4

    const-string v3, "The vertical position, in millimeters, where the image should be rendered on media "

    aput-object v3, v2, v5

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "HorizontalPixelOffset"

    aput-object v3, v2, v4

    const-string v3, "The horizontal position, in pixels, where the image should be rendered onto a raster display"

    aput-object v3, v2, v5

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VerticalPixelOffset"

    aput-object v3, v2, v4

    const-string v3, "The vertical position, in pixels, where the image should be rendered onto a raster display"

    aput-object v3, v2, v5

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "HorizontalScreenSize"

    aput-object v3, v2, v4

    const-string v3, "The width, in pixels, of the raster display into which the image should be rendered"

    aput-object v3, v2, v5

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VerticalScreenSize"

    aput-object v3, v2, v4

    const-string v3, "The height, in pixels, of the raster display into which the image should be rendered"

    aput-object v3, v2, v5

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Document"

    aput-object v3, v2, v4

    const-string v3, "Document information"

    aput-object v3, v2, v5

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FormatVersion"

    aput-object v3, v2, v4

    const-string v3, "The version of the format used by the stream"

    aput-object v3, v2, v5

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SubimageInterpretation"

    aput-object v3, v2, v4

    const-string v3, "The interpretation of this image in relation to the other images stored in the same stream"

    aput-object v3, v2, v5

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageCreationTime"

    aput-object v3, v2, v4

    const-string v3, "The time of image creation"

    aput-object v3, v2, v5

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageCreationTime/year"

    aput-object v3, v2, v4

    const-string v3, "The full year (e.g., 1967, not 67)"

    aput-object v3, v2, v5

    const/16 v6, 0x30

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "ImageCreationTime/month"

    aput-object v6, v2, v4

    const-string v6, "The month, with January = 1"

    aput-object v6, v2, v5

    const/16 v7, 0x31

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "ImageCreationTime/day"

    aput-object v7, v2, v4

    const-string v7, "The day of the month"

    aput-object v7, v2, v5

    const/16 v8, 0x32

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "ImageCreationTime/hour"

    aput-object v8, v2, v4

    const-string v8, "The hour from 0 to 23"

    aput-object v8, v2, v5

    const/16 v9, 0x33

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "ImageCreationTime/minute"

    aput-object v9, v2, v4

    const-string v9, "The minute from 0 to 59"

    aput-object v9, v2, v5

    const/16 v10, 0x34

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "ImageCreationTime/second"

    aput-object v10, v2, v4

    const-string v10, "The second from 0 to 60 (60 = leap second)"

    aput-object v10, v2, v5

    const/16 v11, 0x35

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "ImageModificationTime"

    aput-object v11, v2, v4

    const-string v11, "The time of the last image modification"

    aput-object v11, v2, v5

    const/16 v11, 0x36

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-string v11, "ImageModificationTime/year"

    aput-object v11, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x37

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageModificationTime/month"

    aput-object v3, v2, v4

    aput-object v6, v2, v5

    const/16 v3, 0x38

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageModificationTime/day"

    aput-object v3, v2, v4

    aput-object v7, v2, v5

    const/16 v3, 0x39

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageModificationTime/hour"

    aput-object v3, v2, v4

    aput-object v8, v2, v5

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageModificationTime/minute"

    aput-object v3, v2, v4

    aput-object v9, v2, v5

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageModificationTime/second"

    aput-object v3, v2, v4

    aput-object v10, v2, v5

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Text"

    aput-object v3, v2, v4

    const-string v3, "Text information"

    aput-object v3, v2, v5

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TextEntry"

    aput-object v3, v2, v4

    const-string v3, "A text entry"

    aput-object v3, v2, v5

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TextEntry/keyword"

    aput-object v3, v2, v4

    const-string v3, "A keyword associated with the text entry"

    aput-object v3, v2, v5

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TextEntry/value"

    aput-object v3, v2, v4

    const-string v3, "the text entry"

    aput-object v3, v2, v5

    const/16 v3, 0x40

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TextEntry/language"

    aput-object v3, v2, v4

    const-string v3, "The language of the text"

    aput-object v3, v2, v5

    const/16 v3, 0x41

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TextEntry/encoding"

    aput-object v3, v2, v4

    const-string v3, "The encoding of the text"

    aput-object v3, v2, v5

    const/16 v3, 0x42

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TextEntry/compression"

    aput-object v3, v2, v4

    const-string v3, "The method used to compress the text"

    aput-object v3, v2, v5

    const/16 v3, 0x43

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Transparency"

    aput-object v3, v2, v4

    const-string v3, "Transparency information"

    aput-object v3, v2, v5

    const/16 v3, 0x44

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Alpha"

    aput-object v3, v2, v4

    const-string v3, "The type of alpha information contained in the image"

    aput-object v3, v2, v5

    const/16 v3, 0x45

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentIndex"

    aput-object v3, v2, v4

    const-string v3, "A palette index to be treated as transparent"

    aput-object v3, v2, v5

    const/16 v3, 0x46

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentColor"

    aput-object v3, v2, v4

    const-string v3, "An RGB color to be treated as transparent"

    aput-object v3, v2, v5

    const/16 v3, 0x47

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentColor/red"

    aput-object v3, v2, v4

    const-string v3, "The red channel of the transparent color"

    aput-object v3, v2, v5

    const/16 v3, 0x48

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentColor/green"

    aput-object v3, v2, v4

    const-string v3, "The green channel of the transparent color"

    aput-object v3, v2, v5

    const/16 v3, 0x49

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentColor/blue"

    aput-object v3, v2, v4

    const-string v3, "The blue channel of the transparent color"

    aput-object v3, v2, v5

    const/16 v3, 0x4a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TileTransparencies"

    aput-object v3, v2, v4

    const-string v3, "A list of completely transparent tiles"

    aput-object v3, v2, v5

    const/16 v3, 0x4b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentTile"

    aput-object v3, v2, v4

    const-string v3, "The index of a completely transparent tile"

    aput-object v3, v2, v5

    const/16 v3, 0x4c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TransparentTile/x"

    aput-object v3, v2, v4

    const-string v3, "The tile\'s X index"

    aput-object v3, v2, v5

    const/16 v6, 0x4d

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "TransparentTile/y"

    aput-object v6, v2, v4

    const-string v6, "The tile\'s Y index"

    aput-object v6, v2, v5

    const/16 v7, 0x4e

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "TileOpacities"

    aput-object v7, v2, v4

    const-string v7, "A list of completely opaque tiles"

    aput-object v7, v2, v5

    const/16 v7, 0x4f

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "OpaqueTile"

    aput-object v7, v2, v4

    const-string v7, "The index of a completely opaque tile"

    aput-object v7, v2, v5

    const/16 v7, 0x50

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "OpaqueTile/x"

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x51

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "OpaqueTile/y"

    aput-object v2, v1, v4

    aput-object v6, v1, v5

    const/16 v2, 0x52

    aput-object v1, v0, v2

    return-object v0
.end method
