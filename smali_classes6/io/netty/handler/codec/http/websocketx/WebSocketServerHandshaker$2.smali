.class Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

.field public final synthetic this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

.field public final synthetic val$channel:Lio/netty/channel/Channel;

.field public final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field public final synthetic val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;Lio/netty/channel/ChannelPromise;Lio/netty/channel/Channel;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$channel:Lio/netty/channel/Channel;

    iput-object p4, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private handleHandshakeRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;)V
    .locals 7

    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$channel:Lio/netty/channel/Channel;

    check-cast p2, Lio/netty/handler/codec/http/FullHttpRequest;

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {p1, v0, p2, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_1

    iget-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$channel:Lio/netty/channel/Channel;

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$responseHeaders:Lio/netty/handler/codec/http/HttpHeaders;

    iget-object v2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {p1, v0, p2, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1

    :cond_1
    instance-of p1, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz p1, :cond_2

    check-cast p2, Lio/netty/handler/codec/http/HttpRequest;

    new-instance p1, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    invoke-interface {p2}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/DecoderResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    invoke-interface {p2}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    :cond_2
    return-void
.end method

.method private releaseFullHttpRequest()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->fullHttpRequest:Lio/netty/handler/codec/http/FullHttpRequest;

    :cond_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->releaseFullHttpRequest()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->releaseFullHttpRequest()V

    throw p1
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lio/netty/handler/codec/http/HttpObject;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpObject;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->handleHandshakeRequest(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    throw p1

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$2;->releaseFullHttpRequest()V

    return-void
.end method
