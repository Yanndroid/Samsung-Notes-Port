.class public Lcom/sun/imageio/plugins/bmp/BMPMetadata;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.source "SourceFile"

# interfaces
.implements Lcom/sun/imageio/plugins/bmp/BMPConstants;


# static fields
.field public static final nativeMetadataFormatName:Ljava/lang/String; = "javax_imageio_bmp_1.0"


# instance fields
.field public alphaMask:I

.field public bitsPerPixel:S

.field public blue:I

.field public blueMask:I

.field public blueX:D

.field public blueY:D

.field public blueZ:D

.field public bmpVersion:Ljava/lang/String;

.field public colorSpace:I

.field public colorsImportant:I

.field public colorsUsed:I

.field public comments:Ljava/util/List;

.field public compression:I

.field public gammaBlue:I

.field public gammaGreen:I

.field public gammaRed:I

.field public green:I

.field public greenMask:I

.field public greenX:D

.field public greenY:D

.field public greenZ:D

.field public height:I

.field public imageSize:I

.field public intent:I

.field public palette:[B

.field public paletteSize:I

.field public red:I

.field public redMask:I

.field public redX:D

.field public redY:D

.field public redZ:D

.field public width:I

.field public xPixelsPerMeter:I

.field public yPixelsPerMeter:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_bmp_1.0"

    const-string v3, "com.sun.imageio.plugins.bmp.BMPMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->comments:Ljava/util/List;

    return-void
.end method

.method private addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/sun/imageio/plugins/common/ImageUtil;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setNodeValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private addXYZPoints(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;DDD)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object p1

    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p3, p4}, Ljava/lang/Double;-><init>(D)V

    const-string p3, "X"

    invoke-direct {p0, p1, p3, p2}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p5, p6}, Ljava/lang/Double;-><init>(D)V

    const-string p3, "Y"

    invoke-direct {p0, p1, p3, p2}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p7, p8}, Ljava/lang/Double;-><init>(D)V

    const-string p3, "Z"

    invoke-direct {p0, p1, p3, p2}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    return-void
.end method

