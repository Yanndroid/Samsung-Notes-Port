.class public Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
    }
.end annotation


# static fields
.field private static final LENGTH_FIELD_SIZE:I = 0x4


# instance fields
.field private cumulation:Lio/netty/buffer/ByteBuf;

.field private headerSize:I

.field private length:I

.field private final maxHeaderSize:I

.field private name:Ljava/lang/String;

.field private numHeaders:I

.field private state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;-><init>()V

    const-string v0, "spdyVersion"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->maxHeaderSize:I

    sget-object p1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-void
.end method

.method private static readLengthField(Lio/netty/buffer/ByteBuf;)I
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return v0
.end method

.method private releaseBuffer()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 1

    const-string v0, "headerBlock"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "frame"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    invoke-interface {p1, p3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->releaseBuffer()V

    :cond_2
    :goto_0
    return-void
.end method

.method public decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 8

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$1;->$SwitchMap$io$netty$handler$codec$spdy$SpdyHeaderBlockRawDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/Error;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :goto_1
    :pswitch_1
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-nez v1, :cond_0

    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-nez v0, :cond_1

    :goto_2
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-ge v0, v3, :cond_2

    return-void

    :cond_2
    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    const/4 v4, 0x0

    aget-byte v5, v0, v4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_3
    iget v6, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-ge v4, v6, :cond_7

    :goto_4
    if-ge v4, v3, :cond_4

    aget-byte v6, v0, v4

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    if-ge v4, v3, :cond_6

    add-int/lit8 v6, v4, 0x1

    if-eq v6, v3, :cond_5

    aget-byte v6, v0, v6

    if-nez v6, :cond_6

    :catch_0
    :cond_5
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto :goto_5

    :cond_6
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v5

    invoke-direct {v6, v0, v5, v7, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v5

    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v4, 0x1

    move v4, v5

    goto :goto_3

    :cond_7
    :goto_5
    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    if-ne v0, v1, :cond_8

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-nez v0, :cond_1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_9

    return-void

    :cond_9
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->readLengthField(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-gez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    if-nez v0, :cond_c

    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    :cond_b
    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_c
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->maxHeaderSize:I

    if-gt v0, v1, :cond_e

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sub-int v4, v1, v0

    if-le v3, v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto :goto_7

    :cond_e
    :goto_6
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto :goto_9

    :pswitch_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-nez v1, :cond_0

    :cond_f
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    :goto_7
    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-ge v0, v2, :cond_10

    return-void

    :cond_10
    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/Headers;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_11

    return-void

    :cond_11
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->readLengthField(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-gtz v0, :cond_12

    goto/16 :goto_1

    :cond_12
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->maxHeaderSize:I

    if-gt v0, v1, :cond_14

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sub-int v3, v1, v0

    if-le v2, v3, :cond_13

    goto :goto_8

    :cond_13
    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto :goto_7

    :cond_14
    :goto_8
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    :goto_9
    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setTruncated()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_15

    return-void

    :cond_15
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->readLengthField(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-gez v0, :cond_16

    goto/16 :goto_1

    :cond_16
    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public end()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->releaseBuffer()V

    return-void
.end method

.method public endHeaderBlock(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->releaseBuffer()V

    const/4 p1, 0x0

    iput p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    sget-object p1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-void
.end method
