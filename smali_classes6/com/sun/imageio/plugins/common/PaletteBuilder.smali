.class public Lcom/sun/imageio/plugins/common/PaletteBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;
    }
.end annotation


# static fields
.field public static final MAXLEVEL:I = 0x8


# instance fields
.field public currLevel:I

.field public currSize:I

.field public maxNodes:I

.field public numNodes:I

.field public palette:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

.field public reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

.field public requiredSize:I

.field public root:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

.field public src:Lorg/apache/poi/java/awt/image/RenderedImage;

.field public srcColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field public srcRaster:Lorg/apache/poi/java/awt/image/Raster;

.field public transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

.field public transparency:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/RenderedImage;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->src:Lorg/apache/poi/java/awt/image/RenderedImage;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->srcColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getData()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->srcRaster:Lorg/apache/poi/java/awt/image/Raster;

    iget-object p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->srcColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transparency:I

    iput p2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->requiredSize:I

    return-void
.end method

.method public static canCreatePalette(Lorg/apache/poi/java/awt/image/RenderedImage;)Z
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->canCreatePalette(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static canCreatePalette(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createIndexColorModel(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/java/awt/image/IndexColorModel;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/common/PaletteBuilder;

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->buildPalette()V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getIndexColorModel()Lorg/apache/poi/java/awt/image/IndexColorModel;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/java/awt/image/RenderedImage;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/common/PaletteBuilder;

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->buildPalette()V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getIndexedImage()Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object p0

    return-object p0
.end method

.method private getSrcColor(II)Lorg/apache/poi/java/awt/Color;
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->srcColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->srcRaster:Lorg/apache/poi/java/awt/image/Raster;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result p1

    new-instance p2, Lorg/apache/poi/java/awt/Color;

    iget v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transparency:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p2, p1, v1}, Lorg/apache/poi/java/awt/Color;-><init>(IZ)V

    return-object p2
.end method


# virtual methods
.method public buildPalette()V
    .locals 9

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iput-object v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->numNodes:I

    iput v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->maxNodes:I

    iput-object v4, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->root:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iput v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currLevel:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->src:Lorg/apache/poi/java/awt/image/RenderedImage;

    invoke-interface {v1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->src:Lorg/apache/poi/java/awt/image/RenderedImage;

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getHeight()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_5

    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_4

    sub-int v5, v1, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    sub-int v7, v2, v3

    sub-int/2addr v7, v6

    invoke-direct {p0, v5, v7}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getSrcColor(II)Lorg/apache/poi/java/awt/Color;

    move-result-object v5

    iget v7, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transparency:I

    if-eq v7, v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v7

    const/16 v8, 0xff

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    if-nez v7, :cond_1

    iget v7, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->requiredSize:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->requiredSize:I

    new-instance v7, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    invoke-direct {v7, p0}, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;-><init>(Lcom/sun/imageio/plugins/common/PaletteBuilder;)V

    iput-object v7, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iput-boolean v6, v7, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    :cond_1
    iget-object v6, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    invoke-virtual {p0, v6, v5, v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->insertNode(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;I)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->root:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    invoke-virtual {p0, v6, v5, v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->insertNode(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;I)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->root:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    :goto_3
    iget v5, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    iget v6, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->requiredSize:I

    if-le v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceTree()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public findColorIndex(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;)I
    .locals 2

    iget v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transparency:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->paletteIndex:I

    return p1

    :cond_1
    iget v0, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->level:I

    invoke-virtual {p0, p2, v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getBranchIndex(Lorg/apache/poi/java/awt/Color;I)I

    move-result v0

    iget-object p1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->findColorIndex(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;)I

    move-result p1

    return p1
.end method

.method public findPaletteEntry(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;I[B[B[B)I
    .locals 7

    iget-boolean v0, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->red:J

    iget v2, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    int-to-long v3, v2

    div-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    iget-wide v0, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->green:J

    int-to-long v3, v2

    div-long/2addr v0, v3

    long-to-int p3, v0

    int-to-byte p3, p3

    aput-byte p3, p4, p2

    iget-wide p3, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->blue:J

    int-to-long v0, v2

    div-long/2addr p3, v0

    long-to-int p3, p3

    int-to-byte p3, p3

    aput-byte p3, p5, p2

    iput p2, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->paletteIndex:I

    iget-object p3, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->palette:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aput-object p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v3, p2

    :goto_0
    const/16 p2, 0x8

    if-ge v0, p2, :cond_2

    iget-object p2, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    aget-object v2, p2, v0

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->findPaletteEntry(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;I[B[B[B)I

    move-result p2

    move v3, p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_1
    return p2
.end method

.method public freeTree(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->freeTree(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->numNodes:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->numNodes:I

    return-object v0
.end method

.method public getBranchIndex(Lorg/apache/poi/java/awt/Color;I)I
    .locals 2

    const/16 v0, 0x8

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getRed()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shr-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getGreen()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shr-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getBlue()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shr-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p2, p2, 0x2

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid octree node depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIndexColorModel()Lorg/apache/poi/java/awt/image/IndexColorModel;
    .locals 13

    iget v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move v4, v0

    new-array v0, v4, [B

    new-array v11, v4, [B

    new-array v12, v4, [B

    const/4 v2, 0x0

    new-array v3, v4, [Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iput-object v3, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->palette:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    iget-object v6, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->root:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    if-eqz v6, :cond_2

    move-object v5, p0

    move-object v8, v0

    move-object v9, v11

    move-object v10, v12

    invoke-virtual/range {v5 .. v10}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->findPaletteEntry(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;I[B[B[B)I

    :cond_2
    iget-object v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->transColor:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/16 v3, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    move-object v5, v0

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[BI)V

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/16 v6, 0x8

    iget v7, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    move-object v5, v1

    move-object v8, v0

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    :goto_1
    return-object v1
.end method

.method public getIndexedImage()Lorg/apache/poi/java/awt/image/RenderedImage;
    .locals 7

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getIndexColorModel()Lorg/apache/poi/java/awt/image/IndexColorModel;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->src:Lorg/apache/poi/java/awt/image/RenderedImage;

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->src:Lorg/apache/poi/java/awt/image/RenderedImage;

    invoke-interface {v3}, Lorg/apache/poi/java/awt/image/RenderedImage;->getHeight()I

    move-result v3

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(IIILorg/apache/poi/java/awt/image/IndexColorModel;)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getSrcColor(II)Lorg/apache/poi/java/awt/Color;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->root:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    invoke-virtual {p0, v6, v5}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->findColorIndex(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;)I

    move-result v5

    invoke-virtual {v0, v4, v3, v2, v5}, Lorg/apache/poi/java/awt/image/WritableRaster;->setSample(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public insertNode(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;I)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_2

    new-instance p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;-><init>(Lcom/sun/imageio/plugins/common/PaletteBuilder;)V

    iget v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->numNodes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->numNodes:I

    iget v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->maxNodes:I

    if-le v1, v2, :cond_0

    iput v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->maxNodes:I

    :cond_0
    iput p3, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->level:I

    const/16 v1, 0x8

    if-le p3, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    :cond_2
    iget v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    iget-wide v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->red:J

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Color;->getRed()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->red:J

    iget-wide v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->green:J

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Color;->getGreen()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->green:J

    iget-wide v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->blue:J

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Color;->getBlue()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->blue:J

    iget-boolean v1, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, p2, p3}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->getBranchIndex(Lorg/apache/poi/java/awt/Color;I)I

    move-result v1

    iget-object v2, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v3, v2, v1

    if-nez v3, :cond_3

    iget v3, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->childCount:I

    add-int/2addr v3, v0

    iput v3, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->childCount:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v4, v3, p3

    iput-object v4, p1, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aput-object p1, v3, p3

    :cond_3
    aget-object v3, v2, v1

    add-int/2addr p3, v0

    invoke-virtual {p0, v3, p2, p3}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->insertNode(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;Lorg/apache/poi/java/awt/Color;I)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move-result-object p2

    aput-object p2, v2, v1

    :cond_4
    return-object p1
.end method

.method public reduceTree()V
    .locals 7

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget-object v2, v2, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget v3, v2, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    move v4, v3

    move-object v3, v2

    :goto_1
    iget-object v5, v2, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    if-eqz v5, :cond_3

    iget v6, v5, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    if-le v4, v6, :cond_2

    iget v3, v2, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->colorCount:I

    move v4, v3

    move-object v3, v2

    :cond_2
    move-object v2, v5

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->reduceList:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v4, v2, v0

    if-ne v3, v4, :cond_4

    iget-object v4, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aput-object v4, v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iget-object v2, v0, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    iput-object v2, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->nextReducible:Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move-object v3, v0

    :goto_2
    iget-boolean v0, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3}, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->getLeafChildCount()I

    move-result v0

    iput-boolean v1, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->isLeaf:Z

    iget v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sun/imageio/plugins/common/PaletteBuilder;->currSize:I

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_6

    iget-object v2, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->children:[Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->freeTree(Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;)Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iput v0, v3, Lcom/sun/imageio/plugins/common/PaletteBuilder$ColorNode;->childCount:I

    return-void
.end method
