.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JFIFThumbRGB"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;II)V
    .locals 8

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    mul-int v0, p3, p4

    mul-int/lit8 v6, v0, 0x3

    const-string v7, "JFIFthumbRGB"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const-string v0, "JFIFthumbRGB"

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 9

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v2, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbRGB;->getLength()I

    move-result v0

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->readByteBuffer(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;[BLcom/sun/imageio/plugins/jpeg/JPEGImageReader;FF)V

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    iget v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    mul-int/lit8 v5, v3, 0x3

    const/4 p1, 0x3

    new-array v7, p1, [I

    fill-array-data v7, :array_0

    const/4 v6, 0x3

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    new-instance v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->writePixels(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method
