.class abstract Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "JFIFThumbUncompressed"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

.field public thumbHeight:I

.field public thumbWidth:I

.field public thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iput p4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-virtual {p2, p5}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->skipData(I)V

    iput-object p6, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    iput-object p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "thumbWidth"

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p3

    const/4 v6, -0x1

    if-eq p3, v6, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    :goto_0
    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "thumbHeight"

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    if-eq p1, v6, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    :goto_1
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " node cannot have > 2 attributes"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    return v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbWidth"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbHeight"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    return v0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method

.method public readByteBuffer(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;[BLcom/sun/imageio/plugins/jpeg/JPEGImageReader;FF)V
    .locals 5

    array-length v0, p2

    div-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    div-float/2addr v0, p4

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    array-length v2, p2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    add-int/2addr v1, v0

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    array-length v4, p2

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v2, p4

    add-float/2addr v2, p5

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-virtual {p3, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->thumbnailProgress(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 2

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_1
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method

.method public writePixels(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 7

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->warningOccurred(I)V

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbnail:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbWidth:I

    iget v5, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->thumbHeight:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbUncompressed;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-virtual {v1, p1, v0, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;->writeThumbnailData(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;[ILcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V

    return-void
.end method
