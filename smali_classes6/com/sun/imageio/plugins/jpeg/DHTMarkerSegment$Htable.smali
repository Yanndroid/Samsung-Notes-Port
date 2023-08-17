.class Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Htable"
.end annotation


# static fields
.field private static final NUM_LENGTHS:I = 0x10


# instance fields
.field public numCodes:[S

.field public tableClass:I

.field public tableID:I

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

.field public values:[S


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 6

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->this$0:Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    iget-object v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v0, v1

    ushr-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    iget-object v3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v4, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    aget-short v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array p1, v2, [S

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    :goto_2
    if-ge v0, v2, :cond_2

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    iget-object v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->this$0:Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    xor-int/lit8 p1, p3, 0x1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    iput p4, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->getLengths()[S

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->getValues()[S

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 6

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->this$0:Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dhtable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v2, "class"

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    const/4 v4, 0x3

    const-string v2, "htableId"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    instance-of p1, p2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v0, "dhtable node must have user object"

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->getLengths()[S

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->getValues()[S

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "dhtable node must have 2 attributes"

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Invalid node, expected dqtable"

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    if-eqz v1, :cond_1

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    :cond_1
    return-object v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "dhtable"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "htableId"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    iget-object v3, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Huffman Table"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableClass:I

    if-nez v2, :cond_0

    const-string v2, "DC"

    goto :goto_0

    :cond_0
    const-string v2, "AC"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->tableID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->numCodes:[S

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DHTMarkerSegment$Htable;->values:[S

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[S)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->toString()Ljava/lang/String;

    return-void
.end method
