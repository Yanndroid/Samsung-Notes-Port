.class public Lio/netty/handler/codec/compression/Bzip2Decoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2Decoder$State;
    }
.end annotation


# instance fields
.field private blockCRC:I

.field private blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

.field private blockSize:I

.field private currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

.field private huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field private streamCRC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BitReader;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    return-void
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->setByteBuf(Lio/netty/buffer/ByteBuf;)V

    :goto_0
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$1;->$SwitchMap$io$netty$handler$codec$compression$Bzip2Decoder$State:[I

    iget-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v9, 0x6

    const/16 v4, 0x18

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    const/4 v5, 0x4

    if-ge v3, v5, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v3

    const v5, 0x425a68

    if-ne v3, v5, :cond_24

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-lt v3, v12, :cond_23

    const/16 v5, 0x9

    if-gt v3, v5, :cond_23

    const v5, 0x186a0

    mul-int/2addr v3, v5

    iput v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    iput v11, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_2
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBytes(I)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2, v4}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v3

    invoke-virtual {v2, v4}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v5

    const v6, 0x177245

    if-ne v3, v6, :cond_4

    const v6, 0x385090

    if-ne v5, v6, :cond_4

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    move-result v3

    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    if-ne v3, v4, :cond_3

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    goto :goto_0

    :cond_3
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "stream CRC error"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const v6, 0x314159

    if-ne v3, v6, :cond_22

    const v3, 0x265359

    if-ne v5, v3, :cond_22

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    move-result v3

    iput v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_3
    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v6

    invoke-virtual {v2, v4}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v7

    new-instance v13, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    move-object v3, v13

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;-><init>(IIZILio/netty/handler/codec/compression/Bzip2BitReader;)V

    iput-object v13, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_MAP:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_4
    invoke-virtual {v2, v10}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    :cond_6
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    invoke-virtual {v2, v10}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v4

    iput v4, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_BITMAPS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_5
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    iget v4, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    iget-object v6, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    mul-int/lit8 v7, v5, 0x10

    const/4 v8, 0x3

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v7

    if-nez v7, :cond_7

    return-void

    :cond_7
    if-lez v5, :cond_a

    move v5, v11

    move v7, v5

    :goto_1
    if-ge v5, v10, :cond_b

    const v13, 0x8000

    ushr-int/2addr v13, v5

    and-int/2addr v13, v4

    if-eqz v13, :cond_9

    shl-int/lit8 v13, v5, 0x4

    move v14, v11

    :goto_2
    if-ge v14, v10, :cond_9

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v15

    if-eqz v15, :cond_8

    add-int/lit8 v15, v7, 0x1

    int-to-byte v10, v13

    aput-byte v10, v6, v7

    move v7, v15

    :cond_8
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v10, 0x10

    goto :goto_2

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x10

    goto :goto_1

    :cond_a
    move v7, v11

    :cond_b
    add-int/lit8 v4, v7, 0x1

    iput v4, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanEndOfBlockSymbol:I

    invoke-virtual {v2, v8}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_21

    if-gt v3, v9, :cond_21

    add-int/2addr v7, v4

    const/16 v4, 0x102

    if-gt v7, v4, :cond_20

    new-instance v4, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    invoke-direct {v4, v2, v3, v7}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;-><init>(Lio/netty/handler/codec/compression/Bzip2BitReader;II)V

    iput-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS_NUMBER:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_6
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v4

    if-nez v4, :cond_c

    return-void

    :cond_c
    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v3

    if-lt v3, v12, :cond_1f

    const/16 v4, 0x4652

    if-gt v3, v4, :cond_1f

    iget-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    new-array v3, v3, [B

    iput-object v3, v4, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_7
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    iget-object v4, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    array-length v5, v4

    iget-object v6, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    iget v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    :goto_3
    if-ge v7, v5, :cond_f

    invoke-virtual {v2, v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v8

    if-nez v8, :cond_d

    iput v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    return-void

    :cond_d
    move v8, v11

    :goto_4
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v6, v8}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->indexToFront(I)B

    move-result v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_f
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_LENGTH:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_8
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    iget v4, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->totalTables:I

    iget-object v5, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableCodeLengths:[[B

    iget v6, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->alphabetSize:I

    iget v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    iget-boolean v8, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    iget v9, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    const/4 v10, -0x1

    :goto_5
    if-ge v9, v4, :cond_19

    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    move-result v14

    if-nez v14, :cond_10

    move v13, v11

    :goto_6
    move v11, v12

    goto :goto_b

    :cond_10
    if-gez v7, :cond_11

    invoke-virtual {v2, v13}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    move-result v7

    :cond_11
    iget v13, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    :goto_7
    if-ge v13, v6, :cond_18

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_6

    :cond_12
    :goto_8
    if-nez v8, :cond_14

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_9

    :cond_13
    aget-object v14, v5, v9

    int-to-byte v15, v7

    aput-byte v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_14
    :goto_9
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v8

    if-nez v8, :cond_15

    move v8, v12

    move v11, v8

    goto :goto_b

    :cond_15
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    move-result v8

    if-eqz v8, :cond_16

    move v8, v10

    goto :goto_a

    :cond_16
    move v8, v12

    :goto_a
    add-int/2addr v7, v8

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    move-result v8

    if-nez v8, :cond_17

    move v8, v11

    goto :goto_6

    :cond_17
    move v8, v11

    goto :goto_8

    :cond_18
    iput v11, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    move v8, v11

    goto :goto_5

    :cond_19
    move v13, v11

    :goto_b
    if-eqz v11, :cond_1a

    iput v9, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    iput v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    iput v13, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    iput-boolean v8, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    return-void

    :cond_1a
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->createHuffmanDecodingTables()V

    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->DECODE_HUFFMAN_DATA:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    :pswitch_9
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    iget-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    invoke-virtual {v3, v5}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeHuffmanData(Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;)Z

    move-result v5

    if-nez v5, :cond_1b

    return-void

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    if-ne v5, v4, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->refill()V

    :cond_1c
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockLength()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    :goto_c
    :try_start_0
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->read()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_c

    :cond_1d
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    iput-object v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->checkCRC()I

    move-result v0

    iget v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    xor-int/2addr v0, v3

    iput v0, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lio/netty/util/ReferenceCounted;->release()Z

    :cond_1e
    throw v0

    :cond_1f
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "incorrect selectors number"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "incorrect alphabet size"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "incorrect huffman groups number"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "bad block header"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "block size is invalid"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "Unexpected stream identifier contents. Mismatched bzip2 protocol version?"

    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    sget-object v1, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
