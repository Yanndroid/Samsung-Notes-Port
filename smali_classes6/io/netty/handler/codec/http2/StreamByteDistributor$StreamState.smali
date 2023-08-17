.class public interface abstract Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/StreamByteDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamState"
.end annotation


# virtual methods
.method public abstract hasFrame()Z
.end method

.method public abstract pendingBytes()J
.end method

.method public abstract stream()Lio/netty/handler/codec/http2/Http2Stream;
.end method

.method public abstract windowSize()I
.end method
