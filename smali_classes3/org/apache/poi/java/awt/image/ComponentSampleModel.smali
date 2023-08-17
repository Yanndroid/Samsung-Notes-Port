.class public Lorg/apache/poi/java/awt/image/ComponentSampleModel;
.super Lorg/apache/poi/java/awt/image/SampleModel;
.source "SourceFile"


# instance fields
.field public bandOffsets:[I

.field public bankIndices:[I

.field public numBands:I

.field public numBanks:I

.field public pixelStride:I

.field public scanlineStride:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->loadLibraries()V

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 1

    array-length v0, p6

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/image/SampleModel;-><init>(IIII)V

    const/4 p2, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    iput p2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    iput p1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iput p4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    iput p5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length p3, p3

    iput p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ltz p4, :cond_4

    if-ltz p5, :cond_3

    if-lt p3, p2, :cond_2

    if-ltz p1, :cond_1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_1

    new-array p1, p3, [I

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->verify()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported dataType."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must have at least one band."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scanline stride must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel stride must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IIIII[I[I)V
    .locals 1

    array-length v0, p7

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/image/SampleModel;-><init>(IIII)V

    const/4 p2, 0x1

    iput p2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    iput p2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    iput p1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iput p4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    iput p5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    if-ltz p4, :cond_7

    if-ltz p5, :cond_6

    if-ltz p1, :cond_5

    const/4 p4, 0x5

    if-gt p1, p4, :cond_5

    const/4 p1, 0x0

    aget p1, p3, p1

    const-string p3, ")"

    if-ltz p1, :cond_4

    move p4, p2

    :goto_0
    iget-object p5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length p6, p5

    if-ge p4, p6, :cond_2

    aget p6, p5, p4

    if-le p6, p1, :cond_0

    aget p1, p5, p4

    goto :goto_1

    :cond_0
    aget p5, p5, p4

    if-ltz p5, :cond_1

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Index of bank "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " is less than 0 ("

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length p2, p1

    iput p2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    array-length p1, p1

    array-length p2, p5

    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->verify()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of bandOffsets must equal length of bankIndices."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Index of bank 0 is less than 0 ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported dataType."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scanline stride must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel stride must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBufferSize()I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_5

    const v2, 0x7ffffffe

    if-gt v0, v2, :cond_5

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    const-string v3, "Invalid pixel stride"

    if-ltz v2, :cond_4

    iget v4, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    const v5, 0x7fffffff

    div-int v6, v5, v4

    if-gt v2, v6, :cond_4

    iget v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    if-ltz v6, :cond_3

    iget v7, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    div-int v8, v5, v7

    if-gt v6, v8, :cond_3

    add-int/2addr v0, v1

    sub-int/2addr v4, v1

    mul-int/2addr v2, v4

    sub-int v4, v5, v0

    if-gt v2, v4, :cond_2

    add-int/2addr v0, v2

    sub-int/2addr v7, v1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v0

    if-gt v6, v5, :cond_1

    add-int/2addr v0, v6

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scan stride"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scanline stride"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid band offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBufferSize()I

    return-void
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v0, v0, v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget v5, v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v5, v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    array-length v4, v5

    iget v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v5, v6, :cond_4

    if-le v5, v0, :cond_3

    if-le v6, v0, :cond_2

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v5, v5

    new-array v5, v5, [I

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v7, v7, v6

    sub-int/2addr v7, v2

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v0, 0x1

    mul-int v0, v6, p2

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v2, v6, p2

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v0

    mul-int v2, v4, v6

    mul-int v5, v2, p2

    goto :goto_2

    :cond_3
    mul-int v5, v6, p2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v2, v5, p1

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_5

    :cond_4
    if-le v5, v0, :cond_6

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v5, v5

    new-array v5, v5, [I

    move v6, v1

    :goto_3
    if-ge v6, v4, :cond_5

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v7, v7, v6

    sub-int/2addr v7, v2

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v3

    mul-int v6, v0, p1

    :goto_4
    move-object v7, v5

    move v5, v0

    goto :goto_5

    :cond_6
    if-le v6, v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v2, v5, p1

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v0

    mul-int v2, v4, v5

    mul-int v6, v2, p1

    goto :goto_2

    :cond_7
    mul-int v6, v5, p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v2, v6, p2

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v0

    goto :goto_2

    :goto_5
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    if-gez v0, :cond_8

    mul-int v0, v6, p2

    add-int/2addr v0, v1

    mul-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    if-gez v2, :cond_9

    mul-int v2, v5, p1

    add-int/2addr v0, v2

    mul-int/lit8 v5, v5, -0x1

    :cond_9
    :goto_7
    if-ge v1, v4, :cond_a

    aget v2, v7, v1

    add-int/2addr v2, v0

    aput v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    new-instance v8, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget-object v9, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I[I)V

    return-object v8
.end method

.method public createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBufferSize()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferDouble;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferDouble;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferFloat;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferFloat;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferInt;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferShort;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferShort;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(II)V

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(II)V

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 9

    array-length v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v1, v1

    if-gt v0, v1, :cond_1

    array-length v0, p1

    new-array v7, v0, [I

    array-length v0, p1

    new-array v8, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v7, v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    iget v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I[I)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bands"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    iget-object v2, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    iget-object v2, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    iget p1, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getBandOffsets()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final getBankIndices()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_b

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getNumDataElements()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v2

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v1, [D

    goto :goto_0

    :cond_1
    check-cast p3, [D

    :goto_0
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemDouble(II)D

    move-result-wide v2

    aput-wide v2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    new-array p3, v1, [F

    goto :goto_1

    :cond_3
    check-cast p3, [F

    :goto_1
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemFloat(II)F

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    new-array p3, v1, [I

    goto :goto_2

    :cond_5
    check-cast p3, [I

    :goto_2
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    new-array p3, v1, [S

    goto :goto_3

    :cond_7
    check-cast p3, [S

    :goto_3
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    if-nez p3, :cond_9

    new-array p3, v1, [B

    goto :goto_4

    :cond_9
    check-cast p3, [B

    :goto_4
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-object p3

    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getNumDataElements()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v0

    return v0
.end method

.method public getOffset(II)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    add-int/2addr p2, p1

    return p2
.end method

.method public getOffset(III)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    return p2
.end method

.method public getPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    new-array p3, p3, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    invoke-virtual {p4, v0, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPixelStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    return v0
.end method

.method public getPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 8

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_4

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_4

    if-gt p3, v2, :cond_4

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    if-ltz p2, :cond_4

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_4

    if-gt p2, v0, :cond_4

    if-ltz v1, :cond_4

    if-gt v1, v0, :cond_4

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    mul-int p5, p3, p4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    mul-int/2addr p5, v0

    new-array p5, p5, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_3

    move v2, p1

    move v3, p2

    :goto_2
    if-ge v2, p3, :cond_2

    move v4, p1

    :goto_3
    iget v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v6, v6, v4

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    invoke-virtual {p6, v6, v7}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v6

    aput v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_3

    :cond_1
    iget v4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p5

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSample(IIILorg/apache/poi/java/awt/image/DataBuffer;)I
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p4, v0, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleDouble(IIILorg/apache/poi/java/awt/image/DataBuffer;)D
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p4, v0, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemDouble(II)D

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleFloat(IIILorg/apache/poi/java/awt/image/DataBuffer;)F
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p4, v0, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemFloat(II)F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSampleSize(I)I
    .locals 0

    iget p1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result p1

    return p1
.end method

.method public final getSampleSize()[I
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getSampleSize(I)I

    move-result v2

    :goto_0
    iget v3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge v1, v3, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSamples(IIIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 6

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_3

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_3

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int p6, p3, p4

    new-array p6, p6, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_2

    move v2, p1

    move v3, p2

    :goto_2
    if-ge v2, p3, :cond_1

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v5, v5, p5

    invoke-virtual {p7, v5, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v5

    aput v5, p6, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p6

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getScanlineStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    xor-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    xor-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public orderBands([II)[I
    .locals 9

    array-length v0, p1

    new-array v1, v0, [I

    array-length v2, p1

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    aput v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v2, :cond_3

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    move v6, v4

    :goto_2
    if-ge v5, v2, :cond_2

    aget v7, v1, v6

    aget v7, p1, v7

    aget v8, v1, v5

    aget v8, p1, v8

    if-le v7, v8, :cond_1

    move v6, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    aget v5, v1, v6

    mul-int v7, v4, p2

    aput v7, v3, v5

    aget v4, v1, v4

    aput v4, v1, v6

    move v4, v0

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public setDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 5

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getNumDataElements()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v2

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast p3, [D

    :goto_0
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-wide v3, p3, p1

    invoke-virtual {p4, v0, v2, v3, v4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemDouble(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    check-cast p3, [F

    :goto_1
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget v3, p3, p1

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemFloat(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    check-cast p3, [I

    :goto_2
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget v3, p3, p1

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    check-cast p3, [S

    :goto_3
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-short v3, p3, p1

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    check-cast p3, [B

    :goto_4
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-byte v3, p3, p1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 3

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget v2, p3, p1

    invoke-virtual {p4, v0, v1, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 8

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_3

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_3

    if-gt p3, v2, :cond_3

    if-ltz v0, :cond_3

    if-gt v0, v2, :cond_3

    if-ltz p2, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_3

    if-gt p4, v0, :cond_3

    if-ltz v1, :cond_3

    if-gt v1, v0, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_2

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_1

    move v4, p1

    :goto_2
    iget v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v5, v5, v4

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v1, 0x1

    aget v1, p5, v1

    invoke-virtual {p6, v5, v6, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_2

    :cond_0
    iget v4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSample(IIIDLorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p6, v0, p2, p4, p5}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemDouble(IID)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSample(IIIFLorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p5, v0, p2, p4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemFloat(IIF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSample(IIIILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p5, v0, p2, p4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSamples(IIIII[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 6

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_1

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_0

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v4, v4, p5

    add-int/lit8 v5, v1, 0x1

    aget v1, p6, v1

    invoke-virtual {p7, v4, v3, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
