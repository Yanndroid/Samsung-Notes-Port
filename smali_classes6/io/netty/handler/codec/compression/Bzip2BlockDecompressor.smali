.class final Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final blockCRC:I

.field private final blockRandomised:Z

.field private final bwtBlock:[B

.field private bwtBlockLength:I

.field private final bwtByteCounts:[I

.field private bwtBytesDecoded:I

.field private bwtCurrentMergedPointer:I

.field private bwtMergedPointers:[I

.field private final bwtStartPointer:I

.field private final crc:Lio/netty/handler/codec/compression/Crc32;

.field public huffmanEndOfBlockSymbol:I

.field public huffmanInUse16:I

.field public final huffmanSymbolMap:[B

.field private mtfValue:I

.field private randomCount:I

.field private randomIndex:I

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field private repeatCount:I

.field private repeatIncrement:I

.field private rleAccumulator:I

.field private rleLastDecodedByte:I

.field private rleRepeat:I

.field private final symbolMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;


# direct methods
.method public constructor <init>(IIZILio/netty/handler/codec/compression/Bzip2BitReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/handler/codec/compression/Crc32;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Crc32;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    const/16 v0, 0x100

    new-array v1, v0, [B

    iput-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    new-array v0, v0, [I

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtByteCounts:[I

    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2Rand;->rNums(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    new-instance v0, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->symbolMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatIncrement:I

    new-array p1, p1, [B

    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    iput p2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockCRC:I

    iput-boolean p3, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockRandomised:Z

    iput p4, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtStartPointer:I

    iput-object p5, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    return-void
.end method

.method private decodeNextBWTByte()I
    .locals 3

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtCurrentMergedPointer:I

    and-int/lit16 v1, v0, 0xff

    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtMergedPointers:[I

    ushr-int/lit8 v0, v0, 0x8

    aget v0, v2, v0

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtCurrentMergedPointer:I

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockRandomised:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    if-nez v0, :cond_0

    xor-int/lit8 v1, v1, 0x1

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x200

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomIndex:I

    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2Rand;->rNums(I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->randomCount:I

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBytesDecoded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBytesDecoded:I

    return v1
.end method

.method private initialiseInverseBWT()V
    .locals 9

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtStartPointer:I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    new-array v3, v2, [I

    const/16 v4, 0x100

    new-array v4, v4, [I

    if-ltz v0, :cond_2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtByteCounts:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xff

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    :goto_0
    if-gt v2, v7, :cond_0

    aget v6, v4, v2

    add-int/lit8 v8, v2, -0x1

    aget v8, v4, v8

    add-int/2addr v6, v8

    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    if-ge v5, v2, :cond_1

    aget-byte v2, v1, v5

    and-int/2addr v2, v7

    aget v6, v4, v2

    add-int/lit8 v8, v6, 0x1

    aput v8, v4, v2

    shl-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v2

    aput v8, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtMergedPointers:[I

    aget v0, v3, v0

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtCurrentMergedPointer:I

    return-void

    :cond_2
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "start pointer invalid"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blockLength()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    return v0
.end method

.method public checkCRC()I
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32;->getCRC()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockCRC:I

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "block CRC error"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeHuffmanData(Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlock:[B

    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    array-length v4, v2

    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanEndOfBlockSymbol:I

    iget-object v6, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtByteCounts:[I

    iget-object v7, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->symbolMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    iget v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    iget v9, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatCount:I

    iget v10, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatIncrement:I

    iget v11, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->mtfValue:I

    :goto_0
    const/16 v12, 0x17

    invoke-virtual {v1, v12}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_0

    iput v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    iput v9, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatCount:I

    iput v10, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->repeatIncrement:I

    iput v11, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->mtfValue:I

    return v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->nextSymbol()I

    move-result v12

    if-nez v12, :cond_1

    add-int/2addr v9, v10

    shl-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    if-ne v12, v14, :cond_2

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    goto :goto_0

    :cond_2
    const-string v15, "block exceeds declared block size"

    if-lez v9, :cond_5

    add-int v10, v8, v9

    if-gt v10, v4, :cond_4

    aget-byte v10, v3, v11

    and-int/lit16 v11, v10, 0xff

    aget v16, v6, v11

    add-int v16, v16, v9

    aput v16, v6, v11

    :goto_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    add-int/lit8 v11, v8, 0x1

    aput-byte v10, v2, v8

    move v8, v11

    goto :goto_1

    :cond_3
    move v9, v13

    move v10, v14

    goto :goto_2

    :cond_4
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    invoke-direct {v1, v15}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    if-ne v12, v5, :cond_7

    const v1, 0xdbba0

    if-gt v8, v1, :cond_6

    iput v8, v0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->initialiseInverseBWT()V

    return v14

    :cond_6
    new-instance v2, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "block length exceeds max block length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-ge v8, v4, :cond_8

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->indexToFront(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, v3, v11

    and-int/lit16 v13, v12, 0xff

    aget v15, v6, v13

    add-int/2addr v15, v14

    aput v15, v6, v13

    add-int/lit8 v13, v8, 0x1

    aput-byte v12, v2, v8

    move v8, v13

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    invoke-direct {v1, v15}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 4

    :goto_0
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBytesDecoded:I

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->bwtBlockLength:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeNextBWTByte()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    if-eq v0, v2, :cond_1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/compression/Crc32;->updateCRC(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeNextBWTByte()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleAccumulator:I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->crc:Lio/netty/handler/codec/compression/Crc32;

    invoke-virtual {v1, v0, v2}, Lio/netty/handler/codec/compression/Crc32;->updateCRC(II)V

    goto :goto_0

    :cond_2
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleRepeat:I

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->rleLastDecodedByte:I

    return v0
.end method
