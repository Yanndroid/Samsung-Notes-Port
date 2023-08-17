.class Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanComponentSpec"
.end annotation


# instance fields
.field public acHuffTable:I

.field public componentSelector:I

.field public dcHuffTable:I

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;BI)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->this$0:Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->dcHuffTable:I

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->acHuffTable:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->this$0:Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    aget-byte v0, p1, v1

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->dcHuffTable:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte p1, p1, v1

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->acHuffTable:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 6

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->this$0:Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string v2, "componentSelector"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    const-string v2, "dcHuffTable"

    const/4 v4, 0x3

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->dcHuffTable:I

    const-string v2, "acHuffTable"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->acHuffTable:I

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

    const-string v1, "scanComponentSpec"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "componentSelector"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->dcHuffTable:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcHuffTable"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->acHuffTable:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "acHuffTable"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public print()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Component Selector: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->componentSelector:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DC huffman table: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->dcHuffTable:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AC huffman table: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/SOSMarkerSegment$ScanComponentSpec;->acHuffTable:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method
