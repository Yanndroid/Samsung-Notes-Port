.class public interface abstract Lio/netty/channel/ChannelHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/ChannelHandler$Sharable;
    }
.end annotation


# virtual methods
.method public abstract exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
.end method
