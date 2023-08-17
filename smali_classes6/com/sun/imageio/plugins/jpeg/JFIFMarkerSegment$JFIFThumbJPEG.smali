.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;
.super Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JFIFThumbJPEG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;
    }
.end annotation


# static fields
.field private static final PREAMBLE_SIZE:I = 0x6


# instance fields
.field public data:[B

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

.field public thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;ILcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    add-int/lit8 p3, p3, -0x6

    int-to-long v2, p3

    add-long/2addr v2, v0

    iget-object p1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance p1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-object p3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p3, p4}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZLorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iget-object p1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 6

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;

    invoke-direct {v3, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    invoke-virtual {v3, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->setOutput(Ljava/lang/Object;)V

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v2, p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-virtual {v3, v2, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v4, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->markerSequence:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/poi/javax/imageio/IIOImage;

    invoke-direct {v4, p2, v0, v2}, Lorg/apache/poi/javax/imageio/IIOImage;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/util/List;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/ImageWriter;->write(Lorg/apache/poi/javax/imageio/IIOImage;)V

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->dispose()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    const v2, 0xfff7

    if-gt p2, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    return-void

    :cond_0
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p2

    :cond_1
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;

    invoke-direct {p2, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$IllegalThumbException;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$1;)V

    throw p2
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 3

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "markerSequence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;-><init>(ZZ)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    invoke-virtual {p2, p1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->setFromMarkerSequenceNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "JFIFThumbJPEG child must be a markerSequence node"

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "JFIFThumbJPEG node must have 0 or 1 child"

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "JFIFthumbJPEG"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->getNativeTree()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-object v0
.end method

.method public getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;

    invoke-direct {v2, p0, p2}, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;-><init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->addIIOReadProgressListener(Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p2

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->dispose()V

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    return-object p2
.end method

.method public getWidth()I
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->thumbMetadata:Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;

    const-class v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadata;->findMarkerSegment(Ljava/lang/Class;Z)Lcom/sun/imageio/plugins/jpeg/MarkerSegment;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public print()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "JFIF thumbnail stored as JPEG"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    invoke-interface {p1, v3, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v1, v0

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;->data:[B

    array-length v4, v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p2, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;->thumbnailProgress(F)V

    goto :goto_0

    :cond_2
    return-void
.end method
