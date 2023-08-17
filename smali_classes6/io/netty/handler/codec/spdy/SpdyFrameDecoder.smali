.class public Lio/netty/handler/codec/spdy/SpdyFrameDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    }
.end annotation


# instance fields
.field private final delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

.field private flags:B

.field private length:I

.field private final maxChunkSize:I

.field private numSettings:I

.field private final spdyVersion:I

.field private state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field private streamId:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;I)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "spdyVersion"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/spdy/SpdyVersion;

    invoke-virtual {p1}, Lio/netty/handler/codec/spdy/SpdyVersion;->getVersion()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    const-string p1, "delegate"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string p1, "maxChunkSize"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    sget-object p1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-void
.end method

.method private static getNextState(II)Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    if-eqz p1, :cond_0

    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->DISCARD_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_1
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_WINDOW_UPDATE_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_2
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADERS_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_3
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_GOAWAY_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_4
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_PING_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_5
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTINGS_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_6
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_RST_STREAM_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_7
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SYN_REPLY_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_8
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SYN_STREAM_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_9
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :cond_0
    sget-object p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static hasFlag(BB)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidFrameHeader(IIBI)Z
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    if-ne p3, v0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :pswitch_2
    if-lt p3, v1, :cond_1

    move v2, v3

    :cond_1
    return v2

    :pswitch_3
    if-ne p3, v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :pswitch_4
    if-ne p3, v1, :cond_3

    move v2, v3

    :cond_3
    return v2

    :pswitch_5
    if-lt p3, v1, :cond_4

    move v2, v3

    :cond_4
    return v2

    :pswitch_6
    if-nez p2, :cond_5

    if-ne p3, v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :pswitch_7
    if-lt p3, v1, :cond_6

    move v2, v3

    :cond_6
    return v2

    :pswitch_8
    const/16 p0, 0xa

    if-lt p3, p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    :pswitch_9
    if-eqz p0, :cond_8

    move v2, v3

    :cond_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBuf;)V
    .locals 12

    :goto_0
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$spdy$SpdyFrameDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/Error;

    const-string v0, "Shouldn\'t reach here."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v1, :cond_0

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    :goto_1
    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readHeaderBlockEnd()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readHeaderBlock(Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_4

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid WINDOW_UPDATE Frame"

    goto/16 :goto_4

    :cond_4
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v1, v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readWindowUpdateFrame(II)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-nez v1, :cond_6

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid HEADERS Frame"

    goto/16 :goto_4

    :cond_6
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v2, v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readHeadersFrame(IZ)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p1, v1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v2, v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readGoAwayFrame(II)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readPingFrame(I)V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    if-nez v0, :cond_9

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSettingsEnd()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lio/netty/buffer/ByteBuf;I)I

    move-result v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {p1, v6}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v6

    invoke-static {v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    sub-int/2addr v1, v3

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v1, v2, v5, v6, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSetting(IIZZ)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_b

    return-void

    :cond_b
    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-static {p1, v1}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_d

    shr-int/lit8 v1, v1, 0x3

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->numSettings:I

    if-eq v1, v2, :cond_c

    goto :goto_2

    :cond_c
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTING:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSettingsFrame(Z)V

    goto/16 :goto_0

    :cond_d
    :goto_2
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid SETTINGS Frame"

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_e

    return-void

    :cond_e
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-eqz v1, :cond_10

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v2, v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readRstStreamFrame(II)V

    goto/16 :goto_0

    :cond_10
    :goto_3
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid RST_STREAM Frame"

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-nez v1, :cond_12

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid SYN_REPLY Frame"

    goto :goto_4

    :cond_12
    sget-object v2, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface {v2, v1, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSynReplyFrame(IZ)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v5

    iput v5, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    add-int/lit8 v5, v0, 0x4

    invoke-static {p1, v5}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v8

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    int-to-byte v9, v0

    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v10

    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v11

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v7, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    if-nez v7, :cond_14

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid SYN_STREAM Frame"

    :goto_4
    invoke-interface {v0, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readFrameError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v6, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    invoke-interface/range {v6 .. v11}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readSynStreamFrame(IIBZZ)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_15

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    iget-byte v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v4, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v3

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readDataFrame(IZLio/netty/buffer/ByteBuf;)V

    goto/16 :goto_0

    :cond_15
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    iget v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v4, v0

    iput v4, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v4, :cond_17

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    :cond_17
    if-nez v4, :cond_18

    iget-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v0, v3}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->hasFlag(BB)Z

    move-result v0

    if-eqz v0, :cond_18

    move v2, v3

    :cond_18
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    invoke-interface {v0, v3, v2, v1}, Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;->readDataFrame(IZLio/netty/buffer/ByteBuf;)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_19

    return-void

    :cond_19
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v5, v0, 0x5

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1a

    goto :goto_5

    :cond_1a
    move v3, v2

    :goto_5
    if-eqz v3, :cond_1b

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lio/netty/buffer/ByteBuf;I)I

    move-result v3

    and-int/lit16 v3, v3, 0x7fff

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    move v2, v0

    goto :goto_6

    :cond_1b
    iget v3, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    invoke-static {p1, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    :goto_6
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    iput-byte v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {p1, v5}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    if-eq v3, v1, :cond_1c

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid SPDY Version"

    goto/16 :goto_4

    :cond_1c
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->streamId:I

    iget-byte v3, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {v1, v2, v3, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->isValidFrameHeader(IIBI)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->delegate:Lio/netty/handler/codec/spdy/SpdyFrameDecoderDelegate;

    const-string v1, "Invalid Frame Error"

    goto/16 :goto_4

    :cond_1d
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v2, v0}, Lio/netty/handler/codec/spdy/SpdyFrameDecoder;->getNextState(II)Lio/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
