.class Lio/netty/handler/ipfilter/UniqueIpFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ipfilter/UniqueIpFilter;->accept(Lio/netty/channel/ChannelHandlerContext;Ljava/net/InetSocketAddress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/ipfilter/UniqueIpFilter;

.field public final synthetic val$remoteIp:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Lio/netty/handler/ipfilter/UniqueIpFilter;Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->this$0:Lio/netty/handler/ipfilter/UniqueIpFilter;

    iput-object p2, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->val$remoteIp:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    iget-object p1, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->this$0:Lio/netty/handler/ipfilter/UniqueIpFilter;

    invoke-static {p1}, Lio/netty/handler/ipfilter/UniqueIpFilter;->access$000(Lio/netty/handler/ipfilter/UniqueIpFilter;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->val$remoteIp:Ljava/net/InetAddress;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/ipfilter/UniqueIpFilter$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
