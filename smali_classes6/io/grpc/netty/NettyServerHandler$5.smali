.class Lio/grpc/netty/NettyServerHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerHandler;->closeStreamWhenDone(Lio/netty/channel/ChannelPromise;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;

.field public final synthetic val$stream:Lio/grpc/netty/NettyServerStream$TransportState;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/NettyServerStream$TransportState;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$5;->this$0:Lio/grpc/netty/NettyServerHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$5;->val$stream:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$5;->val$stream:Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-virtual {p1}, Lio/grpc/netty/NettyServerStream$TransportState;->complete()V

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerHandler$5;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
