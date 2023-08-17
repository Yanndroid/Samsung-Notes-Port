.class Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->applyCloseSentTimeout(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->access$000(Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;

    invoke-static {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->access$000(Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$2;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;

    const-string v2, "send close frame timed out"

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;->buildHandshakeException(Ljava/lang/String;)Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
