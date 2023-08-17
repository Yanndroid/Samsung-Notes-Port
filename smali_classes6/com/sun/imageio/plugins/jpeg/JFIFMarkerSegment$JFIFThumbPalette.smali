.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JFIFThumbPalette"
.end annotation


# static fields
.field private static final PALETTE_SIZE:I = 0x300


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;II)V
    .locals 8

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    mul-int v0, p3, p4

    add-int/lit16 v6, v0, 0x300

    const-string v7, "JFIFThumbPalette"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V

    iget-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result p2

    const/16 v0, 0x100

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p2
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const-string v0, "JFIFThumbPalette"

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    mul-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x300

    return v0
.end method

.method public getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 10

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    const/16 v0, 0x300

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbPalette;->getLength()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44400000    # 768.0f

    div-float v8, v2, v1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->readByteBuffer(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;[BLcom/sun/imageio/plugins/jpeg/JPEGImageReader;FF)V

    new-instance v9, Lorg/apache/poi/java/awt/image/DataBufferByte;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    mul-int/2addr v1, v2

    invoke-direct {v9, v1}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->readByteBuffer(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;[BLcom/sun/imageio/plugins/jpeg/JPEGImageReader;FF)V

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read()I

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    new-instance p1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/16 v2, 0x8

    const/16 v3, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[BIZ)V

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-virtual {p1, p2, v0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v9, v0}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p2

    new-instance v1, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, v0}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    const/16 v0, 0x300

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/16 v2, 0x100

    new-array v3, v2, [B

    new-array v4, v2, [B

    new-array v5, v2, [B

    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {v1, v4}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {v1, v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v6, v1, 0x3

    aget-byte v7, v3, v1

    aput-byte v7, v0, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v4, v1

    aput-byte v8, v0, v7

    add-int/lit8 v6, v6, 0x2

    aget-byte v7, v5, v1

    aput-byte v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->writePixels(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method
