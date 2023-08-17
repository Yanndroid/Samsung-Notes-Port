.class Lio/grpc/netty/NettyServerHandler$KeepAlivePinger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ping()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger$1;->this$1:Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger$1;->this$1:Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;

    iget-object p1, p1, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyServerHandler;->access$1500(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/TransportTracer;->reportKeepAliveSent()V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
