.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;
.super Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlowControlledHeaders"
.end annotation


# instance fields
.field private final exclusive:Z

.field private final hasPriority:Z

.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private final streamDependency:I

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

.field private final weight:S


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)V
    .locals 7

    move-object v6, p0

    move-object v1, p1

    iput-object v1, v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-interface/range {p10 .. p10}, Lio/netty/channel/ChannelPromise;->unvoid()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move v3, p8

    move/from16 v4, p9

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Stream;IZLio/netty/channel/ChannelPromise;)V

    move-object v0, p3

    iput-object v0, v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    move v0, p4

    iput-boolean v0, v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->hasPriority:Z

    move v0, p5

    iput v0, v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->streamDependency:I

    move v0, p6

    iput-short v0, v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->weight:S

    move v0, p7

    iput-boolean v0, v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->exclusive:Z

    return-void
.end method


# virtual methods
.method public error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$000(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2LifecycleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lio/netty/handler/codec/http2/Http2LifecycleManager;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public merge(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 12

    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->isServer()Z

    move-result v1

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->endOfStream:Z

    invoke-static {p2, v0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$200(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result p2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v3

    iget-object v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iget-boolean v5, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->hasPriority:Z

    iget v6, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->streamDependency:I

    iget-short v7, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->weight:S

    iget-boolean v8, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledHeaders;->exclusive:Z

    iget v9, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->padding:I

    iget-boolean v10, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->endOfStream:Z

    iget-object v11, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->promise:Lio/netty/channel/ChannelPromise;

    move-object v2, p1

    invoke-static/range {v1 .. v11}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;->access$400(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ZISZIZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder$FlowControlledBase;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2Stream;->headersSent(Z)Lio/netty/handler/codec/http2/Http2Stream;

    :cond_0
    return-void
.end method
