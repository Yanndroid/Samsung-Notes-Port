.class Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;
.super Lcom/sun/imageio/plugins/gif/GIFImageMetadata;
.source "SourceFile"


# static fields
.field public static final NATIVE_FORMAT_NAME:Ljava/lang/String; = "javax_imageio_gif_image_1.0"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_gif_image_1.0"

    const-string v3, "com.sun.imageio.plugins.gif.GIFImageMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private fromISO8859(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax_imageio_gif_image_1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Root must be javax_imageio_gif_image_1.0"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xffff

    const-string v1, "imageLeftPosition"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    const-string v1, "imageTopPosition"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    const/4 v5, 0x1

    const-string v1, "imageWidth"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    const-string v1, "imageHeight"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    const-string v0, "interlaceFlag"

    invoke-static {p1, v0, v7, v8}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    goto/16 :goto_3

    :cond_1
    const-string v1, "LocalColorTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "sizeOfLocalColorTable"

    const/4 v1, 0x2

    const/16 v2, 0x100

    invoke-static {p1, v0, v8, v1, v2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const-string v1, "Bad value for LocalColorTable attribute sizeOfLocalColorTable!"

    invoke-static {p1, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2
    const-string v1, "sortFlag"

    invoke-static {p1, v1, v7, v8}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    const-string v1, "ColorTableEntry"

    invoke-virtual {p0, p1, v1, v8, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getColorTable(Lorg/w3c/dom/Node;Ljava/lang/String;ZI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    goto/16 :goto_3

    :cond_3
    const-string v1, "GraphicControlExtension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_5

    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    const-string v1, "disposalMethod"

    invoke-static {p1, v1, v9, v8, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    :goto_1
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    goto :goto_1

    :cond_4
    const-string v0, "userInputFlag"

    invoke-static {p1, v0, v7, v8}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    const-string v0, "transparentColorFlag"

    invoke-static {p1, v0, v7, v8}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xffff

    const-string v1, "delayTime"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    const-string v1, "transparentColorIndex"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    goto/16 :goto_3

    :cond_5
    const-string v1, "PlainTextExtension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v8, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xffff

    const-string v1, "textGridLeft"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    const-string v1, "textGridTop"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    const/4 v5, 0x1

    const-string v1, "textGridWidth"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    const-string v1, "textGridHeight"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    const-string v1, "characterCellWidth"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    const-string v1, "characterCellHeight"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    const/4 v5, 0x0

    const/16 v6, 0xff

    const-string v1, "textForegroundColor"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    const-string v1, "textBackgroundColor"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    const-string v0, "text"

    const-string v1, ""

    invoke-static {p1, v0, v1, v7, v9}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;->fromISO8859(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    goto/16 :goto_3

    :cond_6
    const-string v1, "ApplicationExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationExtension"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Only a ApplicationExtension may be a child of a ApplicationExtensions!"

    invoke-static {p1, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_7
    const-string v1, "applicationID"

    invoke-static {v0, v1, v9, v8, v9}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authenticationCode"

    invoke-static {v0, v2, v9, v8, v9}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    instance-of v4, v3, [B

    if-nez v4, :cond_9

    :cond_8
    const-string v4, "Bad user object in ApplicationExtension!"

    invoke-static {v0, v4}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;->fromISO8859(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;->fromISO8859(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    const-string v1, "CommentExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_f

    :goto_2
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommentExtension"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Only a CommentExtension may be a child of a CommentExtensions!"

    invoke-static {p1, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-nez v1, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    :cond_d
    const-string v1, "value"

    invoke-static {v0, v1, v9, v8, v9}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;->fromISO8859(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    :cond_e
    const-string v0, "Unknown child of root node!"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_f
    :goto_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public mergeStandardTree(Lorg/w3c/dom/Node;)V
    .locals 11

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax_imageio_1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Root must be javax_imageio_1.0"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chroma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Palette"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v3, "PaletteEntry"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getColorTable(Lorg/w3c/dom/Node;Ljava/lang/String;ZI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    goto/16 :goto_7

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_c

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NumProgressiveScans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const-string v5, "value"

    invoke-static/range {v4 .. v10}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    if-le v0, v3, :cond_c

    iput-boolean v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    goto/16 :goto_7

    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-string v1, "Dimension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HorizontalPixelOffset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xffff

    const-string v2, "value"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    goto :goto_4

    :cond_5
    const-string v2, "VerticalPixelOffset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xffff

    const-string v2, "value"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    :cond_6
    :goto_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TextEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "compression"

    const-string v3, "none"

    invoke-static {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "encoding"

    const-string v3, "ISO-8859-1"

    invoke-static {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "value"

    invoke-static {v0, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;->fromISO8859(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    :cond_8
    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v1, "Transparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    :goto_6
    if-eqz v4, :cond_c

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparentIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xff

    const-string v5, "value"

    invoke-static/range {v4 .. v10}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    iput-boolean v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    goto :goto_7

    :cond_b
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_6

    :cond_c
    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    return-void
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;->reset()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-void
.end method
