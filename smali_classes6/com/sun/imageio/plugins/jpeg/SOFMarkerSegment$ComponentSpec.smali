.class Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentSpec"
.end annotation


# instance fields
.field public HsamplingFactor:I

.field public QtableSelector:I

.field public VsamplingFactor:I

.field public componentId:I

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;BII)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->this$0:Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    iput p4, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->this$0:Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    aget-byte v0, p1, v1

    ushr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte p1, p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 6

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->this$0:Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string v2, "componentId"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    const-string v2, "HsamplingFactor"

    const/4 v3, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    const-string v2, "VsamplingFactor"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    const-string v2, "QtableSelector"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "componentSpec"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "componentId"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HsamplingFactor"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VsamplingFactor"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtableSelector"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public print()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Component ID: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->componentId:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "H sampling factor: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->HsamplingFactor:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "V sampling factor: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->VsamplingFactor:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Q table selector: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOFMarkerSegment$ComponentSpec;->QtableSelector:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method
