.class Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;
.super Lio/netty/util/AbstractReferenceCounted;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedResourceReferenceCounter"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServer;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServer;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1}, Lio/grpc/netty/NettyServer;->access$2400(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1}, Lio/grpc/netty/NettyServer;->access$2500(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ObjectPool;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2}, Lio/grpc/netty/NettyServer;->access$2400(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iget-object v1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1, v0}, Lio/grpc/netty/NettyServer;->access$2402(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;

    :try_start_1
    iget-object v1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1}, Lio/grpc/netty/NettyServer;->access$2600(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1}, Lio/grpc/netty/NettyServer;->access$2700(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ObjectPool;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2}, Lio/grpc/netty/NettyServer;->access$2600(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v1, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v1, v0}, Lio/grpc/netty/NettyServer;->access$2602(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2, v0}, Lio/grpc/netty/NettyServer;->access$2602(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;

    throw v1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2, v0}, Lio/grpc/netty/NettyServer;->access$2402(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;

    :try_start_2
    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2}, Lio/grpc/netty/NettyServer;->access$2600(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2}, Lio/grpc/netty/NettyServer;->access$2700(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ObjectPool;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$2600(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2, v0}, Lio/grpc/netty/NettyServer;->access$2602(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;

    throw v1

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2, v0}, Lio/grpc/netty/NettyServer;->access$2602(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;

    throw v1
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    return-object p0
.end method
