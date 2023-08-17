.class final Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;
.super Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListenerWritabilityMonitor"
.end annotation


# instance fields
.field private final listener:Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 1

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;)V

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->listener:Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

    return-void
.end method

.method private checkAllWritabilityChanged()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritableConnection()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability(Z)V

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$1100(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    return-void
.end method

.method private checkConnectionThenStreamWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritableConnection()Z

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkAllWritabilityChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritable(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)Z

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->notifyWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkStateWritability(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V
    .locals 2

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritable(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)Z

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkAllWritabilityChanged()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->notifyWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V
    .locals 2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability(Z)V

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->listener:Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->access$1300(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;->writabilityChanged(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$1400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Caught Throwable from listener.writabilityChanged"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public channelWritabilityChange()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$800(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability()Z

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$1200(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkAllWritabilityChanged()V

    :cond_0
    return-void
.end method

.method public enqueueFrame(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->enqueueFrame(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkConnectionThenStreamWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V

    return-void
.end method

.method public incrementWindowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->incrementWindowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkStateWritability(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V

    return-void
.end method

.method public initialWindowSize(I)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->initialWindowSize(I)V

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritableConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkAllWritabilityChanged()V

    :cond_0
    return-void
.end method

.method public stateCancelled(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkConnectionThenStreamWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Caught unexpected exception from checkAllWritabilityChanged"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritable(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)Z

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->markedWritability()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->notifyWritabilityChanged(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public windowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->windowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;->checkStateWritability(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Caught unexpected exception from window"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
