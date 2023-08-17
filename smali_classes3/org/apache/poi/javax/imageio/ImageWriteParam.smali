.class public Lorg/apache/poi/javax/imageio/ImageWriteParam;
.super Lorg/apache/poi/javax/imageio/IIOParam;
.source "SourceFile"


# static fields
.field private static final MAX_MODE:I = 0x3

.field public static final MODE_COPY_FROM_METADATA:I = 0x3

.field public static final MODE_DEFAULT:I = 0x1

.field public static final MODE_DISABLED:I = 0x0

.field public static final MODE_EXPLICIT:I = 0x2


# instance fields
.field public canOffsetTiles:Z

.field public canWriteCompressed:Z

.field public canWriteProgressive:Z

.field public canWriteTiles:Z

.field public compressionMode:I

.field public compressionQuality:F

.field public compressionType:Ljava/lang/String;

.field public compressionTypes:[Ljava/lang/String;

.field public locale:Ljava/util/Locale;

.field public preferredTileSizes:[Lorg/apache/poi/java/awt/Dimension;

.field public progressiveMode:I

.field public tileGridXOffset:I

.field public tileGridYOffset:I

.field public tileHeight:I

.field public tileWidth:I

.field public tilingMode:I

.field public tilingSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/IIOParam;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles:Z

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingMode:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->preferredTileSizes:[Lorg/apache/poi/java/awt/Dimension;

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileWidth:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileHeight:I

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canOffsetTiles:Z

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridXOffset:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridYOffset:I

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive:Z

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->progressiveMode:I

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed:Z

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionMode:I

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/IIOParam;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles:Z

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingMode:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->preferredTileSizes:[Lorg/apache/poi/java/awt/Dimension;

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileWidth:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileHeight:I

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canOffsetTiles:Z

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridXOffset:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridYOffset:I

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive:Z

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->progressiveMode:I

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed:Z

    iput v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionMode:I

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-void
.end method

.method private static clonePreferredTileSizes([Lorg/apache/poi/java/awt/Dimension;)[Lorg/apache/poi/java/awt/Dimension;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/poi/java/awt/Dimension;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lorg/apache/poi/java/awt/Dimension;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/apache/poi/java/awt/Dimension;-><init>(Lorg/apache/poi/java/awt/Dimension;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public canOffsetTiles()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canOffsetTiles:Z

    return v0
.end method

.method public canWriteCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed:Z

    return v0
.end method

.method public canWriteProgressive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive:Z

    return v0
.end method

.method public canWriteTiles()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles:Z

    return v0
.end method

.method public getBitRate(F)F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Quality out-of-bounds!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCompressionMode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionMode:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionQuality()F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No compression type set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionQualityDescriptions()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No compression type set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionQualityValues()[F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No compression type set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionTypes()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocalizedCompressionTypeName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No compression type set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreferredTileSizes()[Lorg/apache/poi/java/awt/Dimension;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->preferredTileSizes:[Lorg/apache/poi/java/awt/Dimension;

    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->clonePreferredTileSizes([Lorg/apache/poi/java/awt/Dimension;)[Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProgressiveMode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->progressiveMode:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Progressive output not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTileGridXOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridXOffset:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling parameters not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTileGridYOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridYOffset:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling parameters not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTileHeight()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileHeight:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling parameters not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTileWidth()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileWidth:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling parameters not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTilingMode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingMode:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCompressionLossless()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No compression type set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompressionMode(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->unsetCompression()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal value for mode!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressionQuality(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Quality out-of-bounds!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressionType(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown compression type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No settable compression types"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Compression not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProgressiveMode(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->progressiveMode:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MODE_EXPLICIT not supported for progressive output"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal value for mode!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Progressive output not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTiling(IIII)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canOffsetTiles()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Can\'t offset tiles!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->preferredTileSizes:[Lorg/apache/poi/java/awt/Dimension;

    if-eqz v2, :cond_8

    move v2, v0

    :goto_3
    iget-object v3, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->preferredTileSizes:[Lorg/apache/poi/java/awt/Dimension;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget-object v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v3, v5

    iget v5, v4, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-lt p1, v5, :cond_6

    iget v5, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-gt p1, v5, :cond_6

    iget v4, v4, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-lt p2, v4, :cond_6

    iget v3, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-le p2, v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal tile size!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileWidth:I

    iput p2, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileHeight:I

    iput p3, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridXOffset:I

    iput p4, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridYOffset:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tile dimensions are non-positive!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tiling not supported!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTilingMode(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->unsetTiling()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal value for mode!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tiling not supported!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsetCompression()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compression not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsetTiling()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteTiles()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tilingSet:Z

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileWidth:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileHeight:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridXOffset:I

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->tileGridYOffset:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tiling mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tiling not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
