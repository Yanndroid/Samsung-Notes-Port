.class Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;
    }
.end annotation


# instance fields
.field public componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

.field public numLines:I

.field public samplePrecision:I

.field public samplesPerLine:I


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    iget-object v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v0, v1

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplePrecision:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    new-array v1, v0, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    invoke-direct {v3, p0, p1}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplePrecision:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->updateFromNativeNode(Lorg/w3c/dom/Node;Z)V

    return-void
.end method

.method public constructor <init>(ZZZ[BI)V
    .locals 5

    if-eqz p1, :cond_0

    const/16 p1, 0xc2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0xc1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    const/16 p1, 0x8

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplePrecision:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    new-array p2, p5, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    move p2, p1

    :goto_1
    if-ge p2, p5, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_4

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    move v1, p1

    :goto_2
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-byte v4, p4, p2

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;BII)V

    aput-object v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getComponentSpec(BII)Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;BII)V

    return-object v0
.end method

.method public getIDencodedCSType()I
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v3, v2

    const/16 v4, 0x41

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ge v2, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v2

    const/4 v3, 0x3

    const/16 v5, 0x63

    const/16 v6, 0x42

    const/16 v7, 0x43

    const/16 v8, 0x47

    const/16 v9, 0x59

    const/16 v10, 0x52

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v10, :cond_3

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v8, :cond_3

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v6, :cond_3

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v4, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v9, :cond_6

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v7, :cond_6

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v5, :cond_6

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v4, :cond_6

    const/16 v0, 0xa

    return v0

    :cond_4
    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v10, :cond_5

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v8, :cond_5

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v6, :cond_5

    const/4 v0, 0x2

    return v0

    :cond_5
    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v9, :cond_6

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v7, :cond_6

    aget-object v1, v2, v0

    iget v1, v1, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    if-ne v1, v5, :cond_6

    const/4 v0, 0x5

    :cond_6
    :goto_1
    return v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "sof"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    add-int/lit16 v1, v1, -0xc0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "process"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplePrecision:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "samplePrecision"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "numLines"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "samplesPerLine"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "numFrameComponents"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "SOF"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sample precision: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplePrecision:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Number of lines: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Samples per line: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Number of components: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->print()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateFromNativeNode(Lorg/w3c/dom/Node;Z)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    const-string v2, "process"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    add-int/lit16 v0, v0, 0xc0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    :goto_0
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->tag:I

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v2, "samplePrecision"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    const/4 v3, 0x0

    const v4, 0xffff

    const-string v2, "numLines"

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v6, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    :goto_1
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->numLines:I

    const/4 v3, 0x0

    const v4, 0xffff

    const/4 v5, 0x0

    const-string v2, "samplesPerLine"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    if-eq v0, v6, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    :goto_2
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->samplesPerLine:I

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "numFrameComponents"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ne v1, p2, :cond_4

    new-array p1, p2, [Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p2, :cond_3

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;->componentSpecs:[Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;-><init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;Lorg/w3c/dom/Node;)V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    new-instance p2, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "numFrameComponents must match number of children"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p2
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 0

    return-void
.end method
