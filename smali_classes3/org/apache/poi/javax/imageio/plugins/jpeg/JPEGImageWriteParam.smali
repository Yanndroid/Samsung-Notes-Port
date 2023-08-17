.class public Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;
.super Lorg/apache/poi/javax/imageio/ImageWriteParam;
.source "SourceFile"


# instance fields
.field private ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field private compressionNames:[Ljava/lang/String;

.field private optimizeHuffman:Z

.field private qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

.field private qualityDescs:[Ljava/lang/String;

.field private qualityVals:[F


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->optimizeHuffman:Z

    const-string v0, "JPEG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->compressionNames:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qualityVals:[F

    const-string v1, "Low quality"

    const-string v2, "Medium quality"

    const-string v3, "Visually lossless"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qualityDescs:[Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive:Z

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->progressiveMode:I

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteCompressed:Z

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 p1, 0x3f400000    # 0.75f

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public areTablesSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getACHuffmanTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompressionQualityDescriptions()[Ljava/lang/String;
    .locals 2

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
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qualityDescs:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionQualityValues()[F
    .locals 2

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
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qualityVals:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDCHuffmanTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOptimizeHuffmanTables()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->optimizeHuffman:Z

    return v0
.end method

.method public getQTables()[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isCompressionLossless()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodeTables([Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    array-length v0, p2

    if-gt v0, v1, :cond_0

    array-length v0, p3

    if-gt v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {p2}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {p3}, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid JPEG table arrays"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOptimizeHuffmanTables(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->optimizeHuffman:Z

    return-void
.end method

.method public unsetCompression()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsetEncodeTables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->qTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->DCHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGImageWriteParam;->ACHuffmanTables:[Lorg/apache/poi/javax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void
.end method
