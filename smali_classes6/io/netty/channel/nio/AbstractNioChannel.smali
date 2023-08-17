.class public abstract Lio/netty/channel/nio/AbstractNioChannel;
.super Lio/netty/channel/AbstractChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;,
        Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final ch:Ljava/nio/channels/SelectableChannel;

.field private final clearReadPendingRunnable:Ljava/lang/Runnable;

.field private connectPromise:Lio/netty/channel/ChannelPromise;

.field private connectTimeoutFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public final readInterestOp:I

.field public readPending:Z

.field private requestedRemoteAddress:Ljava/net/SocketAddress;

.field public volatile selectionKey:Ljava/nio/channels/SelectionKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/channel/nio/AbstractNioChannel;

    const-class v0, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/nio/AbstractNioChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    new-instance p1, Lio/netty/channel/nio/AbstractNioChannel$1;

    invoke-direct {p1, p0}, Lio/netty/channel/nio/AbstractNioChannel$1;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/netty/channel/nio/AbstractNioChannel;->ch:Ljava/nio/channels/SelectableChannel;

    iput p3, p0, Lio/netty/channel/nio/AbstractNioChannel;->readInterestOp:I

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p2}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    sget-object p3, Lio/netty/channel/nio/AbstractNioChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "Failed to close a partially initialized socket."

    invoke-interface {p3, v0, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p2, Lio/netty/channel/ChannelException;

    const-string p3, "Failed to enter non-blocking mode."

    invoke-direct {p2, p3, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic access$000(Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending0()V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/channel/nio/AbstractNioChannel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel;->setReadPending0(Z)V

    return-void
.end method

.method public static synthetic access$200(Lio/netty/channel/nio/AbstractNioChannel;)Lio/netty/channel/ChannelPromise;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method public static synthetic access$202(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method public static synthetic access$300(Lio/netty/channel/nio/AbstractNioChannel;)Ljava/net/SocketAddress;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/nio/AbstractNioChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p0
.end method

.method public static synthetic access$302(Lio/netty/channel/nio/AbstractNioChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method public static synthetic access$400(Lio/netty/channel/nio/AbstractNioChannel;)Lio/netty/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    return-object p0
.end method

.method public static synthetic access$402(Lio/netty/channel/nio/AbstractNioChannel;Lio/netty/util/concurrent/Future;)Lio/netty/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    return-object p1
.end method

.method private clearReadPending0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    return-void
.end method

.method private setReadPending0(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object p1

    check-cast p1, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    invoke-virtual {p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;->removeReadOp()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clearReadPending()V
    .locals 2

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPending0()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->clearReadPendingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    :goto_0
    return-void
.end method

.method public doBeginRead()V
    .locals 4

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    iget v2, p0, Lio/netty/channel/nio/AbstractNioChannel;->readInterestOp:I

    and-int v3, v1, v2

    if-nez v3, :cond_1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method public doClose()V
    .locals 3

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    iput-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lio/netty/channel/nio/AbstractNioChannel;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public abstract doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
.end method

.method public doDeregister()V
    .locals 2

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/channel/nio/NioEventLoop;->cancel(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method public abstract doFinishConnect()V
.end method

.method public doRegister()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->javaChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iput-object v2, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/nio/NioEventLoop;->selectNow()I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    throw v2
.end method

.method public bridge synthetic eventLoop()Lio/netty/channel/EventLoop;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    return-object v0
.end method

.method public eventLoop()Lio/netty/channel/nio/NioEventLoop;
    .locals 1

    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/NioEventLoop;

    return-object v0
.end method

.method public isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/channel/nio/NioEventLoop;

    return p1
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->ch:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReadPending()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    return v0
.end method

.method public javaChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->ch:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public final newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final newDirectBuffer(Lio/netty/util/ReferenceCounted;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v1, p2, v2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eq p1, p2, :cond_3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    :cond_3
    return-object p2
.end method

.method public selectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public setReadPending(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel;->setReadPending0(Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/nio/AbstractNioChannel$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$2;-><init>(Lio/netty/channel/nio/AbstractNioChannel;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lio/netty/channel/nio/AbstractNioChannel;->readPending:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method public unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
    .locals 1

    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    return-object v0
.end method
