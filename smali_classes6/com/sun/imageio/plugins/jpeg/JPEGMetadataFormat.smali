.class abstract Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.source "SourceFile"


# static fields
.field private static final MAX_JPEG_DATA_SIZE:I = 0xfffd


# instance fields
.field public resourceBaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Resources"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->resourceBaseName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->setResourceBaseName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addStreamElements(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-class v12, [B

    const-string v0, "dqt"

    const/4 v13, 0x1

    const/4 v7, 0x4

    invoke-virtual {v10, v0, v11, v13, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v8, "dqtable"

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v0, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dqtable"

    const-string v2, "elementPrecision"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "0"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v15, "0"

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "1"

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "2"

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "3"

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "dqtable"

    const-string v2, "qtableId"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v16, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-class v0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    const/4 v6, 0x0

    invoke-virtual {v10, v8, v0, v13, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;)V

    const-string v0, "dht"

    invoke-virtual {v10, v0, v11, v13, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "dhtable"

    invoke-virtual {v10, v7, v0, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "dhtable"

    const-string v2, "class"

    move-object/from16 v0, p0

    move-object v15, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "dhtable"

    const-string v2, "htableId"

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-class v0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {v10, v7, v0, v13, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;)V

    const-string v0, "dri"

    invoke-virtual {v10, v0, v11, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dri"

    const-string v2, "interval"

    const-string v6, "0"

    const-string v7, "65535"

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "com"

    invoke-virtual {v10, v6, v11, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com"

    const-string v2, "comment"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const v15, 0xfffd

    invoke-virtual {v10, v6, v12, v13, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V

    const-string v9, "unknown"

    invoke-virtual {v10, v9, v11, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "unknown"

    const-string v2, "MarkerTag"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v6, "0"

    const-string v7, "255"

    const/4 v11, 0x1

    move-object v14, v9

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v14, v12, v13, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V

    return-void
.end method

.method public canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getRootName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->isInSubtree(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInSubtree(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getChildNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p0, p1, v3}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->isInSubtree(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
