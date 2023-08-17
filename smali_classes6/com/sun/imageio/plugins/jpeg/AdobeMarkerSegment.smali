.class Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# static fields
.field private static final ID_SIZE:I = 0x5


# instance fields
.field public flags0:I

.field public flags1:I

.field public transform:I

.field public version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xee

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/16 v0, 0x65

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public static writeAdobeSegment(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    return-void
.end method


# virtual methods
.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "app14Adobe"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags0"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags1"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "transform"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public print()V
    .locals 2

    const-string v0, "Adobe APP14"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Version: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Flags0: 0x"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Flags1: 0x"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Transform: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method

.method public updateFromNativeNode(Lorg/w3c/dom/Node;Z)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    const-string v2, "transform"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/16 v3, 0x64

    const/16 v4, 0xff

    const/4 v5, 0x0

    const-string v2, "version"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    :goto_0
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    const/4 v3, 0x0

    const v4, 0xffff

    const/4 v5, 0x0

    const-string v2, "flags0"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v6, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    :goto_1
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    const/4 v3, 0x0

    const v4, 0xffff

    const/4 v5, 0x0

    const-string v2, "flags1"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    if-eq p1, v6, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    :goto_2
    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    :cond_3
    return-void

    :cond_4
    new-instance p2, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Adobe APP14 node cannot have > 4 attributes"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p2
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->writeTag(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->version:I

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags0:I

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->flags1:I

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->write2bytes(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/AdobeMarkerSegment;->transform:I

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x64t
        0x6ft
        0x62t
        0x65t
    .end array-data
.end method
