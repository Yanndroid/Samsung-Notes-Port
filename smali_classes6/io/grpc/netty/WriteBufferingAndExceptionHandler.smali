.class final Lio/grpc/netty/WriteBufferingAndExceptionHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final bufferedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;",
            ">;"
        }
    .end annotation
.end field

.field private failCause:Ljava/lang/Throwable;

.field private flushRequested:Z

.field private final next:Lio/netty/channel/ChannelHandler;

.field private writing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandler;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    const-string v0, "next"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandler;

    iput-object p1, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->next:Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$100(Lio/grpc/netty/WriteBufferingAndExceptionHandler;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failWrites(Ljava/lang/Throwable;)V

    return-void
.end method

.method private failWrites(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failCause:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Ignoring duplicate failure"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;

    iget-object v1, v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    iget-object v0, v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;->msg:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed while performing protocol negotiation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->names()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failWrites(Ljava/lang/Throwable;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 6

    :try_start_0
    sget-object v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lio/netty/buffer/ByteBuf;

    invoke-static {v2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const-string v3, "Unexpected channelRead()->{0} reached end of pipeline {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/ChannelPipeline;->names()Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelRead() missed by ProtocolNegotiator handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    throw p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closing while performing protocol negotiation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->names()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failWrites(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelDuplexHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/channel/ChannelDuplexHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    new-instance p1, Lio/grpc/netty/WriteBufferingAndExceptionHandler$1ConnectListener;

    invoke-direct {p1, p0}, Lio/grpc/netty/WriteBufferingAndExceptionHandler$1ConnectListener;-><init>(Lio/grpc/netty/WriteBufferingAndExceptionHandler;)V

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failCause:Ljava/lang/Throwable;

    invoke-static {p2}, Lio/grpc/netty/Utils;->statusFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel Pipeline: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->names()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failWrites(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/channel/Channel;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance p2, Lio/grpc/netty/WriteBufferingAndExceptionHandler$1LogOnFailure;

    invoke-direct {p2, p0}, Lio/grpc/netty/WriteBufferingAndExceptionHandler$1LogOnFailure;-><init>(Lio/grpc/netty/WriteBufferingAndExceptionHandler;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->flushRequested:Z

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->next:Lio/netty/channel/ChannelHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lio/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/ProtocolNegotiationEvent;->DEFAULT:Lio/grpc/netty/ProtocolNegotiationEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Buffer removed before draining writes"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failWrites(Ljava/lang/Throwable;)V

    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->failCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lio/grpc/netty/GracefulCloseCommand;

    if-nez v0, :cond_1

    instance-of v0, p2, Lio/grpc/netty/ForcefulCloseCommand;

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    :cond_2
    iget-object p1, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    new-instance v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;

    invoke-direct {v0, p2, p3}, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;-><init>(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final writeBufferedAndRemove(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->writing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->writing:Z

    :goto_0
    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->bufferedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;

    iget-object v1, v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;->msg:Ljava/lang/Object;

    iget-object v0, v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler$ChannelWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;->flushRequested:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_3
    :goto_1
    return-void
.end method
