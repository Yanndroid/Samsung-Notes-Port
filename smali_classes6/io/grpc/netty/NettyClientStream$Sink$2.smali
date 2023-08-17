.class Lio/grpc/netty/NettyClientStream$Sink$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientStream$Sink;->writeFrameInternal(Lio/grpc/internal/WritableBuffer;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/netty/NettyClientStream$Sink;

.field public final synthetic val$numBytes:I

.field public final synthetic val$numMessages:I


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientStream$Sink;II)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->this$1:Lio/grpc/netty/NettyClientStream$Sink;

    iput p2, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->val$numBytes:I

    iput p3, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->this$1:Lio/grpc/netty/NettyClientStream$Sink;

    iget-object p1, p1, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {p1}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/NettyClientStream$TransportState;->http2Stream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->this$1:Lio/grpc/netty/NettyClientStream$Sink;

    iget-object p1, p1, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-virtual {p1}, Lio/grpc/netty/NettyClientStream;->transportState()Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object p1

    iget v0, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->val$numBytes:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/AbstractStream$TransportState;->onSentBytes(I)V

    iget-object p1, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->this$1:Lio/grpc/netty/NettyClientStream$Sink;

    iget-object p1, p1, Lio/grpc/netty/NettyClientStream$Sink;->this$0:Lio/grpc/netty/NettyClientStream;

    invoke-static {p1}, Lio/grpc/netty/NettyClientStream;->access$900(Lio/grpc/netty/NettyClientStream;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    iget v0, p0, Lio/grpc/netty/NettyClientStream$Sink$2;->val$numMessages:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyClientStream$Sink$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
