.class public interface abstract Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Frame;
.implements Lio/netty/buffer/ByteBufHolder;


# virtual methods
.method public abstract content()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract copy()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract duplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract errorCode()J
.end method

.method public abstract extraStreamIds()I
.end method

.method public abstract lastStreamId()I
.end method

.method public abstract replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract retain()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract retainedDuplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract setExtraStreamIds(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract touch()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
.end method
