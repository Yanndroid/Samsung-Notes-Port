.class Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->loadData(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xfe

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2

    const/16 v0, 0xfe

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "comment"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v1, "Empty comment node!"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "com"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;->getComment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "COM"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/COMMarkerSegment;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->writeTag(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    return-void
.end method
