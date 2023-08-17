.class public interface abstract Lio/netty/handler/codec/http2/StreamByteDistributor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;,
        Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;
    }
.end annotation


# virtual methods
.method public abstract distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)Z
.end method

.method public abstract updateDependencyTree(IISZ)V
.end method

.method public abstract updateStreamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)V
.end method
