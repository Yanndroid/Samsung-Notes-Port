.class public interface abstract Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2RemoteFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlowControlled"
.end annotation


# virtual methods
.method public abstract error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
.end method

.method public abstract merge(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)Z
.end method

.method public abstract size()I
.end method

.method public abstract write(Lio/netty/channel/ChannelHandlerContext;I)V
.end method

.method public abstract writeComplete()V
.end method
