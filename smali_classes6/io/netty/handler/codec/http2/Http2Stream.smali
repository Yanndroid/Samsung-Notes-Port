.class public interface abstract Lio/netty/handler/codec/http2/Http2Stream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2Stream$State;
    }
.end annotation


# virtual methods
.method public abstract close()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract closeLocalSide()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract closeRemoteSide()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract headersReceived(Z)Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract headersSent(Z)Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract id()I
.end method

.method public abstract isHeadersReceived()Z
.end method

.method public abstract isHeadersSent()Z
.end method

.method public abstract isPushPromiseSent()Z
.end method

.method public abstract isResetSent()Z
.end method

.method public abstract isTrailersReceived()Z
.end method

.method public abstract isTrailersSent()Z
.end method

.method public abstract open(Z)Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract pushPromiseSent()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract removeProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract resetSent()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;",
            "TV;)TV;"
        }
    .end annotation
.end method

.method public abstract state()Lio/netty/handler/codec/http2/Http2Stream$State;
.end method
