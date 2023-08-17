.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;
.super Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;
.source "SourceFile"


# static fields
.field public static final imageContents:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x2e

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JPEGvariety"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "A node grouping all marker segments specific to the variety of stream being read/written (e.g. JFIF) - may be empty"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "markerSequence"

    aput-object v3, v2, v4

    const-string v3, "A node grouping all non-jfif marker segments"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0jfif"

    aput-object v3, v2, v4

    const-string v3, "A JFIF APP0 marker segment"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app14Adobe"

    aput-object v3, v2, v4

    const-string v3, "An Adobe APP14 marker segment"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sof"

    aput-object v3, v2, v4

    const-string v3, "A Start Of Frame marker segment"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sos"

    aput-object v3, v2, v4

    const-string v3, "A Start Of Scan marker segment"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFXX"

    aput-object v3, v2, v4

    const-string v3, "A JFIF extension marker segment"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app2ICC"

    aput-object v3, v2, v4

    const-string v3, "An ICC profile APP2 marker segment"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JFIFthumbJPEG"

    aput-object v3, v2, v4

    const-string v3, "A JFIF thumbnail in JPEG format (no JFIF segments permitted)"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JFIFthumbPalette"

    aput-object v3, v2, v4

    const-string v3, "A JFIF thumbnail as an RGB indexed image"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JFIFthumbRGB"

    aput-object v3, v2, v4

    const-string v3, "A JFIF thumbnail as an RGB image"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "componentSpec"

    aput-object v3, v2, v4

    const-string v3, "A component specification for a frame"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "scanComponentSpec"

    aput-object v3, v2, v4

    const-string v3, "A component specification for a scan"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/majorVersion"

    aput-object v3, v2, v4

    const-string v3, "The major JFIF version number"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/minorVersion"

    aput-object v3, v2, v4

    const-string v3, "The minor JFIF version number"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/resUnits"

    aput-object v3, v2, v4

    const-string v3, "The resolution units for Xdensity and Ydensity (0 = no units, just aspect ratio; 1 = dots/inch; 2 = dots/cm)"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/Xdensity"

    aput-object v3, v2, v4

    const-string v3, "The horizontal density or aspect ratio numerator"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/Ydensity"

    aput-object v3, v2, v4

    const-string v3, "The vertical density or aspect ratio denominator"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/thumbWidth"

    aput-object v3, v2, v4

    const-string v3, "The width of the thumbnail, or 0 if there isn\'t one"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFIF/thumbHeight"

    aput-object v3, v2, v4

    const-string v3, "The height of the thumbnail, or 0 if there isn\'t one"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app0JFXX/extensionCode"

    aput-object v3, v2, v4

    const-string v3, "The JFXX extension code identifying thumbnail type: (16 = JPEG, 17 = indexed, 19 = RGB"

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JFIFthumbPalette/thumbWidth"

    aput-object v3, v2, v4

    const-string v3, "The width of the thumbnail"

    aput-object v3, v2, v5

    const/16 v6, 0x15

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "JFIFthumbPalette/thumbHeight"

    aput-object v6, v2, v4

    const-string v6, "The height of the thumbnail"

    aput-object v6, v2, v5

    const/16 v7, 0x16

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "JFIFthumbRGB/thumbWidth"

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "JFIFthumbRGB/thumbHeight"

    aput-object v3, v2, v4

    aput-object v6, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app14Adobe/version"

    aput-object v3, v2, v4

    const-string v3, "The version of Adobe APP14 marker segment"

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app14Adobe/flags0"

    aput-object v3, v2, v4

    const-string v3, "The flags0 variable of an APP14 marker segment"

    aput-object v3, v2, v5

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app14Adobe/flags1"

    aput-object v3, v2, v4

    const-string v3, "The flags1 variable of an APP14 marker segment"

    aput-object v3, v2, v5

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "app14Adobe/transform"

    aput-object v3, v2, v4

    const-string v3, "The color transform applied to the image (0 = Unknown, 1 = YCbCr, 2 = YCCK)"

    aput-object v3, v2, v5

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sof/process"

    aput-object v3, v2, v4

    const-string v3, "The JPEG process (0 = Baseline sequential, 1 = Extended sequential, 2 = Progressive)"

    aput-object v3, v2, v5

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sof/samplePrecision"

    aput-object v3, v2, v4

    const-string v3, "The number of bits per sample"

    aput-object v3, v2, v5

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sof/numLines"

    aput-object v3, v2, v4

    const-string v3, "The number of lines in the image"

    aput-object v3, v2, v5

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sof/samplesPerLine"

    aput-object v3, v2, v4

    const-string v3, "The number of samples per line"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sof/numFrameComponents"

    aput-object v3, v2, v4

    const-string v3, "The number of components in the image"

    aput-object v3, v2, v5

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "componentSpec/componentId"

    aput-object v3, v2, v4

    const-string v3, "The id for this component"

    aput-object v3, v2, v5

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "componentSpec/HsamplingFactor"

    aput-object v3, v2, v4

    const-string v3, "The horizontal sampling factor for this component"

    aput-object v3, v2, v5

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "componentSpec/VsamplingFactor"

    aput-object v3, v2, v4

    const-string v3, "The vertical sampling factor for this component"

    aput-object v3, v2, v5

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "componentSpec/QtableSelector"

    aput-object v3, v2, v4

    const-string v3, "The quantization table to use for this component"

    aput-object v3, v2, v5

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sos/numScanComponents"

    aput-object v3, v2, v4

    const-string v3, "The number of components in the scan"

    aput-object v3, v2, v5

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sos/startSpectralSelection"

    aput-object v3, v2, v4

    const-string v3, "The first spectral band included in this scan"

    aput-object v3, v2, v5

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sos/endSpectralSelection"

    aput-object v3, v2, v4

    const-string v3, "The last spectral band included in this scan"

    aput-object v3, v2, v5

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sos/approxHigh"

    aput-object v3, v2, v4

    const-string v3, "The highest bit position included in this scan"

    aput-object v3, v2, v5

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sos/approxLow"

    aput-object v3, v2, v4

    const-string v3, "The lowest bit position included in this scan"

    aput-object v3, v2, v5

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "scanComponentSpec/componentSelector"

    aput-object v3, v2, v4

    const-string v3, "The id of this component"

    aput-object v3, v2, v5

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "scanComponentSpec/dcHuffTable"

    aput-object v3, v2, v4

    const-string v3, "The huffman table to use for encoding DC coefficients"

    aput-object v3, v2, v5

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "scanComponentSpec/acHuffTable"

    aput-object v2, v1, v4

    const-string v2, "The huffman table to use for encoding AC coefficients"

    aput-object v2, v1, v5

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;->imageContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length v0, v0

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;->imageContents:[[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    move v2, v1

    move v4, v2

    :goto_0
    sget-object v5, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v6, v0, v4

    aget-object v7, v5, v2

    aget-object v7, v7, v1

    aput-object v7, v6, v1

    aget-object v6, v0, v4

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput-object v5, v6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    sget-object v5, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormatResources;->imageContents:[[Ljava/lang/Object;

    array-length v6, v5

    if-ge v2, v6, :cond_1

    aget-object v6, v0, v4

    aget-object v7, v5, v2

    aget-object v7, v7, v1

    aput-object v7, v6, v1

    aget-object v6, v0, v4

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    aput-object v5, v6, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method
