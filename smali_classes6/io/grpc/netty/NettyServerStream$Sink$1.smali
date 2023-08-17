.class Lio/grpc/netty/NettyServerStream$Sink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerStream$Sink;->writeFrameInternal(Lio/grpc/internal/WritableBuffer;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/netty/NettyServerStream$Sink;

.field public final synthetic val$numBytes:I

.field public final synthetic val$numMessages:I


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerStream$Sink;II)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->this$1:Lio/grpc/netty/NettyServerStream$Sink;

    iput p2, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->val$numBytes:I

    iput p3, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->this$1:Lio/grpc/netty/NettyServerStream$Sink;

    iget-object v0, v0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->val$numBytes:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/AbstractStream$TransportState;->onSentBytes(I)V

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->this$1:Lio/grpc/netty/NettyServerStream$Sink;

    iget-object p1, p1, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-static {p1}, Lio/grpc/netty/NettyServerStream;->access$400(Lio/grpc/netty/NettyServerStream;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    iget v0, p0, Lio/grpc/netty/NettyServerStream$Sink$1;->val$numMessages:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerStream$Sink$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
