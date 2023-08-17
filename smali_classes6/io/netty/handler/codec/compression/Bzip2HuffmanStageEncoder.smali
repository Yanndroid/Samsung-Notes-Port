.class final Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HUFFMAN_HIGH_SYMBOL_COST:I = 0xf


# instance fields
.field private final huffmanCodeLengths:[[I

.field private final huffmanMergedCodeSymbols:[[I

.field private final mtfAlphabetSize:I

.field private final mtfBlock:[C

.field private final mtfLength:I

.field private final mtfSymbolFrequencies:[I

.field private final selectors:[B

.field private final writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/compression/Bzip2BitWriter;[CII[I)V
    .locals 3

    const-class v0, I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    iput-object p2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfBlock:[C

    iput p3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    iput p4, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    iput-object p5, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfSymbolFrequencies:[I

    invoke-static {p3}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectTableCount(I)I

    move-result p1

    const/4 p2, 0x2

    new-array p5, p2, [I

    const/4 v1, 0x1

    aput p4, p5, v1

    const/4 v2, 0x0

    aput p1, p5, v2

    invoke-static {v0, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [[I

    iput-object p5, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    new-array p2, p2, [I

    aput p4, p2, v1

    aput p1, p2, v2

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanMergedCodeSymbols:[[I

    add-int/lit8 p3, p3, 0x32

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x32

    new-array p1, p3, [B

    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    return-void
.end method

.method private assignHuffmanCodeSymbols()V
    .locals 12

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanMergedCodeSymbols:[[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    const/16 v7, 0x20

    move v8, v4

    move v9, v8

    :goto_1
    if-ge v8, v2, :cond_2

    aget v10, v6, v8

    if-le v10, v9, :cond_0

    move v9, v10

    :cond_0
    if-ge v10, v7, :cond_1

    move v7, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_2
    if-gt v7, v9, :cond_5

    move v8, v4

    :goto_3
    if-ge v8, v2, :cond_4

    aget-object v10, v1, v5

    aget v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    if-ne v10, v7, :cond_3

    aget-object v10, v0, v5

    shl-int/lit8 v11, v7, 0x18

    or-int/2addr v11, v6

    aput v11, v10, v8

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static generateHuffmanCodeLengths(I[I[I)V
    .locals 5

    new-array v0, p0, [I

    new-array v1, p0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    aget v4, p1, v3

    shl-int/lit8 v4, v4, 0x9

    or-int/2addr v4, v3

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    move p1, v2

    :goto_1
    if-ge p1, p0, :cond_1

    aget v3, v0, p1

    ushr-int/lit8 v3, v3, 0x9

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const/16 p1, 0x14

    invoke-static {v1, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanAllocator;->allocateHuffmanCodeLengths([II)V

    :goto_2
    if-ge v2, p0, :cond_2

    aget p1, v0, v2

    and-int/lit16 p1, p1, 0x1ff

    aget v3, v1, v2

    aput v3, p2, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private generateHuffmanOptimisationSeeds()V
    .locals 13

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfSymbolFrequencies:[I

    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    array-length v3, v0

    iget v4, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_5

    sub-int v8, v3, v7

    div-int v9, v4, v8

    add-int/lit8 v10, v5, 0x1

    move v11, v6

    :goto_1
    if-ge v11, v9, :cond_0

    add-int/lit8 v12, v2, -0x1

    if-ge v5, v12, :cond_0

    add-int/lit8 v5, v5, 0x1

    aget v12, v1, v5

    add-int/2addr v11, v12

    goto :goto_1

    :cond_0
    if-le v5, v10, :cond_1

    if-eqz v7, :cond_1

    add-int/lit8 v9, v3, -0x1

    if-eq v7, v9, :cond_1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    add-int/lit8 v8, v5, -0x1

    aget v5, v1, v5

    sub-int/2addr v11, v5

    move v5, v8

    :cond_1
    aget-object v8, v0, v7

    move v9, v6

    :goto_2
    if-ge v9, v2, :cond_4

    if-lt v9, v10, :cond_2

    if-le v9, v5, :cond_3

    :cond_2
    const/16 v12, 0xf

    aput v12, v8, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v4, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private optimiseSelectorsAndHuffmanTables(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfBlock:[C

    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    array-length v6, v3

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v9, 0x0

    aput v6, v7, v9

    const-class v10, I

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v10, v4, :cond_6

    add-int/lit8 v12, v10, 0x32

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v8

    new-array v13, v6, [I

    move v14, v10

    :goto_1
    if-gt v14, v12, :cond_1

    aget-char v15, v1, v14

    move v8, v9

    :goto_2
    if-ge v8, v6, :cond_0

    aget v16, v13, v8

    aget-object v17, v3, v8

    aget v17, v17, v15

    add-int v16, v16, v17

    aput v16, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    aget v8, v13, v9

    move v15, v9

    const/4 v14, 0x1

    :goto_3
    if-ge v14, v6, :cond_3

    aget v9, v13, v14

    if-ge v9, v8, :cond_2

    move v8, v9

    move v15, v14

    :cond_2
    add-int/lit8 v14, v14, 0x1

    int-to-byte v14, v14

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    aget-object v8, v7, v15

    :goto_4
    if-gt v10, v12, :cond_4

    aget-char v9, v1, v10

    aget v13, v8, v9

    const/4 v14, 0x1

    add-int/2addr v13, v14

    aput v13, v8, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x1

    if-eqz p1, :cond_5

    add-int/lit8 v8, v11, 0x1

    aput-byte v15, v2, v11

    move v11, v8

    :cond_5
    add-int/lit8 v10, v12, 0x1

    move v8, v14

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_7

    aget-object v1, v7, v9

    aget-object v2, v3, v9

    invoke-static {v5, v1, v2}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->generateHuffmanCodeLengths(I[I[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method private static selectTableCount(I)I
    .locals 1

    const/16 v0, 0x960

    if-lt p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x4b0

    if-lt p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0x258

    if-lt p0, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method private writeBlockData(Lio/netty/buffer/ByteBuf;)V
    .locals 12

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanMergedCodeSymbols:[[I

    iget-object v2, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    iget v3, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfLength:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    add-int/lit8 v6, v4, 0x32

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v2, v5

    aget-object v5, v1, v5

    :goto_1
    if-gt v4, v6, :cond_0

    iget-object v8, p0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfBlock:[C

    add-int/lit8 v9, v4, 0x1

    aget-char v4, v8, v4

    aget v4, v5, v4

    ushr-int/lit8 v8, v4, 0x18

    int-to-long v10, v4

    invoke-virtual {v0, p1, v8, v10, v11}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    move v4, v9

    goto :goto_1

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeSelectorsAndHuffmanTables(Lio/netty/buffer/ByteBuf;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writer:Lio/netty/handler/codec/compression/Bzip2BitWriter;

    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->selectors:[B

    array-length v4, v3

    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->huffmanCodeLengths:[[I

    array-length v6, v5

    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->mtfAlphabetSize:I

    int-to-long v8, v6

    const/4 v6, 0x3

    invoke-virtual {v2, v1, v6, v8, v9}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    int-to-long v8, v4

    const/16 v4, 0xf

    invoke-virtual {v2, v1, v4, v8, v9}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    new-instance v4, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    invoke-direct {v4}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;-><init>()V

    array-length v8, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_0

    aget-byte v11, v3, v10

    invoke-virtual {v4, v11}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->valueToFront(B)I

    move-result v11

    invoke-virtual {v2, v1, v11}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeUnary(Lio/netty/buffer/ByteBuf;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v5

    move v4, v9

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v8, v5, v4

    aget v10, v8, v9

    const/4 v11, 0x5

    int-to-long v12, v10

    invoke-virtual {v2, v1, v11, v12, v13}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    move v11, v9

    :goto_2
    if-ge v11, v7, :cond_3

    aget v12, v8, v11

    const/4 v13, 0x2

    if-ge v10, v12, :cond_1

    move v14, v13

    goto :goto_3

    :cond_1
    move v14, v6

    :goto_3
    sub-int v10, v12, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    :goto_4
    add-int/lit8 v15, v10, -0x1

    if-lez v10, :cond_2

    move v10, v7

    int-to-long v6, v14

    invoke-virtual {v2, v1, v13, v6, v7}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    move v7, v10

    move v10, v15

    const/4 v6, 0x3

    goto :goto_4

    :cond_2
    move v10, v7

    invoke-virtual {v2, v1, v9}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    add-int/lit8 v11, v11, 0x1

    move v10, v12

    const/4 v6, 0x3

    goto :goto_2

    :cond_3
    move v10, v7

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x3

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->generateHuffmanOptimisationSeeds()V

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->optimiseSelectorsAndHuffmanTables(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->assignHuffmanCodeSymbols()V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writeSelectorsAndHuffmanTables(Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageEncoder;->writeBlockData(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
