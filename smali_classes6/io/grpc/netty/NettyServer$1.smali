.class Lio/grpc/netty/NettyServer$1;
.super Lio/netty/channel/ChannelInitializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServer;->start(Lio/grpc/internal/ServerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServer;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServer;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initChannel(Lio/netty/channel/Channel;)V
    .locals 28

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iget-object v2, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v2}, Lio/grpc/netty/NettyServer;->access$000(Lio/grpc/netty/NettyServer;)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    long-to-double v2, v2

    mul-double/2addr v6, v2

    double-to-long v2, v6

    :cond_0
    move-wide/from16 v19, v2

    new-instance v4, Lio/grpc/netty/NettyServerTransport;

    move-object v2, v4

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$100(Lio/grpc/netty/NettyServer;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v5

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$200(Lio/grpc/netty/NettyServer;)Ljava/util/List;

    move-result-object v6

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$300(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/TransportTracer$Factory;->create()Lio/grpc/internal/TransportTracer;

    move-result-object v7

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$400(Lio/grpc/netty/NettyServer;)I

    move-result v8

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$500(Lio/grpc/netty/NettyServer;)Z

    move-result v9

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$600(Lio/grpc/netty/NettyServer;)I

    move-result v10

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$700(Lio/grpc/netty/NettyServer;)I

    move-result v11

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$800(Lio/grpc/netty/NettyServer;)I

    move-result v12

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$900(Lio/grpc/netty/NettyServer;)J

    move-result-wide v13

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1000(Lio/grpc/netty/NettyServer;)J

    move-result-wide v15

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1100(Lio/grpc/netty/NettyServer;)J

    move-result-wide v17

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1200(Lio/grpc/netty/NettyServer;)J

    move-result-wide v21

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1300(Lio/grpc/netty/NettyServer;)Z

    move-result v23

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1400(Lio/grpc/netty/NettyServer;)J

    move-result-wide v24

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1500(Lio/grpc/netty/NettyServer;)Lio/grpc/Attributes;

    move-result-object v26

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object v4, v0

    invoke-direct/range {v2 .. v26}, Lio/grpc/netty/NettyServerTransport;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;Lio/grpc/netty/ProtocolNegotiator;Ljava/util/List;Lio/grpc/internal/TransportTracer;IZIIIJJJJJZJLio/grpc/Attributes;)V

    iget-object v2, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1600(Lio/grpc/netty/NettyServer;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1700(Lio/grpc/netty/NettyServer;)Lio/netty/util/ReferenceCounted;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/ReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    iget-object v3, v1, Lio/grpc/netty/NettyServer$1;->this$0:Lio/grpc/netty/NettyServer;

    invoke-static {v3}, Lio/grpc/netty/NettyServer;->access$1800(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ServerListener;

    move-result-object v3

    move-object/from16 v4, v27

    invoke-interface {v3, v4}, Lio/grpc/internal/ServerListener;->transportCreated(Lio/grpc/internal/ServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, v3}, Lio/grpc/netty/NettyServerTransport;->start(Lio/grpc/internal/ServerTransportListener;)V

    new-instance v2, Lio/grpc/netty/NettyServer$1$1LoopReleaser;

    invoke-direct {v2, v1}, Lio/grpc/netty/NettyServer$1$1LoopReleaser;-><init>(Lio/grpc/netty/NettyServer$1;)V

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
