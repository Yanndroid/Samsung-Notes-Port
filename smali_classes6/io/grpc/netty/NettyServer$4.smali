.class Lio/grpc/netty/NettyServer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/group/ChannelGroupFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServer;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServer;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServer;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/group/ChannelGroupFuture;)V
    .locals 3

    invoke-interface {p1}, Lio/netty/channel/group/ChannelGroupFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/netty/NettyServer;->access$2200()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error closing server channel group"

    invoke-interface {p1}, Lio/netty/channel/group/ChannelGroupFuture;->cause()Lio/netty/channel/group/ChannelGroupException;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {p1}, Lio/grpc/netty/NettyServer;->access$1700(Lio/grpc/netty/NettyServer;)Lio/netty/util/ReferenceCounted;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    iget-object p1, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {p1}, Lio/grpc/netty/NettyServer;->access$100(Lio/grpc/netty/NettyServer;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/ProtocolNegotiator;->close()V

    iget-object p1, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/grpc/netty/NettyServer;->access$2302(Lio/grpc/netty/NettyServer;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v0}, Lio/grpc/netty/NettyServer;->access$1800(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ServerListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ServerListener;->serverShutdown()V

    iget-object v0, p0, Lio/grpc/netty/NettyServer$4;->this$0:Lio/grpc/netty/NettyServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/netty/NettyServer;->access$1602(Lio/grpc/netty/NettyServer;Z)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/group/ChannelGroupFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServer$4;->operationComplete(Lio/netty/channel/group/ChannelGroupFuture;)V

    return-void
.end method
