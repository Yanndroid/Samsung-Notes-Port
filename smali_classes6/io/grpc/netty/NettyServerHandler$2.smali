.class Lio/grpc/netty/NettyServerHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$2;->this$0:Lio/grpc/netty/NettyServerHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$2;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyServerHandler;->access$200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$2;->this$0:Lio/grpc/netty/NettyServerHandler;

    new-instance v1, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    invoke-static {v0}, Lio/grpc/netty/NettyServerHandler;->access$300(Lio/grpc/netty/NettyServerHandler;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "max_age"

    invoke-direct {v1, v0, v3, v2}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;-><init>(Lio/grpc/netty/NettyServerHandler;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0, v1}, Lio/grpc/netty/NettyServerHandler;->access$202(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/NettyServerHandler$GracefulShutdown;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$2;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyServerHandler;->access$200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->start(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method
