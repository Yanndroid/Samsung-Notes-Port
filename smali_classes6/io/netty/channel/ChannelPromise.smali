.class public interface abstract Lio/netty/channel/ChannelPromise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFuture;
.implements Lio/netty/util/concurrent/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/channel/ChannelFuture;",
        "Lio/netty/util/concurrent/Promise<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation
.end method

.method public varargs abstract addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation
.end method

.method public abstract await()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract awaitUninterruptibly()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract channel()Lio/netty/channel/Channel;
.end method

.method public abstract removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation
.end method

.method public varargs abstract removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelPromise;"
        }
    .end annotation
.end method

.method public abstract setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
.end method

.method public abstract setSuccess()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelPromise;
.end method

.method public abstract sync()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract syncUninterruptibly()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract trySuccess()Z
.end method

.method public abstract unvoid()Lio/netty/channel/ChannelPromise;
.end method
