.class Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->start(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler$GracefulShutdown;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;->this$1:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;->this$1:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->secondGoAwayAndClose(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method
