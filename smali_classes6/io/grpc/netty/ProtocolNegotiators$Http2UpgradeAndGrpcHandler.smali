.class final Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Http2UpgradeAndGrpcHandler"
.end annotation


# instance fields
.field private final authority:Ljava/lang/String;

.field private final negotiationLogger:Lio/grpc/ChannelLogger;

.field private final next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

.field private pne:Lio/grpc/netty/ProtocolNegotiationEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/grpc/netty/GrpcHttp2ConnectionHandler;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->authority:Ljava/lang/String;

    const-string p1, "next"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    invoke-virtual {p2}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->getNegotiationLogger()Lio/grpc/ChannelLogger;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    return-void
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Http2Upgrade started"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    new-instance v0, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-direct {v0}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>()V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-instance v1, Lio/netty/handler/codec/http2/Http2ClientUpgradeCodec;

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http2/Http2ClientUpgradeCodec;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)V

    new-instance v2, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;

    const/16 v4, 0x3e8

    invoke-direct {v2, v0, v1, v4}, Lio/netty/handler/codec/http/HttpClientUpgradeHandler;-><init>(Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeCodec;I)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v2}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    const-string v3, "/"

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lio/netty/channel/ChannelFutureListener;->FIRE_EXCEPTION_ON_FAILURE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string p1, "negotiation already started"

    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    check-cast p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    goto :goto_2

    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_SUCCESSFUL:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string p2, "negotiation not yet complete"

    invoke-static {v1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v1, "Http2Upgrade finished"

    invoke-virtual {p2, v0, v1}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    iget-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    iget-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-virtual {p2}, Lio/grpc/netty/ProtocolNegotiationEvent;->getAttributes()Lio/grpc/Attributes;

    move-result-object p2

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$Http2UpgradeAndGrpcHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-virtual {v0}, Lio/grpc/netty/ProtocolNegotiationEvent;->getSecurity()Lio/grpc/InternalChannelz$Security;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->handleProtocolNegotiationCompleted(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_REJECTED:Lio/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    if-ne p2, v0, :cond_4

    const-string p2, "HTTP/2 upgrade rejected"

    invoke-static {p2}, Lio/grpc/netty/ProtocolNegotiators;->access$000(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
