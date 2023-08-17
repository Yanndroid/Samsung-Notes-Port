.class Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


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

.field public final synthetic val$timeoutTask:Lio/netty/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;Lio/netty/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$3;->this$0:Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$3;->val$timeoutTask:Lio/netty/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    iget-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$3;->val$timeoutTask:Lio/netty/util/concurrent/Future;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketProtocolHandler$3;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
