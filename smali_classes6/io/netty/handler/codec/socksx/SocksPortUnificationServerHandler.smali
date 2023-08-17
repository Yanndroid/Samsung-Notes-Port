.class public Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final socks5encoder:Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;->DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;-><init>(Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const-string v0, "socks5encoder"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;

    iput-object p1, p0, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->socks5encoder:Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;

    return-void
.end method

.method private static logKnownVersion(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/socksx/SocksVersion;)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    const-string v1, "{} Protocol version: {}({})"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static logUnknownVersion(Lio/netty/channel/ChannelHandlerContext;B)V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "{} Unknown protocol version: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
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

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p3

    invoke-static {p3}, Lio/netty/handler/codec/socksx/SocksVersion;->valueOf(B)Lio/netty/handler/codec/socksx/SocksVersion;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler$1;->$SwitchMap$io$netty$handler$codec$socksx$SocksVersion:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {p1, p3}, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->logUnknownVersion(Lio/netty/channel/ChannelHandlerContext;B)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void

    :cond_1
    invoke-static {p1, v1}, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->logKnownVersion(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/socksx/SocksVersion;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->socks5encoder:Lio/netty/handler/codec/socksx/v5/Socks5ServerEncoder;

    invoke-interface {v0, p2, v4, p3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;

    invoke-direct {p2}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lio/netty/handler/codec/socksx/SocksPortUnificationServerHandler;->logKnownVersion(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/socksx/SocksVersion;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lio/netty/handler/codec/socksx/v4/Socks4ServerEncoder;->INSTANCE:Lio/netty/handler/codec/socksx/v4/Socks4ServerEncoder;

    invoke-interface {v0, p2, v4, p3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;

    invoke-direct {p2}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;-><init>()V

    :goto_0
    invoke-interface {v0, p1, v4, p2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
