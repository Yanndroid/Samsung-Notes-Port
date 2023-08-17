.class public Lcom/sun/imageio/plugins/bmp/BMPMetadataFormatResources;
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
    .locals 8

    const/16 v0, 0x14

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BMPVersion"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "BMP version string"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Width"

    aput-object v3, v2, v4

    const-string v3, "The width of the image"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Height"

    aput-object v3, v2, v4

    const-string v3, "The height of the image"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BitsPerPixel"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PixelsPerMeter"

    aput-object v3, v2, v4

    const-string v3, "Resolution in pixels per unit distance"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "X"

    aput-object v3, v2, v4

    const-string v6, "Pixels Per Meter along X"

    aput-object v6, v2, v5

    const/4 v6, 0x5

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Y"

    aput-object v6, v2, v4

    const-string v7, "Pixels Per Meter along Y"

    aput-object v7, v2, v5

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "ColorsUsed"

    aput-object v7, v2, v4

    const-string v7, "Number of color indexes in the color table actually used"

    aput-object v7, v2, v5

    const/4 v7, 0x7

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "ColorsImportant"

    aput-object v7, v2, v4

    const-string v7, "Number of color indexes considered important for display"

    aput-object v7, v2, v5

    const/16 v7, 0x8

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Mask"

    aput-object v7, v2, v4

    const-string v7, "Color masks; present for BI_BITFIELDS compression only"

    aput-object v7, v2, v5

    const/16 v7, 0x9

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Intent"

    aput-object v7, v2, v4

    const-string v7, "Rendering intent"

    aput-object v7, v2, v5

    const/16 v7, 0xa

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Palette"

    aput-object v7, v2, v4

    const-string v7, "The color palette"

    aput-object v7, v2, v5

    const/16 v7, 0xb

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Red"

    aput-object v7, v2, v4

    const-string v7, "Red Mask/Color Palette"

    aput-object v7, v2, v5

    const/16 v7, 0xc

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Green"

    aput-object v7, v2, v4

    const-string v7, "Green Mask/Color Palette/Gamma"

    aput-object v7, v2, v5

    const/16 v7, 0xd

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Blue"

    aput-object v7, v2, v4

    const-string v7, "Blue Mask/Color Palette/Gamma"

    aput-object v7, v2, v5

    const/16 v7, 0xe

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "Alpha"

    aput-object v7, v2, v4

    const-string v7, "Alpha Mask/Color Palette/Gamma"

    aput-object v7, v2, v5

    const/16 v7, 0xf

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "ColorSpaceType"

    aput-object v7, v2, v4

    const-string v7, "Color Space Type"

    aput-object v7, v2, v5

    const/16 v7, 0x10

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v3, "The X coordinate of a point in XYZ color space"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v6, v2, v4

    const-string v3, "The Y coordinate of a point in XYZ color space"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Z"

    aput-object v2, v1, v4

    const-string v2, "The Z coordinate of a point in XYZ color space"

    aput-object v2, v1, v5

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method
