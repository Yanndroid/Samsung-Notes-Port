.class Lio/grpc/netty/NettyServer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServer;->start(Lio/grpc/internal/ServerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServer;

.field public final synthetic val$listenSocketStats:Lio/grpc/InternalInstrumented;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServer;Lio/grpc/InternalInstrumented;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer$3;->this$0:Lio/grpc/netty/NettyServer;

    iput-object p2, p0, Lio/grpc/netty/NettyServer$3;->val$listenSocketStats:Lio/grpc/InternalInstrumented;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    iget-object p1, p0, Lio/grpc/netty/NettyServer$3;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {p1}, Lio/grpc/netty/NettyServer;->access$2100(Lio/grpc/netty/NettyServer;)Lio/grpc/InternalChannelz;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/NettyServer$3;->val$listenSocketStats:Lio/grpc/InternalInstrumented;

    invoke-virtual {p1, v0}, Lio/grpc/InternalChannelz;->removeListenSocket(Lio/grpc/InternalInstrumented;)V

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServer$3;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
