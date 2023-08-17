.class Lio/grpc/netty/NettyClientStream$Sink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/AbstractClientStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sink"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientStream;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyClientStream;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyClientStream;Lio/grpc/netty/NettyClientStream$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyClientStream$Sink;-><init>(Lio/grpc/netty/NettyClientStream;)V

    return-void
.end method

.method private writeFrameInternal(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 4

    if-ltz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-nez p1, :cond_1

    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_1
    check-cast p1, Lio/grpc/netty/NettyWritableBuffer;

    invoke-virtual {p1}, Lio/grpc/netty/NettyWritableBuffer;->bytebuf()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v1, v0}, Lio/grpc/netty/NettyClientStream;->access$800(Lio/grpc/netty/NettyClientStream;I)V

    iget-object v1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v1}, Lio/grpc/netty/NettyClientStream;->access$700(Lio/grpc/netty/NettyClientStream;)Lio/grpc/netty/WriteQueue;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/SendGrpcFrameCommand;

    iget-object v3, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {v3}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lio/grpc/netty/SendGrpcFrameCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/buffer/ByteBuf;Z)V

    invoke-virtual {v1, v2, p3}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance p2, Lio/grpc/netty/NettyClientStream$Sink$2;

    invoke-direct {p2, p0, v0, p4}, Lio/grpc/netty/NettyClientStream$Sink$2;-><init>(Lio/grpc/netty/NettyClientStream$Sink;II)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {p4}, Lio/grpc/netty/NettyClientStream;->access$700(Lio/grpc/netty/NettyClientStream;)Lio/grpc/netty/WriteQueue;

    move-result-object p4

    new-instance v0, Lio/grpc/netty/SendGrpcFrameCommand;

    iget-object v1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {v1}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lio/grpc/netty/SendGrpcFrameCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/buffer/ByteBuf;Z)V

    invoke-virtual {p4, v0, p3}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    :goto_2
    return-void
.end method

.method private writeHeadersInternal(Lio/grpc/Metadata;[B)V
    .locals 10

    invoke-static {}, Lio/grpc/netty/NettyClientStream;->access$300()Lio/grpc/InternalMethodDescriptor;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v1}, Lio/grpc/netty/NettyClientStream;->access$200(Lio/grpc/netty/NettyClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/InternalMethodDescriptor;->geRawMethodName(Lio/grpc/MethodDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/AsciiString;

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/util/AsciiString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v2}, Lio/grpc/netty/NettyClientStream;->access$200(Lio/grpc/netty/NettyClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lio/grpc/netty/NettyClientStream;->access$300()Lio/grpc/InternalMethodDescriptor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v2}, Lio/grpc/netty/NettyClientStream;->access$200(Lio/grpc/netty/NettyClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/grpc/InternalMethodDescriptor;->setRawMethodName(Lio/grpc/MethodDescriptor;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    new-instance v4, Lio/netty/util/AsciiString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    sget-object p2, Lio/grpc/netty/Utils;->HTTP_GET_METHOD:Lio/netty/util/AsciiString;

    move-object v8, p2

    move-object v6, v4

    goto :goto_1

    :cond_2
    sget-object p2, Lio/grpc/netty/Utils;->HTTP_METHOD:Lio/netty/util/AsciiString;

    move-object v8, p2

    move-object v6, v0

    :goto_1
    iget-object p2, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {p2}, Lio/grpc/netty/NettyClientStream;->access$400(Lio/grpc/netty/NettyClientStream;)Lio/netty/util/AsciiString;

    move-result-object v5

    iget-object p2, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {p2}, Lio/grpc/netty/NettyClientStream;->access$500(Lio/grpc/netty/NettyClientStream;)Lio/netty/util/AsciiString;

    move-result-object v7

    iget-object p2, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {p2}, Lio/grpc/netty/NettyClientStream;->access$600(Lio/grpc/netty/NettyClientStream;)Lio/netty/util/AsciiString;

    move-result-object v9

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lio/grpc/netty/Utils;->convertClientHeaders(Lio/grpc/Metadata;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    new-instance p2, Lio/grpc/netty/NettyClientStream$Sink$1;

    invoke-direct {p2, p0}, Lio/grpc/netty/NettyClientStream$Sink$1;-><init>(Lio/grpc/netty/NettyClientStream$Sink;)V

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v0}, Lio/grpc/netty/NettyClientStream;->access$700(Lio/grpc/netty/NettyClientStream;)Lio/grpc/netty/WriteQueue;

    move-result-object v0

    new-instance v4, Lio/grpc/netty/CreateStreamCommand;

    iget-object v5, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {v5}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {v6}, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse()Z

    move-result v6

    invoke-direct {v4, p1, v5, v6, v3}, Lio/grpc/netty/CreateStreamCommand;-><init>(Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/NettyClientStream$TransportState;ZZ)V

    iget-object p1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {p1}, Lio/grpc/netty/NettyClientStream;->access$200(Lio/grpc/netty/NettyClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    invoke-virtual {v0, v4, v1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4

    const-string v0, "NettyClientStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {v1}, Lio/grpc/netty/NettyClientStream;->access$700(Lio/grpc/netty/NettyClientStream;)Lio/grpc/netty/WriteQueue;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/CancelClientStreamCommand;

    iget-object v3, p0, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {v3}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lio/grpc/netty/CancelClientStreamCommand;-><init>(Lio/grpc/netty/NettyClientStream$TransportState;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 1

    const-string v0, "NettyClientStream$Sink.writeFrame"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/NettyClientStream$Sink;->writeFrameInternal(Lio/grpc/internal/WritableBuffer;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHeaders(Lio/grpc/Metadata;[B)V
    .locals 1

    const-string v0, "NettyClientStream$Sink.writeHeaders"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/NettyClientStream$Sink;->writeHeadersInternal(Lio/grpc/Metadata;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method
