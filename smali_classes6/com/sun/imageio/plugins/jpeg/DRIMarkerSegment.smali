.class Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# instance fields
.field public restartInterval:I


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    iget-object v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    const/16 v0, 0xdd

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    return-void
.end method


# virtual methods
.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "dri"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "DRI"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public updateFromNativeNode(Lorg/w3c/dom/Node;Z)V
    .locals 6

    const/4 v1, 0x0

    const-string v2, "interval"

    const/4 v3, 0x0

    const v4, 0xffff

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DRIMarkerSegment;->restartInterval:I

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 0

    return-void
.end method
