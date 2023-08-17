.class Lio/grpc/netty/NettyClientHandler$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientHandler;->goingAway(J[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientHandler;

.field public final synthetic val$abruptGoAwayStatusConservative:Lio/grpc/Status;

.field public final synthetic val$lastKnownStream:I

.field public final synthetic val$mayBeHittingNettyBug:Z


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientHandler;IZLio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientHandler$7;->this$0:Lio/grpc/netty/NettyClientHandler;

    iput p2, p0, Lio/grpc/netty/NettyClientHandler$7;->val$lastKnownStream:I

    iput-boolean p3, p0, Lio/grpc/netty/NettyClientHandler$7;->val$mayBeHittingNettyBug:Z

    iput-object p4, p0, Lio/grpc/netty/NettyClientHandler$7;->val$abruptGoAwayStatusConservative:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 5

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/NettyClientHandler$7;->val$lastKnownStream:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$7;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {v0, p1}, Lio/grpc/netty/NettyClientHandler;->access$600(Lio/grpc/netty/NettyClientHandler;Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lio/grpc/netty/NettyClientHandler$7;->val$mayBeHittingNettyBug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    :goto_0
    iget-object v2, p0, Lio/grpc/netty/NettyClientHandler$7;->val$abruptGoAwayStatusConservative:Lio/grpc/Status;

    const/4 v3, 0x0

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v2, v1, v3, v4}, Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    :cond_1
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
