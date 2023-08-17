.class public Lcom/sun/imageio/plugins/png/PNGMetadataFormatResources;
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
    .locals 11

    const/16 v0, 0x6d

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "The IHDR chunk, containing the header"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PLTE"

    aput-object v3, v2, v4

    const-string v3, "The PLTE chunk, containing the palette"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PLTEEntry"

    aput-object v3, v2, v4

    const-string v3, "A palette entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD"

    aput-object v3, v2, v4

    const-string v3, "The bKGD chunk, containing the background color"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_RGB"

    aput-object v3, v2, v4

    const-string v3, "An RGB background color, for RGB and RGBAlpha images"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_Grayscale"

    aput-object v3, v2, v4

    const-string v3, "A grayscale background color, for Gray and GrayAlpha images"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_Palette"

    aput-object v3, v2, v4

    const-string v3, "A background palette index"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM"

    aput-object v3, v2, v4

    const-string v3, "The cHRM chunk, containing color calibration"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "gAMA"

    aput-object v3, v2, v4

    const-string v3, "The gAMA chunk, containing the image gamma"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "hIST"

    aput-object v3, v2, v4

    const-string v3, "The hIST chunk, containing histogram information "

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "hISTEntry"

    aput-object v3, v2, v4

    const-string v3, "A histogram entry"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "iCCP"

    aput-object v3, v2, v4

    const-string v3, "The iCCP chunk, containing an ICC color profile"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "iTXt"

    aput-object v3, v2, v4

    const-string v3, "The iTXt chunk, containing internationalized text"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "iTXtEntry"

    aput-object v3, v2, v4

    const-string v3, "A localized text entry"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "pHYS"

    aput-object v3, v2, v4

    const-string v3, "The pHYS chunk, containing the pixel size and aspect ratio"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sBIT"

    aput-object v3, v2, v4

    const-string v3, "The sBIT chunk, containing significant bit information"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sBIT_Grayscale"

    aput-object v3, v2, v4

    const-string v3, "Significant bit information for gray samples"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sBIT_GrayAlpha"

    aput-object v3, v2, v4

    const-string v3, "Significant bit information for gray and alpha samples"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sBIT_RGB"

    aput-object v3, v2, v4

    const-string v3, "Significant bit information for RGB samples"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sBIT_RGBAlpha"

    aput-object v3, v2, v4

    const-string v3, "Significant bit information for RGBA samples"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sBIT_Palette"

    aput-object v3, v2, v4

    const-string v3, "Significant bit information for RGB palette entries"

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sPLT"

    aput-object v3, v2, v4

    const-string v3, "The sPLT chunk, containing a suggested palette"

    aput-object v3, v2, v5

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sPLTEntry"

    aput-object v3, v2, v4

    const-string v3, "A suggested palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sRGB"

    aput-object v3, v2, v4

    const-string v3, "The sRGB chunk, containing rendering intent information"

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tEXt"

    aput-object v3, v2, v4

    const-string v3, "The tEXt chunk, containing text"

    aput-object v3, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tEXtEntry"

    aput-object v3, v2, v4

    const-string v3, "A text entry"

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tIME"

    aput-object v3, v2, v4

    const-string v3, "The tIME chunk, containing the image modification time"

    aput-object v3, v2, v5

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tRNS"

    aput-object v3, v2, v4

    const-string v3, "The tRNS chunk, containing transparency information"

    aput-object v3, v2, v5

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tRNS_Grayscale"

    aput-object v3, v2, v4

    const-string v3, "A grayscale value that should be considered transparent"

    aput-object v3, v2, v5

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tRNS_RGB"

    aput-object v3, v2, v4

    const-string v3, "An RGB value that should be considered transparent"

    aput-object v3, v2, v5

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tRNS_Palette"

    aput-object v3, v2, v4

    const-string v3, "A palette index that should be considered transparent"

    aput-object v3, v2, v5

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "zTXt"

    aput-object v3, v2, v4

    const-string v3, "The zTXt chunk, containing compressed text"

    aput-object v3, v2, v5

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "zTXtEntry"

    aput-object v3, v2, v4

    const-string v3, "A compressed text entry"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UnknownChunks"

    aput-object v3, v2, v4

    const-string v3, "A set of unknown chunks"

    aput-object v3, v2, v5

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UnknownChunk"

    aput-object v3, v2, v4

    const-string v3, "Unknown chunk data stored as a byte array"

    aput-object v3, v2, v5

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/width"

    aput-object v3, v2, v4

    const-string v3, "The width of the image in pixels"

    aput-object v3, v2, v5

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/height"

    aput-object v3, v2, v4

    const-string v3, "The height of the image in pixels"

    aput-object v3, v2, v5

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/bitDepth"

    aput-object v3, v2, v4

    const-string v3, "The bit depth of the image samples"

    aput-object v3, v2, v5

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/colorType"

    aput-object v3, v2, v4

    const-string v3, "The color type of the image"

    aput-object v3, v2, v5

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/compressionMethod"

    aput-object v3, v2, v4

    const-string v3, "The compression used for image data, always \"deflate\""

    aput-object v3, v2, v5

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/filterMethod"

    aput-object v3, v2, v4

    const-string v3, "The filtering method used for compression, always \"adaptive\""

    aput-object v3, v2, v5

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "IHDR/interlaceMethod"

    aput-object v3, v2, v4

    const-string v3, "The interlacing method, \"none\" or \"adam7\""

    aput-object v3, v2, v5

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PLTEEntry/index"

    aput-object v3, v2, v4

    const-string v3, "The index of a palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PLTEEntry/red"

    aput-object v3, v2, v4

    const-string v3, "The red value of a palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PLTEEntry/green"

    aput-object v3, v2, v4

    const-string v3, "The green value of a palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PLTEEntry/blue"

    aput-object v3, v2, v4

    const-string v3, "The blue value of a palette entry"

    aput-object v3, v2, v5

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_Grayscale/gray"

    aput-object v3, v2, v4

    const-string v3, "A gray value to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_RGB/red"

    aput-object v3, v2, v4

    const-string v3, "A red value to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_RGB/green"

    aput-object v3, v2, v4

    const-string v3, "A green value to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0x30

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_RGB/blue"

    aput-object v3, v2, v4

    const-string v3, "A blue value to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0x31

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "bKGD_Palette/index"

    aput-object v3, v2, v4

    const-string v3, "A palette index to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0x32

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/whitePointX"

    aput-object v3, v2, v4

    const-string v3, "The CIE x coordinate of the white point, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x33

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/whitePointY"

    aput-object v3, v2, v4

    const-string v3, "The CIE y coordinate of the white point, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x34

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/redX"

    aput-object v3, v2, v4

    const-string v3, "The CIE x coordinate of the red primary, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x35

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/redY"

    aput-object v3, v2, v4

    const-string v3, "The CIE y coordinate of the red primary, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x36

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/greenX"

    aput-object v3, v2, v4

    const-string v3, "The CIE x coordinate of the green primary, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x37

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/greenY"

    aput-object v3, v2, v4

    const-string v3, "The CIE y coordinate of the green primary, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x38

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/blueX"

    aput-object v3, v2, v4

    const-string v3, "The CIE x coordinate of the blue primary, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x39

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "cHRM/blueY"

    aput-object v3, v2, v4

    const-string v3, "The CIE y coordinate of the blue primary, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "gAMA/value"

    aput-object v3, v2, v4

    const-string v3, "The image gamma, multiplied by 1e5"

    aput-object v3, v2, v5

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "hISTEntry/index"

    aput-object v3, v2, v4

    const-string v3, "The palette index of this histogram entry"

    aput-object v3, v2, v5

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "hISTEntry/value"

    aput-object v3, v2, v4

    const-string v3, "The frequency of this histogram entry"

    aput-object v3, v2, v5

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "iCCP/profileName"

    aput-object v3, v2, v4

    const-string v3, "The name of this ICC profile"

    aput-object v3, v2, v5

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "iCCP/compressionMethod"

    aput-object v3, v2, v4

    const-string v3, "The compression method used to store this ICC profile"

    aput-object v3, v2, v5

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "iTXtEntry/keyword"

    aput-object v3, v2, v4

    const-string v3, "The keyword"

    aput-object v3, v2, v5

    const/16 v6, 0x40

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "iTXtEntry/compressionMethod"

    aput-object v6, v2, v4

    const-string v6, "The compression method used to store this iTXt entry"

    aput-object v6, v2, v5

    const/16 v6, 0x41

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "iTXtEntry/languageTag"

    aput-object v6, v2, v4

    const-string v6, "The ISO tag describing the language this iTXt entry"

    aput-object v6, v2, v5

    const/16 v6, 0x42

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "iTXtEntry/translatedKeyword"

    aput-object v6, v2, v4

    const-string v6, "The translated keyword for iTXt entry"

    aput-object v6, v2, v5

    const/16 v6, 0x43

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "iTXtEntry/text"

    aput-object v6, v2, v4

    const-string v6, "The localized text"

    aput-object v6, v2, v5

    const/16 v6, 0x44

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "pHYS/pixelsPerUnitXAxis"

    aput-object v6, v2, v4

    const-string v6, "The number of horizontal pixels per unit, multiplied by 1e5"

    aput-object v6, v2, v5

    const/16 v6, 0x45

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "pHYS/pixelsPerUnitYAxis"

    aput-object v6, v2, v4

    const-string v6, "The number of vertical pixels per unit, multiplied by 1e5"

    aput-object v6, v2, v5

    const/16 v6, 0x46

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "pHYS/unitSpecifier"

    aput-object v6, v2, v4

    const-string v6, "The unit specifier for this chunk (i.e., meters)"

    aput-object v6, v2, v5

    const/16 v6, 0x47

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sBIT_Grayscale/gray"

    aput-object v6, v2, v4

    const-string v6, "The number of significant bits of the gray samples"

    aput-object v6, v2, v5

    const/16 v7, 0x48

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "sBIT_GrayAlpha/gray"

    aput-object v7, v2, v4

    aput-object v6, v2, v5

    const/16 v6, 0x49

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sBIT_GrayAlpha/alpha"

    aput-object v6, v2, v4

    const-string v6, "The number of significant bits of the alpha samples"

    aput-object v6, v2, v5

    const/16 v7, 0x4a

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "sBIT_RGB/red"

    aput-object v7, v2, v4

    const-string v7, "The number of significant bits of the red samples"

    aput-object v7, v2, v5

    const/16 v8, 0x4b

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const-string v8, "sBIT_RGB/green"

    aput-object v8, v2, v4

    const-string v8, "The number of significant bits of the green samples"

    aput-object v8, v2, v5

    const/16 v9, 0x4c

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "sBIT_RGB/blue"

    aput-object v9, v2, v4

    const-string v9, "The number of significant bits of the blue samples"

    aput-object v9, v2, v5

    const/16 v10, 0x4d

    aput-object v2, v0, v10

    new-array v2, v1, [Ljava/lang/Object;

    const-string v10, "sBIT_RGBAlpha/red"

    aput-object v10, v2, v4

    aput-object v7, v2, v5

    const/16 v7, 0x4e

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "sBIT_RGBAlpha/green"

    aput-object v7, v2, v4

    aput-object v8, v2, v5

    const/16 v7, 0x4f

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "sBIT_RGBAlpha/blue"

    aput-object v7, v2, v4

    aput-object v9, v2, v5

    const/16 v7, 0x50

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "sBIT_RGBAlpha/alpha"

    aput-object v7, v2, v4

    aput-object v6, v2, v5

    const/16 v6, 0x51

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sBIT_Palette/red"

    aput-object v6, v2, v4

    const-string v6, "The number of significant bits of the red palette entries"

    aput-object v6, v2, v5

    const/16 v6, 0x52

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sBIT_Palette/green"

    aput-object v6, v2, v4

    const-string v6, "The number of significant bits of the green palette entries"

    aput-object v6, v2, v5

    const/16 v6, 0x53

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sBIT_Palette/blue"

    aput-object v6, v2, v4

    const-string v6, "The number of significant bits of the blue palette entries"

    aput-object v6, v2, v5

    const/16 v6, 0x54

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sPLTEntry/index"

    aput-object v6, v2, v4

    const-string v6, "The index of a suggested palette entry"

    aput-object v6, v2, v5

    const/16 v6, 0x55

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sPLTEntry/red"

    aput-object v6, v2, v4

    const-string v6, "The red value of a suggested palette entry"

    aput-object v6, v2, v5

    const/16 v6, 0x56

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sPLTEntry/green"

    aput-object v6, v2, v4

    const-string v6, "The green value of a suggested palette entry"

    aput-object v6, v2, v5

    const/16 v6, 0x57

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sPLTEntry/blue"

    aput-object v6, v2, v4

    const-string v6, "The blue value of a suggested palette entry"

    aput-object v6, v2, v5

    const/16 v7, 0x58

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "sPLTEntry/alpha"

    aput-object v7, v2, v4

    aput-object v6, v2, v5

    const/16 v6, 0x59

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "sRGB/renderingIntent"

    aput-object v6, v2, v4

    const-string v6, "The rendering intent"

    aput-object v6, v2, v5

    const/16 v6, 0x5a

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tEXtEntry/keyword"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    const/16 v6, 0x5b

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tEXtEntry/value"

    aput-object v6, v2, v4

    const-string v6, "The text"

    aput-object v6, v2, v5

    const/16 v6, 0x5c

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tIME/year"

    aput-object v6, v2, v4

    const-string v6, "The year when the image was last modified"

    aput-object v6, v2, v5

    const/16 v6, 0x5d

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tIME/month"

    aput-object v6, v2, v4

    const-string v6, "The month when the image was last modified, 1 = January"

    aput-object v6, v2, v5

    const/16 v6, 0x5e

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tIME/day"

    aput-object v6, v2, v4

    const-string v6, "The day of the month when the image was last modified"

    aput-object v6, v2, v5

    const/16 v6, 0x5f

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tIME/hour"

    aput-object v6, v2, v4

    const-string v6, "The hour when the image was last modified"

    aput-object v6, v2, v5

    const/16 v6, 0x60

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tIME/minute"

    aput-object v6, v2, v4

    const-string v6, "The minute when the image was last modified"

    aput-object v6, v2, v5

    const/16 v6, 0x61

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tIME/second"

    aput-object v6, v2, v4

    const-string v6, "The second when the image was last modified, 60 = leap second"

    aput-object v6, v2, v5

    const/16 v6, 0x62

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tRNS_Grayscale/gray"

    aput-object v6, v2, v4

    const-string v6, "The gray value to be considered transparent"

    aput-object v6, v2, v5

    const/16 v6, 0x63

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tRNS_RGB/red"

    aput-object v6, v2, v4

    const-string v6, "The red value to be considered transparent"

    aput-object v6, v2, v5

    const/16 v6, 0x64

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tRNS_RGB/green"

    aput-object v6, v2, v4

    const-string v6, "The green value to be considered transparent"

    aput-object v6, v2, v5

    const/16 v6, 0x65

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tRNS_RGB/blue"

    aput-object v6, v2, v4

    const-string v6, "The blure value to be considered transparent"

    aput-object v6, v2, v5

    const/16 v6, 0x66

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tRNS_Palette/index"

    aput-object v6, v2, v4

    const-string v6, "A palette index to be considered transparent"

    aput-object v6, v2, v5

    const/16 v6, 0x67

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "tRNS_Palette/alpha"

    aput-object v6, v2, v4

    const-string v6, "The transparency associated with the palette entry"

    aput-object v6, v2, v5

    const/16 v6, 0x68

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "zTXtEntry/keyword"

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x69

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "zTXtEntry/compressionMethod"

    aput-object v3, v2, v4

    const-string v3, "The compression method"

    aput-object v3, v2, v5

    const/16 v3, 0x6a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "zTXtEntry/text"

    aput-object v3, v2, v4

    const-string v3, "The compressed text"

    aput-object v3, v2, v5

    const/16 v3, 0x6b

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "UnknownChunk/type"

    aput-object v2, v1, v4

    const-string v2, "The 4-character type of the unknown chunk"

    aput-object v2, v1, v5

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    return-object v0
.end method
