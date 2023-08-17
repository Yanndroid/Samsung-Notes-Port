.class Lio/netty/handler/proxy/ProxyHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/proxy/ProxyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/proxy/ProxyHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/proxy/ProxyHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyHandler$1;->this$0:Lio/netty/handler/proxy/ProxyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler$1;->this$0:Lio/netty/handler/proxy/ProxyHandler;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/handler/proxy/ProxyHandler;->access$100(Lio/netty/handler/proxy/ProxyHandler;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/proxy/ProxyHandler$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
