.class Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;
    }
.end annotation


# instance fields
.field public approxHigh:I

.field public approxLow:I

.field public componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

.field public endSpectralSelection:I

.field public startSpectralSelection:I


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    iget-object v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v1

    new-array v1, v0, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    invoke-direct {v3, p0, p1}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v0, v1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v0, v2

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    aget-byte v2, v0, v1

    shr-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2

    const/16 v0, 0xda

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    const/16 v1, 0x3f

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public constructor <init>(Z[BI)V
    .locals 6

    const/16 v0, 0xda

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    const/16 v1, 0x3f

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    new-array v1, p3, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    new-instance v4, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    aget-byte v5, p2, v1

    invoke-direct {v4, p0, v5, v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;BI)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "sos"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "numScanComponents"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startSpectralSelection"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "endSpectralSelection"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "approxHigh"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "approxLow"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getScanComponentSpec(BI)Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;BI)V

    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "SOS"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Start spectral selection: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "End spectral selection: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Approx high: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Approx low: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Num scan components: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->print()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateFromNativeNode(Lorg/w3c/dom/Node;Z)V
    .locals 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    const-string v2, "numScanComponents"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v6

    const-string v2, "startSpectralSelection"

    const/4 v3, 0x0

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    :goto_0
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->startSpectralSelection:I

    const/4 v3, 0x0

    const/16 v4, 0x3f

    const/4 v5, 0x0

    const-string v2, "endSpectralSelection"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    :goto_1
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->endSpectralSelection:I

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v2, "approxHigh"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v7, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    :goto_2
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxHigh:I

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v2, "approxLow"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p2

    if-eq p2, v7, :cond_3

    goto :goto_3

    :cond_3
    iget p2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    :goto_3
    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->approxLow:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ne v0, v6, :cond_5

    new-array p1, v6, [Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    const/4 p1, 0x0

    :goto_4
    if-ge p1, v6, :cond_4

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;

    invoke-interface {p2, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;Lorg/w3c/dom/Node;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    new-instance p2, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "numScanComponents must match the number of children"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p2
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 0

    return-void
.end method
