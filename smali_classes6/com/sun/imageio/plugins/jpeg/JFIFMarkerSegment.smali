.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;,
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;
    }
.end annotation


# static fields
.field private static final DATA_SIZE:I = 0xe

.field private static final ID_SIZE:I = 0x5

.field private static final THUMB_JPEG:I = 0x10

.field private static final THUMB_PALETTE:I = 0x11

.field private static final THUMB_RGB:I = 0x13

.field private static final THUMB_UNASSIGNED:I = 0x12


# instance fields
.field private final MAX_THUMB_HEIGHT:I

.field private final MAX_THUMB_WIDTH:I

.field public Xdensity:I

.field public Ydensity:I

.field private final debug:Z

.field public extSegments:Ljava/util/ArrayList;

.field public iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

.field private inICC:Z

.field public majorVersion:I

.field public minorVersion:I

.field public resUnits:I

.field private tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

.field public thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

.field public thumbHeight:I

.field public thumbWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xe0

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    const/16 v1, 0xff

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->MAX_THUMB_WIDTH:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->MAX_THUMB_HEIGHT:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->debug:Z

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->inICC:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbWidth:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    const/16 v1, 0xff

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->MAX_THUMB_WIDTH:I

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->MAX_THUMB_HEIGHT:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->debug:Z

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->inICC:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v0, v0, 0x5

    iget-object v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v2, v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v3, v2, v3

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v2, v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v3, v2, v3

    and-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v3, v2, v4

    and-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v3, v2, v4

    and-int/2addr v3, v1

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbWidth:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbHeight:I

    iget v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    add-int/lit8 v1, v1, -0xe

    iput v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    if-lez v3, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    invoke-direct {v1, p0, p1, v3, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;II)V

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public static synthetic access$102(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->inICC:Z

    return p1
.end method

.method private static expandGrayThumb(Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 4

    new-instance v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v2, v3}, Lorg/apache/poi/java/awt/Graphics;->drawImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z

    return-object v0
.end method

.method public static writeDefaultJFIF(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Ljava/util/List;Lorg/apache/poi/java/awt/color/ICC_Profile;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;-><init>()V

    invoke-virtual {v0, p0, p1, p3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeWithThumbs(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Ljava/util/List;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeICC(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    :cond_0
    return-void
.end method

.method public static writeICC(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData()[B

    move-result-object p0

    array-length v0, p0

    const v1, 0xffef

    div-int/2addr v0, v1

    array-length v2, p0

    rem-int/2addr v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x2

    const/16 v8, 0xff

    invoke-interface {p1, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    const/16 v8, 0xe2

    invoke-interface {p1, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-static {p1, v7}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    const-string v7, "ICC_PROFILE"

    const-string v8, "US-ASCII"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    invoke-interface {p1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-interface {p1, p0, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeJFXXSegment(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    invoke-direct {v0, p0, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    :try_end_0
    .catch Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p4, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailStarted(I)V

    invoke-virtual {v0, p3, p4}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    invoke-virtual {p4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailComplete()V

    return-void

    :catch_0
    const/16 p1, 0x9

    invoke-virtual {p4, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    return-void
.end method

.method private writeThumb(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/BufferedImage;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;IZLcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 4

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v1

    instance-of v2, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/16 v3, 0x11

    if-eqz v2, :cond_4

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :cond_0
    if-eqz p3, :cond_3

    iget p5, p3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    if-ne p5, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p2

    const/4 p5, 0x0

    invoke-virtual {v0, p2, p5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->convertToIntDiscrete(Lorg/apache/poi/java/awt/image/Raster;Z)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->setThumbnail(Lorg/apache/poi/java/awt/image/BufferedImage;)V

    invoke-virtual {p6, p4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailStarted(I)V

    invoke-virtual {p3, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    invoke-virtual {p6}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailComplete()V

    goto :goto_4

    :cond_3
    :goto_1
    invoke-direct {p0, p4, p2, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeJFXXSegment(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    if-nez p3, :cond_5

    if-eqz p5, :cond_3

    :goto_2
    invoke-virtual {p0, p1, p2, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/BufferedImage;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    goto :goto_4

    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p0, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :cond_6
    iget p5, p3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    if-ne p5, v3, :cond_2

    invoke-direct {p0, p4, p2, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeJFXXSegment(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    const/16 p1, 0xe

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    if-nez p3, :cond_8

    if-eqz p5, :cond_3

    invoke-static {p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->expandGrayThumb(Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p2

    goto :goto_2

    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual {p0, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :cond_9
    iget p5, p3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->code:I

    const/16 v0, 0x13

    if-ne p5, v0, :cond_a

    invoke-static {p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->expandGrayThumb(Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p2

    goto :goto_1

    :cond_a
    const/16 v0, 0x10

    if-ne p5, v0, :cond_b

    goto :goto_0

    :cond_b
    if-ne p5, v3, :cond_d

    invoke-direct {p0, p4, p2, p1, p6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeJFXXSegment(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    const/16 p1, 0xf

    goto :goto_3

    :cond_c
    const/16 p1, 0x9

    :goto_3
    invoke-virtual {p6, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_d
    :goto_4
    return-void
.end method


# virtual methods
.method public addICC(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->inICC:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    invoke-direct {v0, p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->inICC:Z

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "> 1 ICC APP2 Marker Segment not supported"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->addData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    :goto_0
    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->tempICCSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    :cond_2
    return-void
.end method

.method public addICC(Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    invoke-direct {v0, p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/color/ICC_ColorSpace;)V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "> 1 ICC APP2 Marker Segment not supported"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addJFXX(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    invoke-direct {v1, p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    iget-object v3, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    :cond_1
    return-object v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "app0JFIF"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "majorVersion"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "minorVersion"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resUnits"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Xdensity"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ydensity"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbWidth"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbHeight"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "JFXX"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;ILcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    invoke-virtual {p3, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->thumbnailStarted(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    iget-object p2, p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {p2, p1, p3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->thumbnailComplete()V

    return-object p1
.end method

.method public getThumbnailHeight(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->getHeight()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->getHeight()I

    move-result p1

    return p1
.end method

.method public getThumbnailWidth(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->getWidth()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->thumb:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->getWidth()I

    move-result p1

    return p1
.end method

.method public print()V
    .locals 3

    const-string v0, "JFIF"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Version "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Resolution units: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "X density: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Y density: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Thumbnail Width: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbWidth:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Thumbnail Height: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbHeight:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;->print()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;->print()V

    :cond_1
    return-void
.end method

.method public updateFromNativeNode(Lorg/w3c/dom/Node;Z)V
    .locals 12

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "majorVersion"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    :goto_0
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "minorVersion"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    :goto_1
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v2, "resUnits"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    :goto_2
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    const/4 v3, 0x1

    const v4, 0xffff

    const/4 v5, 0x0

    const-string v2, "Xdensity"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    :goto_3
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    const/4 v3, 0x1

    const v4, 0xffff

    const/4 v5, 0x0

    const-string v2, "Ydensity"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    :goto_4
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "thumbWidth"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_5

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbWidth:I

    :goto_5
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbWidth:I

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "thumbHeight"

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_6

    goto :goto_6

    :cond_6
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbHeight:I

    :goto_6
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->thumbHeight:I

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_e

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_f

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JFXX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    if-nez p2, :cond_8

    goto :goto_8

    :cond_8
    new-instance p2, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "app0JFIF node cannot have > 1 JFXX node"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p2

    :cond_9
    :goto_8
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    move v8, v2

    :goto_9
    if-ge v8, v7, :cond_a

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    iget-object v10, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    new-instance v11, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    invoke-direct {v11, p0, v9}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_a
    const-string v6, "app2ICC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    if-eqz v5, :cond_c

    if-nez p2, :cond_b

    goto :goto_a

    :cond_b
    new-instance p2, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "> 1 ICC APP2 Marker Segment not supported"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p2

    :cond_c
    :goto_a
    new-instance v5, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    invoke-direct {v5, p0, v4}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V

    iput-object v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->iccSegment:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$ICCMarkerSegment;

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    new-instance p2, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "app0JFIF node cannot have > 2 children"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p2

    :cond_f
    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/BufferedImage;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/BufferedImage;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/16 v3, 0xff

    if-gt v1, v3, :cond_0

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v4, 0xc

    invoke-virtual {p3, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v1

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object p2

    array-length v3, p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    add-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->writeTag(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->majorVersion:I

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->minorVersion:I

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->resUnits:I

    invoke-interface {p1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Xdensity:I

    invoke-static {p1, v3}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->Ydensity:I

    invoke-static {p1, v3}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-interface {p1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    if-eqz p2, :cond_3

    invoke-virtual {p3, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailStarted(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeThumbnailData(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;[ILcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    invoke-virtual {p3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailComplete()V

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data
.end method

.method public writeThumbnailData(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;[ILcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 4

    array-length v0, p2

    div-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget v2, p2, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    if-le v1, v0, :cond_1

    rem-int v2, v1, v0

    if-nez v2, :cond_1

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    array-length v3, p2

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p3, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailProgress(F)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeWithThumbs(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Ljava/util/List;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, v7, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeThumb(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/BufferedImage;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;IZLcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1, v10}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    move v12, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    iget-object v0, v7, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    iget-object v0, v7, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->extSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;

    move-object v3, v0

    goto :goto_2

    :cond_2
    move-object v3, v11

    :goto_2
    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeThumb(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/BufferedImage;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFExtensionMarkerSegment;IZLcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v10}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    :cond_4
    :goto_3
    return-void
.end method
