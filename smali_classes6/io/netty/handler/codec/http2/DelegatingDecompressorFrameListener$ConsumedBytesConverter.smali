.class final Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2LocalFlowController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConsumedBytesConverter"
.end annotation


# instance fields
.field private final flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;Lio/netty/handler/codec/http2/Http2LocalFlowController;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "flowController"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    return-void
.end method


# virtual methods
.method public channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FlowController;->channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->decompressor(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;->consumeBytes(II)I

    move-result p2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z

    move-result p1
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error while returning bytes to flow control window"

    invoke-static {p1, v0, p2, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    throw p1
.end method

.method public frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object p1

    return-object p1
.end method

.method public incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    return-void
.end method

.method public initialWindowSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2FlowController;->initialWindowSize()I

    move-result v0

    return v0
.end method

.method public initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result p1

    return p1
.end method

.method public initialWindowSize(I)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FlowController;->initialWindowSize(I)V

    return-void
.end method

.method public receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V

    return-void
.end method

.method public unconsumedBytes(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->unconsumedBytes(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result p1

    return p1
.end method

.method public windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$ConsumedBytesConverter;->flowController:Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2FlowController;->windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result p1

    return p1
.end method
