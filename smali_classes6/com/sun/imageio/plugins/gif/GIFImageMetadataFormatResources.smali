.class public Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormatResources;
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

    const/16 v0, 0x24

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageDescriptor"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "The image descriptor"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalColorTable"

    aput-object v3, v2, v4

    const-string v3, "The local color table"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry"

    aput-object v3, v2, v4

    const-string v3, "A local color table entry"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GraphicControlExtension"

    aput-object v3, v2, v4

    const-string v3, "A graphic control extension"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension"

    aput-object v3, v2, v4

    const-string v3, "A plain text (text grid) extension"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationExtensions"

    aput-object v3, v2, v4

    const-string v3, "A set of application extensions"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationExtension"

    aput-object v3, v2, v4

    const-string v3, "An application extension"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CommentExtensions"

    aput-object v3, v2, v4

    const-string v3, "A set of comments"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CommentExtension"

    aput-object v3, v2, v4

    const-string v3, "A comment"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageDescriptor/imageLeftPosition"

    aput-object v3, v2, v4

    const-string v3, "The X offset of the image relative to the screen origin"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageDescriptor/imageTopPosition"

    aput-object v3, v2, v4

    const-string v3, "The Y offset of the image relative to the screen origin"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageDescriptor/imageWidth"

    aput-object v3, v2, v4

    const-string v3, "The width of the image"

    aput-object v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageDescriptor/imageHeight"

    aput-object v3, v2, v4

    const-string v3, "The height of the image"

    aput-object v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageDescriptor/interlaceFlag"

    aput-object v3, v2, v4

    const-string v3, "True if the image is stored using interlacing"

    aput-object v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalColorTable/sizeOfLocalColorTable"

    aput-object v3, v2, v4

    const-string v3, "The number of entries in the local color table"

    aput-object v3, v2, v5

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalColorTable/sortFlag"

    aput-object v3, v2, v4

    const-string v3, "True if the local color table is sorted by frequency"

    aput-object v3, v2, v5

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/index"

    aput-object v3, v2, v4

    const-string v3, "The index of the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/red"

    aput-object v3, v2, v4

    const-string v3, "The red value for the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/green"

    aput-object v3, v2, v4

    const-string v3, "The green value for the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ColorTableEntry/blue"

    aput-object v3, v2, v4

    const-string v3, "The blue value for the color table entry"

    aput-object v3, v2, v5

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GraphicControlExtension/disposalMethod"

    aput-object v3, v2, v4

    const-string v3, "The disposal method for this frame"

    aput-object v3, v2, v5

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GraphicControlExtension/userInputFlag"

    aput-object v3, v2, v4

    const-string v3, "True if the frame should be advanced based on user input"

    aput-object v3, v2, v5

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GraphicControlExtension/transparentColorFlag"

    aput-object v3, v2, v4

    const-string v3, "True if a transparent color exists"

    aput-object v3, v2, v5

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GraphicControlExtension/delayTime"

    aput-object v3, v2, v4

    const-string v3, "The time to delay between frames, in hundredths of a second"

    aput-object v3, v2, v5

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GraphicControlExtension/transparentColorIndex"

    aput-object v3, v2, v4

    const-string v3, "The transparent color, if transparentColorFlag is true"

    aput-object v3, v2, v5

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/textGridLeft"

    aput-object v3, v2, v4

    const-string v3, "The X offset of the text grid"

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/textGridTop"

    aput-object v3, v2, v4

    const-string v3, "The Y offset of the text grid"

    aput-object v3, v2, v5

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/textGridWidth"

    aput-object v3, v2, v4

    const-string v3, "The number of columns in the text grid"

    aput-object v3, v2, v5

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/textGridHeight"

    aput-object v3, v2, v4

    const-string v3, "The number of rows in the text grid"

    aput-object v3, v2, v5

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/characterCellWidth"

    aput-object v3, v2, v4

    const-string v3, "The width of a character cell"

    aput-object v3, v2, v5

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/characterCellHeight"

    aput-object v3, v2, v4

    const-string v3, "The height of a character cell"

    aput-object v3, v2, v5

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/textForegroundColor"

    aput-object v3, v2, v4

    const-string v3, "The text foreground color index"

    aput-object v3, v2, v5

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlainTextExtension/textBackgroundColor"

    aput-object v3, v2, v4

    const-string v3, "The text background color index"

    aput-object v3, v2, v5

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationExtension/applicationID"

    aput-object v3, v2, v4

    const-string v3, "The application ID"

    aput-object v3, v2, v5

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationExtension/authenticationCode"

    aput-object v3, v2, v4

    const-string v3, "The authentication code"

    aput-object v3, v2, v5

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CommentExtension/value"

    aput-object v2, v1, v4

    const-string v2, "The comment"

    aput-object v2, v1, v5

    const/16 v2, 0x23

    aput-object v1, v0, v2

    return-object v0
.end method
