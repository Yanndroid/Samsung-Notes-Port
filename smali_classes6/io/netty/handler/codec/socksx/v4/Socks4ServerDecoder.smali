.class public Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_FIELD_LENGTH:I = 0xff


# instance fields
.field private dstAddr:Ljava/lang/String;

.field private dstPort:I

.field private type:Lio/netty/handler/codec/socksx/v4/Socks4CommandType;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->START:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/ByteToMessageDecoder;->setSingleDecode(Z)V

    return-void
.end method

.method private fail(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 6
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
    new-instance v0, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandRequest;

    iget-object v1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->type:Lio/netty/handler/codec/socksx/v4/Socks4CommandType;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lio/netty/handler/codec/socksx/v4/Socks4CommandType;->CONNECT:Lio/netty/handler/codec/socksx/v4/Socks4CommandType;

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstAddr:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    iget v4, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstPort:I

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0xffff

    :goto_2
    iget-object v5, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->userId:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object v3, v5

    :cond_4
    invoke-direct {v0, v1, v2, v4, v3}, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandRequest;-><init>(Lio/netty/handler/codec/socksx/v4/Socks4CommandType;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->FAILURE:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    return-void
.end method

.method private static readString(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->bytesBefore(IB)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-object p0

    :cond_0
    new-instance p1, Lio/netty/handler/codec/DecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' longer than "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " chars"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
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
    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ServerDecoder$State:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    sget-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS4a:Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/socksx/SocksVersion;->byteValue()B

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    invoke-static {p1}, Lio/netty/handler/codec/socksx/v4/Socks4CommandType;->valueOf(B)Lio/netty/handler/codec/socksx/v4/Socks4CommandType;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->type:Lio/netty/handler/codec/socksx/v4/Socks4CommandType;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstPort:I

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result p1

    invoke-static {p1}, Lio/netty/util/NetUtil;->intToIpAddress(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstAddr:Ljava/lang/String;

    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->READ_USERID:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    :cond_2
    const-string p1, "userid"

    invoke-static {p1, p2}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->readString(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->userId:Ljava/lang/String;

    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->READ_DOMAIN:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    :cond_3
    const-string p1, "0.0.0.0"

    iget-object v0, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstAddr:Ljava/lang/String;

    const-string v0, "0.0.0."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "dstAddr"

    invoke-static {p1, p2}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->readString(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstAddr:Ljava/lang/String;

    :cond_4
    new-instance p1, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandRequest;

    iget-object v0, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->type:Lio/netty/handler/codec/socksx/v4/Socks4CommandType;

    iget-object v1, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstAddr:Ljava/lang/String;

    iget v2, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->dstPort:I

    iget-object v3, p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->userId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Lio/netty/handler/codec/socksx/v4/DefaultSocks4CommandRequest;-><init>(Lio/netty/handler/codec/socksx/v4/Socks4CommandType;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->SUCCESS:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-instance p2, Lio/netty/handler/codec/DecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported protocol version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p3, p1}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;->fail(Ljava/util/List;Ljava/lang/Exception;)V

    :cond_7
    :goto_0
    return-void
.end method
