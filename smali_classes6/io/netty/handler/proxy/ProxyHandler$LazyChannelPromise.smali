.class final Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/proxy/ProxyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LazyChannelPromise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/DefaultPromise<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/proxy/ProxyHandler;


# direct methods
.method private constructor <init>(Lio/netty/handler/proxy/ProxyHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;->this$0:Lio/netty/handler/proxy/ProxyHandler;

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/proxy/ProxyHandler;Lio/netty/handler/proxy/ProxyHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;-><init>(Lio/netty/handler/proxy/ProxyHandler;)V

    return-void
.end method


# virtual methods
.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;->this$0:Lio/netty/handler/proxy/ProxyHandler;

    invoke-static {v0}, Lio/netty/handler/proxy/ProxyHandler;->access$300(Lio/netty/handler/proxy/ProxyHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;->this$0:Lio/netty/handler/proxy/ProxyHandler;

    invoke-static {v0}, Lio/netty/handler/proxy/ProxyHandler;->access$300(Lio/netty/handler/proxy/ProxyHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
