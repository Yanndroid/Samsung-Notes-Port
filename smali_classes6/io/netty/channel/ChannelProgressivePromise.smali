.class public interface abstract Lio/netty/channel/ChannelProgressivePromise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/ProgressivePromise;
.implements Lio/netty/channel/ChannelProgressiveFuture;
.implements Lio/netty/channel/ChannelPromise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/ProgressivePromise<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/ChannelProgressiveFuture;",
        "Lio/netty/channel/ChannelPromise;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation
.end method

.method public varargs abstract addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation
.end method

.method public abstract await()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract awaitUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation
.end method

.method public varargs abstract removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/ChannelProgressivePromise;"
        }
    .end annotation
.end method

.method public abstract setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract setProgress(JJ)Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract setSuccess()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract setSuccess(Ljava/lang/Void;)Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract sync()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract syncUninterruptibly()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract unvoid()Lio/netty/channel/ChannelProgressivePromise;
.end method
