.class final Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrpcNegotiationHandler"
.end annotation


# instance fields
.field private final next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;


# direct methods
.method public constructor <init>(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    const-string v0, "next"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;->next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    return-void
.end method


# virtual methods
.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;->next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    invoke-interface {v0, p1, v1, v2}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    iget-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$GrpcNegotiationHandler;->next:Lio/grpc/netty/GrpcHttp2ConnectionHandler;

    invoke-virtual {p2}, Lio/grpc/netty/ProtocolNegotiationEvent;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    invoke-virtual {p2}, Lio/grpc/netty/ProtocolNegotiationEvent;->getSecurity()Lio/grpc/InternalChannelz$Security;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->handleProtocolNegotiationCompleted(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