.method private countBits(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_1

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getNativeTree()Lorg/w3c/dom/Node;
    .locals 20

    move-object/from16 v9, p0

    new-instance v10, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v0, "javax_imageio_bmp_1.0"

    invoke-direct {v10, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    const-string v1, "BMPVersion"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->width:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "Width"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->height:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "Height"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Short;

    iget-short v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bitsPerPixel:S

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    const-string v1, "BitsPerPixel"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "Compression"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->imageSize:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "ImageSize"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v0, "PixelsPerMeter"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v0, v11}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->xPixelsPerMeter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "X"

    invoke-direct {v9, v0, v2, v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v1, Ljava/lang/Integer;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->yPixelsPerMeter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Y"

    invoke-direct {v9, v0, v2, v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorsUsed:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "ColorsUsed"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorsImportant:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "ColorsImportant"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v13, "Alpha"

    const-string v14, "Blue"

    const-string v15, "Green"

    const-string v7, "Red"

    const/4 v8, 0x4

    if-lt v1, v8, :cond_2

    const-string v0, "Mask"

    invoke-direct {v9, v10, v0, v11}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v0, v7, v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v1, Ljava/lang/Integer;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v0, v15, v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v1, Ljava/lang/Integer;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v0, v14, v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v1, Ljava/lang/Integer;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->alphaMask:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v0, v13, v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "ColorSpaceType"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v0, "CIEXYZEndPoints"

    invoke-direct {v9, v10, v0, v11}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v16

    iget-wide v3, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redX:D

    iget-wide v5, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redY:D

    iget-wide v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redZ:D

    const-string v17, "Red"

    move-object/from16 v0, p0

    move-wide/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v12, v7

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addXYZPoints(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;DDD)V

    iget-wide v3, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenX:D

    iget-wide v5, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenY:D

    iget-wide v7, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenZ:D

    const-string v2, "Green"

    invoke-direct/range {v0 .. v8}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addXYZPoints(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;DDD)V

    iget-wide v3, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueX:D

    iget-wide v5, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueY:D

    iget-wide v7, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueZ:D

    const-string v2, "Blue"

    invoke-direct/range {v0 .. v8}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addXYZPoints(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;DDD)V

    new-instance v0, Ljava/lang/Integer;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->intent:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "Intent"

    invoke-direct {v9, v10, v1, v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    goto :goto_1

    :cond_2
    move-object v12, v7

    :goto_1
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    if-eqz v0, :cond_4

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    if-lez v0, :cond_4

    const-string v0, "Palette"

    invoke-direct {v9, v10, v0, v11}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    array-length v1, v1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    div-int/2addr v1, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    :goto_2
    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    if-ge v2, v3, :cond_4

    const-string v3, "PaletteEntry"

    invoke-direct {v9, v0, v3, v11}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v3

    iget-object v4, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    add-int/lit8 v5, v17, 0x1

    aget-byte v6, v4, v17

    and-int/lit16 v6, v6, 0xff

    iput v6, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->red:I

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->green:I

    add-int/lit8 v5, v7, 0x1

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    iput v4, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blue:I

    new-instance v4, Ljava/lang/Byte;

    int-to-byte v6, v6

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v9, v3, v12, v4}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v4, Ljava/lang/Byte;

    iget v6, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->green:I

    int-to-byte v6, v6

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v9, v3, v15, v4}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    new-instance v4, Ljava/lang/Byte;

    iget v6, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blue:I

    int-to-byte v6, v6

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v9, v3, v14, v4}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    new-instance v6, Ljava/lang/Byte;

    iget-object v7, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-direct {v6, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v9, v3, v13, v6}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->addChildNode(Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move/from16 v17, v8

    goto :goto_3

    :cond_3
    move/from16 v17, v5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v10
.end method

.method private toISO8859([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const-string v0, "javax_imageio_bmp_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->getNativeTree()Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTree()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BMPMetadata0"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStandardChromaNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 10

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    if-lez v0, :cond_2

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Palette"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    array-length v2, v2

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    div-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "value"

    invoke-virtual {v1, v5, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    iget v6, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    if-ge v3, v6, :cond_1

    new-instance v6, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v7, "PaletteEntry"

    invoke-direct {v6, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "index"

    invoke-virtual {v6, v8, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, v8, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "red"

    invoke-virtual {v6, v7, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    add-int/lit8 v8, v9, 0x1

    aget-byte v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "green"

    invoke-virtual {v6, v7, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "blue"

    invoke-virtual {v6, v7, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    aget-byte v5, v5, v9

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    add-int/lit8 v8, v9, 0x1

    aget-byte v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "alpha"

    invoke-virtual {v6, v7, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto :goto_1

    :cond_0
    move v5, v9

    :goto_1
    invoke-virtual {v1, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardCompressionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "CompressionTypeName"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    invoke-static {v2}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDataNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bitsPerPixel:S

    const-string v2, ""

    const/16 v3, 0x18

    if-ne v1, v3, :cond_0

    const-string v2, "8 8 8 "

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->countBits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->countBits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->countBits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->alphaMask:I

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->countBits(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "BitsPerSample"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDimensionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 7

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->yPixelsPerMeter:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->xPixelsPerMeter:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->yPixelsPerMeter:I

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->xPixelsPerMeter:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "PixelAspectRatio"

    invoke-direct {v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "HorizontalPhysicalPixelSpacing"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->xPixelsPerMeter:I

    const/4 v6, 0x1

    div-int v5, v6, v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "VerticalPhysicalPixelSpacing"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->yPixelsPerMeter:I

    div-int/2addr v6, v4

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BMPMetadata1"

    invoke-static {p2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BMPMetadata1"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BMPMetadata1"

    invoke-static {p2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
