.class public Lio/netty/handler/codec/compression/LzfEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_BLOCK_TO_COMPRESS:I = 0x10


# instance fields
.field private final compressThreshold:I

.field private final encoder:Lcom/ning/compress/lzf/ChunkEncoder;

.field private final recycler:Lcom/ning/compress/BufferRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const v0, 0xffff

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/compression/LzfEncoder;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    const v0, 0xffff

    const/16 v1, 0x10

    if-lt p2, v1, :cond_2

    if-gt p2, v0, :cond_2

    if-lt p3, v1, :cond_1

    iput p3, p0, Lio/netty/handler/codec/compression/LzfEncoder;->compressThreshold:I

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/ning/compress/lzf/util/ChunkEncoderFactory;->safeNonAllocatingInstance(I)Lcom/ning/compress/lzf/ChunkEncoder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/ning/compress/lzf/util/ChunkEncoderFactory;->optimalNonAllocatingInstance(I)Lcom/ning/compress/lzf/ChunkEncoder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/compression/LzfEncoder;->encoder:Lcom/ning/compress/lzf/ChunkEncoder;

    invoke-static {}, Lcom/ning/compress/BufferRecycler;->instance()Lcom/ning/compress/BufferRecycler;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/LzfEncoder;->recycler:Lcom/ning/compress/BufferRecycler;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compressThreshold:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " expected >="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalLength: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encodeCompress([BII[BI)I
    .locals 6

    iget-object v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->encoder:Lcom/ning/compress/lzf/ChunkEncoder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/ning/compress/lzf/LZFEncoder;->appendEncoded(Lcom/ning/compress/lzf/ChunkEncoder;[BII[BI)I

    move-result p1

    sub-int/2addr p1, p5

    return p1
.end method

.method private static encodeNonCompress([BII[BI)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/compression/LzfEncoder;->lzfEncodeNonCompress([BII[BI)I

    move-result p0

    sub-int/2addr p0, p4

    return p0
.end method

.method private static lzfEncodeNonCompress([BII[BI)I
    .locals 3

    const v0, 0xffff

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/ning/compress/lzf/LZFChunk;->appendNonCompressed([BII[BI)I

    move-result p4

    sub-int/2addr p2, v1

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    return p4

    :cond_0
    add-int/2addr p1, v1

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/ning/compress/lzf/LZFChunk;->appendNonCompressed([BII[BI)I

    move-result p4

    add-int/2addr p1, v1

    sub-int/2addr p2, v1

    if-gtz p2, :cond_1

    return p4
.end method


# virtual methods
.method public encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 9

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/compression/LzfEncoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {v1, p1}, Lcom/ning/compress/BufferRecycler;->allocInputBuffer(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1, v6, p1}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    move-object v7, v1

    move v2, v6

    :goto_0
    invoke-static {p1}, Lcom/ning/compress/lzf/LZFEncoder;->estimateMaxWorkspaceSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    add-int/2addr v1, v3

    move-object v8, v0

    move v5, v1

    goto :goto_1

    :cond_1
    new-array v0, v0, [B

    move-object v8, v0

    move v5, v6

    :goto_1
    iget v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->compressThreshold:I

    if-lt p1, v0, :cond_2

    move-object v0, p0

    move-object v1, v7

    move v3, p1

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/LzfEncoder;->encodeCompress([BII[BI)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {v7, v2, p1, v8, v5}, Lio/netty/handler/codec/compression/LzfEncoder;->encodeNonCompress([BII[BI)I

    move-result v0

    :goto_2
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v8, v6, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    :goto_3
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lio/netty/handler/codec/compression/LzfEncoder;->recycler:Lcom/ning/compress/BufferRecycler;

    invoke-virtual {p1, v7}, Lcom/ning/compress/BufferRecycler;->releaseInputBuffer([B)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/LzfEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/compression/LzfEncoder;->encoder:Lcom/ning/compress/lzf/ChunkEncoder;

    invoke-virtual {v0}, Lcom/ning/compress/lzf/ChunkEncoder;->close()V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method
