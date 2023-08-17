.class public interface abstract Lio/netty/handler/codec/http2/Http2Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;,
        Lio/netty/handler/codec/http2/Http2Connection$Endpoint;,
        Lio/netty/handler/codec/http2/Http2Connection$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V
.end method

.method public abstract close(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract connectionStream()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract goAwayReceived(IJLio/netty/buffer/ByteBuf;)V
.end method

.method public abstract goAwayReceived()Z
.end method

.method public abstract goAwaySent()Z
.end method

.method public abstract goAwaySent(IJLio/netty/buffer/ByteBuf;)Z
.end method

.method public abstract isServer()Z
.end method

.method public abstract local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
            "Lio/netty/handler/codec/http2/Http2LocalFlowController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
.end method

.method public abstract numActiveStreams()I
.end method

.method public abstract remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
            "Lio/netty/handler/codec/http2/Http2RemoteFlowController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V
.end method

.method public abstract stream(I)Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract streamMayHaveExisted(I)Z
.end method
