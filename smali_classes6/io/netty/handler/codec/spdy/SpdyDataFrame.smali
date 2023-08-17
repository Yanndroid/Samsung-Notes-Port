.class public interface abstract Lio/netty/handler/codec/spdy/SpdyDataFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/ByteBufHolder;
.implements Lio/netty/handler/codec/spdy/SpdyStreamFrame;


# virtual methods
.method public abstract content()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract copy()Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract duplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract retainedDuplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract setStreamId(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;
.end method
