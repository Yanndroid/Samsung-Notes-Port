.class Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolNegotiationHandler"
.end annotation


# instance fields
.field private final negotiationLogger:Lio/grpc/ChannelLogger;

.field private final negotiatorName:Ljava/lang/String;

.field private final next:Lio/netty/channel/ChannelHandler;

.field private pne:Lio/grpc/netty/ProtocolNegotiationEvent;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandler;Lio/grpc/ChannelLogger;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "next"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->next:Lio/netty/channel/ChannelHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Handler"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiatorName:Ljava/lang/String;

    const-string p1, "negotiationLogger"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ChannelLogger;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandler;Ljava/lang/String;Lio/grpc/ChannelLogger;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "next"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->next:Lio/netty/channel/ChannelHandler;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiatorName:Ljava/lang/String;

    const-string p1, "negotiationLogger"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ChannelLogger;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    return-void
.end method


# virtual methods
.method public final fireProtocolNegotiationEvent(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "previous protocol negotiation event hasn\'t triggered"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiatorName:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "{0} completed"

    invoke-virtual {v0, v3, v2, v1}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->next:Lio/netty/channel/ChannelHandler;

    invoke-interface {v0, v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->replace(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final getProtocolNegotiationEvent()Lio/grpc/netty/ProtocolNegotiationEvent;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "previous protocol negotiation event hasn\'t triggered"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    return-object v0
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiationLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->negotiatorName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "{0} started"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerAdded0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public protocolNegotiationEventTriggered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    return-void
.end method

.method public final replaceProtocolNegotiationEvent(Lio/grpc/netty/ProtocolNegotiationEvent;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "previous protocol negotiation event hasn\'t triggered"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/ProtocolNegotiationEvent;

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    return-void
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pre-existing negotiation: %s < %s"

    invoke-static {v1, v2, v0, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p2, Lio/grpc/netty/ProtocolNegotiationEvent;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->pne:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-virtual {p0, p1}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->protocolNegotiationEventTriggered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/ProtocolNegotiators$ProtocolNegotiationHandler;->userEventTriggered0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public userEventTriggered0(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method
