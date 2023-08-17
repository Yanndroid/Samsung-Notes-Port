.class public Lio/netty/channel/DefaultChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# static fields
.field private static final AUTOREAD_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/DefaultChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x7530

.field private static final DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

.field private static final WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/channel/DefaultChannelConfig;",
            "Lio/netty/channel/WriteBufferWaterMark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile allocator:Lio/netty/buffer/ByteBufAllocator;

.field private volatile autoClose:Z

.field private volatile autoRead:I

.field public final channel:Lio/netty/channel/Channel;

.field private volatile connectTimeoutMillis:I

.field private volatile maxMessagesPerWrite:I

.field private volatile msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

.field private volatile pinEventExecutor:Z

.field private volatile rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

.field private volatile writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

.field private volatile writeSpinCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/channel/DefaultChannelConfig;

    sget-object v1, Lio/netty/channel/DefaultMessageSizeEstimator;->DEFAULT:Lio/netty/channel/MessageSizeEstimator;

    sput-object v1, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

    const-string v1, "autoRead"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/channel/DefaultChannelConfig;->AUTOREAD_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Lio/netty/channel/WriteBufferWaterMark;

    const-string v2, "writeBufferWaterMark"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/DefaultChannelConfig;->WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1

    new-instance v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    invoke-direct {v0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    sget-object v0, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    const/16 v0, 0x7530

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    const/16 v0, 0x10

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    const v0, 0x7fffffff

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerWrite:I

    const/4 v0, 0x1

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:I

    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    sget-object v1, Lio/netty/channel/WriteBufferWaterMark;->DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

    iput-object v1, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->pinEventExecutor:Z

    invoke-interface {p1}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;Lio/netty/channel/ChannelMetadata;)V

    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    return-void
.end method

.method private getPinEventExecutorPerGroup()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->pinEventExecutor:Z

    return v0
.end method

.method private setPinEventExecutorPerGroup(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    iput-boolean p1, p0, Lio/netty/channel/DefaultChannelConfig;->pinEventExecutor:Z

    return-object p0
.end method

.method private setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;Lio/netty/channel/ChannelMetadata;)V
    .locals 1

    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "metadata"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    invoke-virtual {p2}, Lio/netty/channel/ChannelMetadata;->defaultMaxMessagesPerRead()I

    move-result p2

    invoke-interface {v0, p2}, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;->maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    return-void
.end method


# virtual methods
.method public autoReadCleared()V
    .locals 0

    return-void
.end method

.method public getAllocator()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return v0
.end method

.method public getMaxMessagesPerRead()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    check-cast v0, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    invoke-interface {v0}, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;->maxMessagesPerRead()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxMessagesPerWrite()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerWrite:I

    return v0
.end method

.method public getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    return-object v0
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getConnectTimeoutMillis()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMaxMessagesPerRead()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteSpinCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->isAutoRead()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->isAutoClose()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferHighWaterMark()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferLowWaterMark()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object v0, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object p1

    return-object p1

    :cond_a
    sget-object v0, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lio/netty/channel/DefaultChannelConfig;->getPinEventExecutorPerGroup()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_WRITE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMaxMessagesPerWrite()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [Lio/netty/channel/ChannelOption;

    sget-object v1, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_WRITE:Lio/netty/channel/ChannelOption;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/netty/channel/DefaultChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;[",
            "Lio/netty/channel/ChannelOption<",
            "*>;)",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/RecvByteBufAllocator;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v0

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v0

    return v0
.end method

.method public getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    return-object v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    return v0
.end method

.method public isAutoClose()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    return v0
.end method

.method public isAutoRead()Z
    .locals 2

    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/buffer/ByteBufAllocator;

    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object p0
.end method

.method public setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    iput-boolean p1, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    return-object p0
.end method

.method public setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 2

    sget-object v0, Lio/netty/channel/DefaultChannelConfig;->AUTOREAD_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    iget-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {p1}, Lio/netty/channel/Channel;->read()Lio/netty/channel/Channel;

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->autoReadCleared()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "connectTimeoutMillis"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return-object p0
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    check-cast v0, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    invoke-interface {v0, p1}, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;->maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setMaxMessagesPerWrite(I)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "maxMessagesPerWrite"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->maxMessagesPerWrite:I

    return-object p0
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "estimator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/MessageSizeEstimator;

    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    sget-object v0, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    check-cast p2, Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    check-cast p2, Lio/netty/channel/RecvByteBufAllocator;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    check-cast p2, Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_9
    sget-object v0, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    check-cast p2, Lio/netty/channel/MessageSizeEstimator;

    invoke-virtual {p0, p2}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_a
    sget-object v0, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setPinEventExecutorPerGroup(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    :cond_b
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_WRITE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_c

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerWrite(I)Lio/netty/channel/ChannelConfig;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public setOptions(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;)Z"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/ChannelOption;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/RecvByteBufAllocator;

    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    return-object p0
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 5

    const-string v0, "writeBufferHighWaterMark"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v1

    if-lt p1, v1, :cond_1

    sget-object v1, Lio/netty/channel/DefaultChannelConfig;->WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 5

    const-string v0, "writeBufferLowWaterMark"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v1

    if-gt p1, v1, :cond_1

    sget-object v1, Lio/netty/channel/DefaultChannelConfig;->WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "writeBufferWaterMark"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/WriteBufferWaterMark;

    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    return-object p0
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 1

    const-string v0, "writeSpinCount"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    return-object p0
.end method

.method public validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelOption;

    invoke-virtual {p1, p2}, Lio/netty/channel/ChannelOption;->validate(Ljava/lang/Object;)V

    return-void
.end method
