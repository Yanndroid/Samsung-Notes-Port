.class Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;
.super Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;
.source "SourceFile"


# static fields
.field public static final NATIVE_FORMAT_NAME:Ljava/lang/String; = "javax_imageio_gif_stream_1.0"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_gif_stream_1.0"

    const-string v3, "com.sun.imageio.plugins.gif.GIFStreamMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;->reset()V

    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax_imageio_gif_stream_1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Root must be javax_imageio_gif_stream_1.0"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->versionStrings:[Ljava/lang/String;

    const-string v2, "value"

    invoke-static {p1, v2, v0, v7, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v1, "LogicalScreenDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const v6, 0xffff

    const-string v1, "logicalScreenWidth"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    const-string v1, "logicalScreenHeight"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    const/16 v6, 0x8

    const-string v1, "colorResolution"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const-string v1, "pixelAspectRatio"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    goto :goto_1

    :cond_2
    const-string v1, "GlobalColorTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sizeOfGlobalColorTable"

    const/4 v1, 0x2

    const/16 v2, 0x100

    invoke-static {p1, v0, v7, v1, v2}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZII)I

    move-result v8

    if-eq v8, v1, :cond_3

    const/4 v0, 0x4

    if-eq v8, v0, :cond_3

    const/16 v0, 0x8

    if-eq v8, v0, :cond_3

    const/16 v0, 0x10

    if-eq v8, v0, :cond_3

    const/16 v0, 0x20

    if-eq v8, v0, :cond_3

    const/16 v0, 0x40

    if-eq v8, v0, :cond_3

    const/16 v0, 0x80

    if-eq v8, v0, :cond_3

    if-eq v8, v2, :cond_3

    const-string v0, "Bad value for GlobalColorTable attribute sizeOfGlobalColorTable!"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xff

    const-string v1, "backgroundColorIndex"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->backgroundColorIndex:I

    const/4 v0, 0x0

    const-string v1, "sortFlag"

    invoke-static {p1, v1, v0, v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->sortFlag:Z

    const-string v0, "ColorTableEntry"

    invoke-virtual {p0, p1, v0, v7, v8}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getColorTable(Lorg/w3c/dom/Node;Ljava/lang/String;ZI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    goto :goto_1

    :cond_4
    const-string v0, "Unknown child of root node!"

    invoke-static {p1, v0}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
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
    if-eqz p1, :cond_e

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chroma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Palette"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    const-string v3, "PaletteEntry"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getColorTable(Lorg/w3c/dom/Node;Ljava/lang/String;ZI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    goto :goto_2

    :cond_1
    const-string v3, "BackgroundIndex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xff

    const-string v4, "value"

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->backgroundColorIndex:I

    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "Data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_d

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BitsPerSample"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x8

    const-string v2, "value"

    invoke-static/range {v1 .. v7}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    goto/16 :goto_8

    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "Dimension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "value"

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PixelAspectRatio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0, v3}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_6

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    goto :goto_5

    :cond_6
    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x41700000    # 15.0f

    sub-float/2addr v1, v4

    float-to-int v1, v1

    const/16 v4, 0xff

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    goto :goto_5

    :cond_7
    const-string v4, "HorizontalScreenSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0xffff

    const-string v5, "value"

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    goto :goto_5

    :cond_8
    const-string v4, "VerticalScreenSize"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0xffff

    const-string v5, "value"

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZZII)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    :cond_9
    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    :cond_a
    const-string v1, "Document"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FormatVersion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v1}, Lcom/sun/imageio/plugins/gif/GIFMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->versionStrings:[Ljava/lang/String;

    array-length v3, v1

    if-ge v2, v3, :cond_d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    goto :goto_8

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_6

    :cond_d
    :goto_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 2

    const-string v0, "javax_imageio_gif_stream_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "root == null!"

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;->mergeStandardTree(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a recognized format!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->backgroundColorIndex:I

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->sortFlag:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    return-void
.end method

.method public setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;->reset()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-void
.end method
