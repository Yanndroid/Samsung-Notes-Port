.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;
.super Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlowControlledData"
.end annotation


# instance fields
.field private dataSize:I

.field private final queue:Lio/netty/channel/CoalescingBufferQueue;

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)V
    .locals 6

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;IZLio/netty/channel/ChannelPromise;)V

    new-instance p1, Lio/netty/channel/CoalescingBufferQueue;

    invoke-interface {p6}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/channel/CoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {p1, p3, p6}, Lio/netty/channel/AbstractCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {p1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    return-void
.end method


# virtual methods
.method public error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0, p2}, Lio/netty/channel/CoalescingBufferQueue;->releaseAndFailAll(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public merge(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)Z
    .locals 1

    const-class p1, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const p1, 0x7fffffff

    check-cast p2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {p1, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->copyTo(Lio/netty/channel/AbstractCoalescingBufferQueue;)V

    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {p1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    iget p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    iget v0, p2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    iget-boolean p1, p2, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->endOfStream:Z

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->endOfStream:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 10

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes()I

    move-result v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->endOfStream:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {p2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iput v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    iput v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object p2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v0, v2, p2}, Lio/netty/channel/CoalescingBufferQueue;->remove(ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    move-result-object v9

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v1, v0, v9}, Lio/netty/channel/CoalescingBufferQueue;->remove(ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->queue:Lio/netty/channel/CoalescingBufferQueue;

    invoke-virtual {v1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes()I

    move-result v1

    iput v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->dataSize:I

    sub-int/2addr p2, v0

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    sub-int/2addr p2, v7

    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v3

    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v5

    iget-boolean p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->endOfStream:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledData;->size()I

    move-result p2

    if-nez p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v8, v2

    move-object v4, p1

    invoke-interface/range {v3 .. v9}, Lio/netty/handler/codec/http2/Http2DataWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
