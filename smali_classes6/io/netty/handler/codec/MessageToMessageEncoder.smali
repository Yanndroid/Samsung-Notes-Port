.class public abstract Lio/netty/handler/codec/MessageToMessageEncoder;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelOutboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    const-class v0, Lio/netty/handler/codec/MessageToMessageEncoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    return-void
.end method

.method private static writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    new-instance v0, Lio/netty/util/concurrent/PromiseCombiner;

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Future;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method private static writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;)V
    .locals 3

    invoke-interface {p0}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lio/netty/handler/codec/CodecOutputList;->newInstance()Lio/netty/handler/codec/CodecOutputList;

    move-result-object v1
    :try_end_0
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, p1, p2, v1}, Lio/netty/handler/codec/MessageToMessageEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lio/netty/handler/codec/EncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must produce at least one message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_2
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_2
    if-lez p2, :cond_4

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    if-ne p3, p2, :cond_3

    invoke-static {p1, v1}, Lio/netty/handler/codec/MessageToMessageEncoder;->writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;)V

    goto :goto_2

    :cond_3
    invoke-static {p1, v1, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;Lio/netty/channel/ChannelPromise;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    throw p1

    :cond_5
    :goto_3
    return-void

    :catchall_2
    move-exception p2

    :try_start_4
    new-instance v2, Lio/netty/handler/codec/EncoderException;

    invoke-direct {v2, p2}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception p2

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p2

    if-eqz v1, :cond_9

    :try_start_5
    invoke-virtual {v1}, Lio/netty/handler/codec/CodecOutputList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_7

    if-lez v2, :cond_8

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-ne p3, v0, :cond_6

    invoke-static {p1, v1}, Lio/netty/handler/codec/MessageToMessageEncoder;->writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;)V

    goto :goto_4

    :cond_6
    invoke-static {p1, v1, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/CodecOutputList;Lio/netty/channel/ChannelPromise;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CodecOutputList;->getUnsafe(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_8
    :goto_4
    invoke-virtual {v1}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    goto :goto_5

    :catchall_4
    move-exception p1

    invoke-virtual {v1}, Lio/netty/handler/codec/CodecOutputList;->recycle()V

    throw p1

    :cond_9
    :goto_5
    throw p2
.end method
