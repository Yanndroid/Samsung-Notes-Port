.class Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;
.super Lcom/sun/imageio/plugins/jpeg/MarkerSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;
    }
.end annotation


# instance fields
.field public tables:Ljava/util/List;


# direct methods
.method public constructor <init>(FZ)V
    .locals 3

    const/16 v0, 0xdb

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;ZF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;ZF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    :goto_0
    if-lez v0, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    invoke-direct {v1, p0, p1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->length:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufAvail:I

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 5

    const/16 v0, 0xdb

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    new-instance v3, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v1, "Invalid DQT node"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0
.end method

.method public constructor <init>([Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;)V
    .locals 4

    const/16 v0, 0xdb

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    aget-object v3, p1, v0

    invoke-direct {v2, p0, v3, v0}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    iget-object v3, v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChromaForLuma(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;)Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ge v1, v3, :cond_1

    iget-object v4, p1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    aget v5, v4, v1

    add-int/lit8 v6, v1, -0x1

    aget v4, v4, v6

    if-eq v5, v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    iput v0, p1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    goto :goto_3

    :cond_2
    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_4

    iget-object v4, p1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    aget v5, v4, v1

    aget v4, v4, v2

    if-le v5, v4, :cond_3

    move v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sget-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K1Div2Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {v1}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->getTable()[I

    move-result-object v1

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr p1, v1

    sget-object v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K2Div2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->getScaledInstance(FZ)Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object p1

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    invoke-direct {v1, p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;I)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "dqt"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getQtableFromNode(Lorg/w3c/dom/Node;)Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    invoke-direct {v0, p0, p1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;-><init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public print()V
    .locals 3

    const-string v0, "DQT"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->printTag(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num tables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;->tables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->print()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V
    .locals 0

    return-void
.end method
