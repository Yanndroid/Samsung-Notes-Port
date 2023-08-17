.class public Lcom/sun/imageio/plugins/gif/GIFImageMetadata;
.super Lcom/sun/imageio/plugins/gif/GIFMetadata;
.source "SourceFile"


# static fields
.field public static final disposalMethodNames:[Ljava/lang/String;

.field public static final nativeMetadataFormatName:Ljava/lang/String; = "javax_imageio_gif_image_1.0"


# instance fields
.field public applicationData:Ljava/util/List;

.field public applicationIDs:Ljava/util/List;

.field public authenticationCodes:Ljava/util/List;

.field public characterCellHeight:I

.field public characterCellWidth:I

.field public comments:Ljava/util/List;

.field public delayTime:I

.field public disposalMethod:I

.field public hasPlainTextExtension:Z

.field public imageHeight:I

.field public imageLeftPosition:I

.field public imageTopPosition:I

.field public imageWidth:I

.field public interlaceFlag:Z

.field public localColorTable:[B

.field public sortFlag:Z

.field public text:[B

.field public textBackgroundColor:I

.field public textForegroundColor:I

.field public textGridHeight:I

.field public textGridLeft:I

.field public textGridTop:I

.field public textGridWidth:I

.field public transparentColorFlag:Z

.field public transparentColorIndex:I

.field public userInputFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "none"

    const-string v1, "doNotDispose"

    const-string v2, "restoreToBackgroundColor"

    const-string v3, "restoreToPrevious"

    const-string v4, "undefinedDisposalMethod4"

    const-string v5, "undefinedDisposalMethod5"

    const-string v6, "undefinedDisposalMethod6"

    const-string v7, "undefinedDisposalMethod7"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    return-void
.end method

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

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sun/imageio/plugins/gif/GIFMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    iput-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    return-void
.end method

.method private getNativeTree()Lorg/w3c/dom/Node;
    .locals 12

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "javax_imageio_gif_image_1.0"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageDescriptor"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageLeftPosition"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageTopPosition"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageWidth"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageHeight"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    const-string v3, "TRUE"

    const-string v4, "FALSE"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "interlaceFlag"

    invoke-virtual {v1, v5, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v5, "LocalColorTable"

    invoke-direct {v1, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sizeOfLocalColorTable"

    invoke-virtual {v1, v7, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    if-eqz v6, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    const-string v7, "sortFlag"

    invoke-virtual {v1, v7, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_2

    new-instance v7, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "ColorTableEntry"

    invoke-direct {v7, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "index"

    invoke-virtual {v7, v9, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    mul-int/lit8 v9, v6, 0x3

    aget-byte v10, v8, v9

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "red"

    invoke-virtual {v7, v10, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "green"

    invoke-virtual {v7, v10, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "blue"

    invoke-virtual {v7, v9, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v5, "GraphicControlExtension"

    invoke-direct {v1, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    iget v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    aget-object v5, v5, v6

    const-string v6, "disposalMethod"

    invoke-virtual {v1, v6, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    const-string v6, "userInputFlag"

    invoke-virtual {v1, v6, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    const-string v4, "transparentColorFlag"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delayTime"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "transparentColorIndex"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    if-eqz v1, :cond_6

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "PlainTextExtension"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridLeft"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridTop"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridWidth"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textGridHeight"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "characterCellWidth"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "characterCellHeight"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textForegroundColor"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textBackgroundColor"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-lez v1, :cond_9

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "ApplicationExtensions"

    invoke-direct {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_8

    new-instance v5, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v6, "ApplicationExtension"

    invoke-direct {v5, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v6

    const-string v7, "applicationID"

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v6

    const-string v7, "authenticationCode"

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_7
    if-lez v1, :cond_c

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "CommentExtensions"

    invoke-direct {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :goto_8
    if-ge v2, v1, :cond_b

    new-instance v4, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v5, "CommentExtension"

    invoke-direct {v4, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->toISO8859([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v4, v6, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    return-object v0
.end method

.method private toISO8859([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const-string v0, "javax_imageio_gif_image_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->getNativeTree()Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTree()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a recognized format!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStandardChromaNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 8

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ColorSpaceType"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    const-string v3, "RGB"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumChannels"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-eqz v2, :cond_0

    const-string v2, "4"

    goto :goto_0

    :cond_0
    const-string v2, "3"

    :goto_0
    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "BlackIsZero"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "TRUE"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Palette"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    new-instance v4, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v5, "PaletteEntry"

    invoke-direct {v4, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "index"

    invoke-virtual {v4, v6, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    mul-int/lit8 v6, v3, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "red"

    invoke-virtual {v4, v7, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "green"

    invoke-virtual {v4, v7, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "blue"

    invoke-virtual {v4, v6, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public getStandardCompressionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "CompressionTypeName"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "lzw"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "Lossless"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v3, "TRUE"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "NumProgressiveScans"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    if-eqz v3, :cond_0

    const-string v3, "4"

    goto :goto_0

    :cond_0
    const-string v3, "1"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDataNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "SampleFormat"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "Index"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDimensionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageOrientation"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "Normal"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "HorizontalPixelOffset"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "VerticalPixelOffset"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardTextNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 6

    const-string v0, "ISO-8859-1"

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "Text"

    invoke-direct {v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v5, "TextEntry"

    invoke-direct {v3, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v5, "value"

    invoke-virtual {v3, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "encoding"

    invoke-virtual {v3, v4, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "compression"

    const-string v5, "none"

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Encoding ISO-8859-1 unknown!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v2
.end method

.method public getStandardTransparencyNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Transparency"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "TransparentIndex"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Metadata is read-only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeStandardTree(Lorg/w3c/dom/Node;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Metadata is read-only!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public reset()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Metadata is read-only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Metadata is read-only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
