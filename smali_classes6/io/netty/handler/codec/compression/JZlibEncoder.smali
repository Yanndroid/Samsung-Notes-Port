.class public Lio/netty/handler/codec/compression/JZlibEncoder;
.super Lio/netty/handler/codec/compression/ZlibEncoder;
.source "SourceFile"


# static fields
.field private static final THREAD_POOL_DELAY_SECONDS:I = 0xa


# instance fields
.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private volatile finished:Z

.field private final wrapperOverhead:I

.field private final z:Lcom/jcraft/jzlib/Deflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 4

    invoke-direct {p0}, Lio/netty/handler/codec/compression/ZlibEncoder;-><init>()V

    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "compressionLevel"

    invoke-static {p1, v1, v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    const/16 v1, 0xf

    const-string v3, "windowBits"

    invoke-static {p2, v2, v1, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    const/4 v1, 0x1

    const-string v3, "memLevel"

    invoke-static {p3, v1, v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    const-string v1, "dictionary"

    invoke-static {p4, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lcom/jcraft/jzlib/JZlib;->W_ZLIB:Lcom/jcraft/jzlib/JZlib$WrapperType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/jcraft/jzlib/Deflater;->deflateInit(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "initialization failure"

    :goto_0
    invoke-static {v0, p2, p1}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    array-length p1, p4

    invoke-virtual {v0, p4, p1}, Lcom/jcraft/jzlib/Deflater;->deflateSetDictionary([BI)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "failed to set the dictionary"

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    invoke-static {p1}, Lio/netty/handler/codec/compression/ZlibUtil;->wrapperOverhead(Lio/netty/handler/codec/compression/ZlibWrapper;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->wrapperOverhead:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(III[B)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;III)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;III)V
    .locals 4

    invoke-direct {p0}, Lio/netty/handler/codec/compression/ZlibEncoder;-><init>()V

    new-instance v0, Lcom/jcraft/jzlib/Deflater;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Deflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "compressionLevel"

    invoke-static {p2, v1, v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    const/16 v1, 0xf

    const-string v3, "windowBits"

    invoke-static {p3, v2, v1, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    const/4 v1, 0x1

    const-string v3, "memLevel"

    invoke-static {p4, v1, v2, v3}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    const-string v1, "wrapper"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lio/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v1, :cond_1

    invoke-static {p1}, Lio/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lio/netty/handler/codec/compression/ZlibWrapper;)Lcom/jcraft/jzlib/JZlib$WrapperType;

    move-result-object v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/jcraft/jzlib/Deflater;->init(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p2

    if-eqz p2, :cond_0

    const-string p3, "initialization failure"

    invoke-static {v0, p3, p2}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/compression/ZlibUtil;->wrapperOverhead(Lio/netty/handler/codec/compression/ZlibWrapper;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->wrapperOverhead:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrapper \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' is not allowed for compression."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder;-><init>(I[B)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/compression/JZlibEncoder;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p0

    return-object p0
.end method

.method private ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 6

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    return-object p2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    sget-object v3, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    iput-object v3, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v3, 0x0

    iput v3, v2, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v3, v2, Lcom/jcraft/jzlib/Deflater;->avail_in:I

    const/16 v2, 0x20

    new-array v4, v2, [B

    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v4, v5, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v3, v5, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    iget-object v5, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput v2, v5, Lcom/jcraft/jzlib/Deflater;->avail_out:I

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const-string v0, "compression failure"

    invoke-static {p1, v0, v2}, Lio/netty/handler/codec/compression/ZlibUtil;->deflaterException(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)Lio/netty/handler/codec/compression/CompressionException;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p1}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, p1, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, p1, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    return-object p2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v0, v0, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    invoke-static {v4, v3, v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p2}, Lcom/jcraft/jzlib/Deflater;->deflateEnd()I

    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, p2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, p2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    throw p1
.end method


# virtual methods
.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3

    invoke-direct {p0}, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    new-instance v2, Lio/netty/handler/codec/compression/JZlibEncoder$1;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/handler/codec/compression/JZlibEncoder$1;-><init>(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/JZlibEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/compression/JZlibEncoder$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder$2;-><init>(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/compression/JZlibEncoder$3;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/compression/JZlibEncoder$3;-><init>(Lio/netty/handler/codec/compression/JZlibEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    const-wide/16 p1, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 6

    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput p1, v2, Lcom/jcraft/jzlib/Deflater;->avail_in:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    goto :goto_0

    :cond_2
    new-array v1, p1, [B

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v1, v2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object v1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v2, 0x0

    iput v2, v1, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v1, v1, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    int-to-double v2, p1

    const-wide v4, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    add-int/lit8 p1, p1, 0xc

    iget v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->wrapperOverhead:I

    add-int/2addr p1, v2

    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput p1, v2, Lcom/jcraft/jzlib/Deflater;->avail_out:I

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    iput-object v2, p1, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget p1, p1, Lcom/jcraft/jzlib/Deflater;->next_out_index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/Deflater;->deflate(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget v3, v3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_3

    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    const-string v1, "compression failure"

    invoke-static {p2, v1, v2}, Lio/netty/handler/codec/compression/ZlibUtil;->fail(Lcom/jcraft/jzlib/Deflater;Ljava/lang/String;I)V

    :cond_3
    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget p2, p2, Lcom/jcraft/jzlib/Deflater;->next_out_index:I

    sub-int/2addr p2, p1

    if-lez p2, :cond_4

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, p1, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, p1, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object p3, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iget p3, p3, Lcom/jcraft/jzlib/Deflater;->next_in_index:I

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, p2, Lcom/jcraft/jzlib/Deflater;->next_in:[B

    iget-object p2, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->z:Lcom/jcraft/jzlib/Deflater;

    iput-object v0, p2, Lcom/jcraft/jzlib/Deflater;->next_out:[B

    throw p1
.end method

.method public bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/JZlibEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JZlibEncoder;->finished:Z

    return v0
.end method
