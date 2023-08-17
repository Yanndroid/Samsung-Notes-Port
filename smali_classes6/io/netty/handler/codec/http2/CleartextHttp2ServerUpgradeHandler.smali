.class public final Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;


# instance fields
.field private final http2ServerHandler:Lio/netty/channel/ChannelHandler;

.field private final httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

.field private final httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/netty/handler/codec/http2/Http2CodecUtil;->connectionPrefaceBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerUpgradeHandler;Lio/netty/channel/ChannelHandler;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    const-string v0, "httpServerCodec"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpServerCodec;

    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    const-string p1, "httpServerUpgradeHandler"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    const-string p1, "http2ServerHandler"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->http2ServerHandler:Lio/netty/channel/ChannelHandler;

    return-void
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

    sget-object p3, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-static {p3, v2, p2, v3, v1}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    iget-object p3, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-interface {p2, p3}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    iget-object p3, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    invoke-interface {p2, p3}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    iget-object v1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->http2ServerHandler:Lio/netty/channel/ChannelHandler;

    invoke-interface {p2, p3, v0, v1}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-static {}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;->access$000()Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_1
    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-interface {v0, p1, v3, v1}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
