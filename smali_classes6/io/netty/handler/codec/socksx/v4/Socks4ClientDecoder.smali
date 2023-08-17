.class public Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->START:Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->setSingleDecode(Z)V

    return-void
.end method

.method private fail(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lio/netty/handler/codec/DecoderException;

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandResponse;

    sget-object v1, Lio/netty/handler/codec/socksx/v4/Socks4CommandStatus;->REJECTED_OR_FAILED:Lio/netty/handler/codec/socksx/v4/Socks4CommandStatus;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandResponse;-><init>(Lio/netty/handler/codec/socksx/v4/Socks4CommandStatus;)V

    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->FAILURE:Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 3
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

    :try_start_0
    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ClientDecoder$State:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    invoke-static {p1}, Lio/netty/handler/codec/socksx/v4/Socks4CommandStatus;->valueOf(B)Lio/netty/handler/codec/socksx/v4/Socks4CommandStatus;

    move-result-object p1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v1

    invoke-static {v1}, Lio/netty/util/NetUtil;->intToIpAddress(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandResponse;

    invoke-direct {v2, p1, v1, v0}, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandResponse;-><init>(Lio/netty/handler/codec/socksx/v4/Socks4CommandStatus;Ljava/lang/String;I)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->SUCCESS:Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p2, Lio/netty/handler/codec/DecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported reply version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p3, p1}, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder;->fail(Ljava/util/List;Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method
