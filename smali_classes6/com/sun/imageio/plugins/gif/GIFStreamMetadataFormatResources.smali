.class public Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormatResources;
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
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Version"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "The file version, either 87a or 89a"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LogicalScreenDescriptor"

    aput-object v3, v2, v4

    const-string v3, "The logical screen descriptor, except for the global color table"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GlobalColorTable"

    aput-object v3, v2, v4

    const-string v3, "The global color table"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry"

    aput-object v3, v2, v4

    const-string v3, "A global color table entry"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Version/value"

    aput-object v3, v2, v4

    const-string v3, "The version string"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LogicalScreenDescriptor/logicalScreenWidth"

    aput-object v3, v2, v4

    const-string v3, "The width in pixels of the whole picture"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LogicalScreenDescriptor/logicalScreenHeight"

    aput-object v3, v2, v4

    const-string v3, "The height in pixels of the whole picture"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LogicalScreenDescriptor/colorResolution"

    aput-object v3, v2, v4

    const-string v3, "The number of bits of color resolution, beteen 1 and 8"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LogicalScreenDescriptor/pixelAspectRatio"

    aput-object v3, v2, v4

    const-string v3, "If 0, indicates square pixels, else W/H = (value + 15)/64"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GlobalColorTable/sizeOfGlobalColorTable"

    aput-object v3, v2, v4

    const-string v3, "The number of entries in the global color table"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GlobalColorTable/backgroundColorIndex"

    aput-object v3, v2, v4

    const-string v3, "The index of the color table entry to be used as a background"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GlobalColorTable/sortFlag"

    aput-object v3, v2, v4

    const-string v3, "True if the global color table is sorted by frequency"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/index"

    aput-object v3, v2, v4

    const-string v3, "The index of the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/red"

    aput-object v3, v2, v4

    const-string v3, "The red value for the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/green"

    aput-object v3, v2, v4

    const-string v3, "The green value for the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ColorTableEntry/blue"

    aput-object v2, v1, v4

    const-string v2, "The blue value for the color table entry"

    aput-object v2, v1, v5

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method
