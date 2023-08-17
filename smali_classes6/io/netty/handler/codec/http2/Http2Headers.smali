.class public interface abstract Lio/netty/handler/codec/http2/Http2Headers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/Headers<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
.end method

.method public abstract authority()Ljava/lang/CharSequence;
.end method

.method public abstract contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
.end method

.method public abstract method()Ljava/lang/CharSequence;
.end method

.method public abstract path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
.end method

.method public abstract path()Ljava/lang/CharSequence;
.end method

.method public abstract scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
.end method

.method public abstract scheme()Ljava/lang/CharSequence;
.end method

.method public abstract status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
.end method

.method public abstract status()Ljava/lang/CharSequence;
.end method

.method public abstract valueIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method
