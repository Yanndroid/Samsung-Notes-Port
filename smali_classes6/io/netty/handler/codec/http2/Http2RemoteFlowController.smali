.class public interface abstract Lio/netty/handler/codec/http2/Http2RemoteFlowController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FlowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;,
        Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;
    }
.end annotation


# virtual methods
.method public abstract addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
.end method

.method public abstract channelHandlerContext()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract channelWritabilityChanged()V
.end method

.method public abstract hasFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;)Z
.end method

.method public abstract isWritable(Lio/netty/handler/codec/http2/Http2Stream;)Z
.end method

.method public abstract listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
.end method

.method public abstract updateDependencyTree(IISZ)V
.end method

.method public abstract writePendingBytes()V
.end method
