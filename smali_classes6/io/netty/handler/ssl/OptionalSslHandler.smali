.class public Lio/netty/handler/ssl/OptionalSslHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# instance fields
.field private final sslContext:Lio/netty/handler/ssl/SslContext;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/SslContext;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const-string v0, "sslContext"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/ssl/SslContext;

    iput-object p1, p0, Lio/netty/handler/ssl/OptionalSslHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    return-void
.end method

.method private handleNonSsl(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OptionalSslHandler;->newNonSslHandler(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/OptionalSslHandler;->newNonSslHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1, v0}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :goto_0
    return-void
.end method

.method private handleSsl(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OptionalSslHandler;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-virtual {p0, p1, v1}, Lio/netty/handler/ssl/OptionalSslHandler;->newSslHandler(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/SslContext;)Lio/netty/handler/ssl/SslHandler;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OptionalSslHandler;->newSslHandlerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1, v0}, Lio/netty/channel/ChannelPipeline;->replace(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    :cond_0
    throw p1
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
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

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    const/4 v0, 0x5

    if-ge p3, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lio/netty/handler/ssl/SslHandler;->isEncrypted(Lio/netty/buffer/ByteBuf;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OptionalSslHandler;->handleSsl(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OptionalSslHandler;->handleNonSsl(Lio/netty/channel/ChannelHandlerContext;)V

    :goto_0
    return-void
.end method

.method public newNonSslHandler(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/channel/ChannelHandler;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public newNonSslHandlerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public newSslHandler(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/ssl/SslContext;)Lio/netty/handler/ssl/SslHandler;
    .locals 0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/netty/handler/ssl/SslContext;->newHandler(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/ssl/SslHandler;

    move-result-object p1

    return-object p1
.end method

.method public newSslHandlerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
