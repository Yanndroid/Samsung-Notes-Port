.class public interface abstract Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Endpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lio/netty/handler/codec/http2/Http2FlowController;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract allowPushTo(Z)V
.end method

.method public abstract allowPushTo()Z
.end method

.method public abstract canOpenStream()Z
.end method

.method public abstract createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract created(Lio/netty/handler/codec/http2/Http2Stream;)Z
.end method

.method public abstract flowController()Lio/netty/handler/codec/http2/Http2FlowController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public abstract flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation
.end method

.method public abstract incrementAndGetNextStreamId()I
.end method

.method public abstract isServer()Z
.end method

.method public abstract isValidStreamId(I)Z
.end method

.method public abstract lastStreamCreated()I
.end method

.method public abstract lastStreamKnownByPeer()I
.end method

.method public abstract maxActiveStreams()I
.end method

.method public abstract maxActiveStreams(I)V
.end method

.method public abstract mayHaveCreatedStream(I)Z
.end method

.method public abstract numActiveStreams()I
.end method

.method public abstract opposite()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
            "+",
            "Lio/netty/handler/codec/http2/Http2FlowController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;
.end method
