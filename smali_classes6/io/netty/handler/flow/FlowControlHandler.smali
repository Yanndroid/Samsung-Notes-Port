.class public Lio/netty/handler/flow/FlowControlHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private config:Lio/netty/channel/ChannelConfig;

.field private queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

.field private final releaseMessages:Z

.field private shouldConsume:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/flow/FlowControlHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/flow/FlowControlHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/flow/FlowControlHandler;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    iput-boolean p1, p0, Lio/netty/handler/flow/FlowControlHandler;->releaseMessages:Z

    return-void
.end method

.method private dequeue(Lio/netty/channel/ChannelHandlerContext;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v1, :cond_2

    if-lt v0, p2, :cond_0

    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->config:Lio/netty/channel/ChannelConfig;

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {p2}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->recycle()V

    const/4 p2, 0x0

    iput-object p2, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-lez v0, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    :cond_3
    return v0
.end method

.method private destroy()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/flow/FlowControlHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    const-string v2, "Non-empty queue: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/netty/handler/flow/FlowControlHandler;->releaseMessages:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    :cond_1
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/flow/FlowControlHandler;->destroy()V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-nez v0, :cond_0

    invoke-static {}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->newInstance()Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    :cond_0
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lio/netty/handler/flow/FlowControlHandler;->shouldConsume:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/flow/FlowControlHandler;->shouldConsume:Z

    invoke-direct {p0, p1, p2}, Lio/netty/handler/flow/FlowControlHandler;->dequeue(Lio/netty/channel/ChannelHandlerContext;I)I

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/flow/FlowControlHandler;->isQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/flow/FlowControlHandler;->config:Lio/netty/channel/ChannelConfig;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-virtual {p0}, Lio/netty/handler/flow/FlowControlHandler;->isQueueEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/flow/FlowControlHandler;->dequeue(Lio/netty/channel/ChannelHandlerContext;I)I

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/flow/FlowControlHandler;->destroy()V

    return-void
.end method

.method public isQueueEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/flow/FlowControlHandler;->dequeue(Lio/netty/channel/ChannelHandlerContext;I)I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lio/netty/handler/flow/FlowControlHandler;->shouldConsume:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method
