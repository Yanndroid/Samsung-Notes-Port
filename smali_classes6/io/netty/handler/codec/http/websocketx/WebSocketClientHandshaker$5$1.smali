.class Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$1;->this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$1;->this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    iget-object v0, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;->val$channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$1;->this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    iget-object v0, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;->val$invoker:Lio/netty/channel/ChannelOutboundInvoker;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5$1;->this$1:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;

    iget-object v0, v0, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker$5;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->access$102(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;Z)Z

    :cond_0
    return-void
.end method
