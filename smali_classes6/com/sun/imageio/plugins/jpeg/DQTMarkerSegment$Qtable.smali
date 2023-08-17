.class Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Qtable"
.end annotation


# instance fields
.field public final QTABLE_SIZE:I

.field public data:[I

.field public elementPrecision:I

.field public tableID:I

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

.field private final zigzag:[I


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 5

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->this$0:Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->QTABLE_SIZE:I

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->zigzag:[I

    iget-object v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v1, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v2, v0, v1

    ushr-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->elementPrecision:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    if-nez v2, :cond_1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    iget-object v2, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->buf:[B

    iget v3, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    iget-object v4, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->zigzag:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    add-int/2addr v0, p1

    iput v0, p2, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->bufPtr:I

    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p2, "Unsupported element precision"

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x6
        0xe
        0xf
        0x1b
        0x1c
        0x2
        0x4
        0x7
        0xd
        0x10
        0x1a
        0x1d
        0x2a
        0x3
        0x8
        0xc
        0x11
        0x19
        0x1e
        0x29
        0x2b
        0x9
        0xb
        0x12
        0x18
        0x1f
        0x28
        0x2c
        0x35
        0xa
        0x13
        0x17
        0x20
        0x27
        0x2d
        0x34
        0x36
        0x14
        0x16
        0x21
        0x26
        0x2e
        0x33
        0x37
        0x3c
        0x15
        0x22
        0x25
        0x2f
        0x32
        0x38
        0x3b
        0x3d
        0x23
        0x24
        0x30
        0x31
        0x39
        0x3a
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->this$0:Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->QTABLE_SIZE:I

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->zigzag:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->elementPrecision:I

    iput p3, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->getTable()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x6
        0xe
        0xf
        0x1b
        0x1c
        0x2
        0x4
        0x7
        0xd
        0x10
        0x1a
        0x1d
        0x2a
        0x3
        0x8
        0xc
        0x11
        0x19
        0x1e
        0x29
        0x2b
        0x9
        0xb
        0x12
        0x18
        0x1f
        0x28
        0x2c
        0x35
        0xa
        0x13
        0x17
        0x20
        0x27
        0x2d
        0x34
        0x36
        0x14
        0x16
        0x21
        0x26
        0x2e
        0x33
        0x37
        0x3c
        0x15
        0x22
        0x25
        0x2f
        0x32
        0x38
        0x3b
        0x3d
        0x23
        0x24
        0x30
        0x31
        0x39
        0x3a
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;Lorg/w3c/dom/Node;)V
    .locals 6

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->this$0:Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->QTABLE_SIZE:I

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->zigzag:[I

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dqtable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->elementPrecision:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v2, "qtableId"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/jpeg/MarkerSegment;->getAttributeValue(Lorg/w3c/dom/Node;Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;IIZ)I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    instance-of p1, p2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v0, "dqtable node must have user object"

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->getTable()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

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

    const-string v0, "dqtable node must have 1 or 2 attributes"

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    const-string v0, "Invalid node, expected dqtable"

    invoke-direct {p1, v0, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x6
        0xe
        0xf
        0x1b
        0x1c
        0x2
        0x4
        0x7
        0xd
        0x10
        0x1a
        0x1d
        0x2a
        0x3
        0x8
        0xc
        0x11
        0x19
        0x1e
        0x29
        0x2b
        0x9
        0xb
        0x12
        0x18
        0x1f
        0x28
        0x2c
        0x35
        0xa
        0x13
        0x17
        0x20
        0x27
        0x2d
        0x34
        0x36
        0x14
        0x16
        0x21
        0x26
        0x2e
        0x33
        0x37
        0x3c
        0x15
        0x22
        0x25
        0x2f
        0x32
        0x38
        0x3b
        0x3d
        0x23
        0x24
        0x30
        0x31
        0x39
        0x3a
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;ZF)V
    .locals 2

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->this$0:Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x40

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->QTABLE_SIZE:I

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->zigzag:[I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->elementPrecision:I

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    sget-object p1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K1Div2Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    sget-object p1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K2Div2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    :goto_0
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Lcom/sun/imageio/plugins/jpeg/JPEG;->convertToLinearQuality(F)F

    move-result p1

    if-eqz p2, :cond_1

    sget-object p2, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K1Luminance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->K2Div2Chrominance:Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    :goto_1
    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->getScaledInstance(FZ)Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->getTable()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x6
        0xe
        0xf
        0x1b
        0x1c
        0x2
        0x4
        0x7
        0xd
        0x10
        0x1a
        0x1d
        0x2a
        0x3
        0x8
        0xc
        0x11
        0x19
        0x1e
        0x29
        0x2b
        0x9
        0xb
        0x12
        0x18
        0x1f
        0x28
        0x2c
        0x35
        0xa
        0x13
        0x17
        0x20
        0x27
        0x2d
        0x34
        0x36
        0x14
        0x16
        0x21
        0x26
        0x2e
        0x33
        0x37
        0x3c
        0x15
        0x22
        0x25
        0x2f
        0x32
        0x38
        0x3b
        0x3d
        0x23
        0x24
        0x30
        0x31
        0x39
        0x3a
        0x3e
        0x3f
    .end array-data
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    :cond_0
    return-object v0
.end method

.method public getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "dqtable"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->elementPrecision:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "elementPrecision"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qtableId"

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iget-object v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->tableID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element precision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->elementPrecision:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iget-object v1, p0, Lcom/sun/imageio/plugins/jpeg/DQTMarkerSegment$Qtable;->data:[I

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;-><init>([I)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->toString()Ljava/lang/String;

    return-void
.end method
