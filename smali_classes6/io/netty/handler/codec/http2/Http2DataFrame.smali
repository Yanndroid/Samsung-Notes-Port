.class public interface abstract Lio/netty/handler/codec/http2/Http2DataFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamFrame;
.implements Lio/netty/buffer/ByteBufHolder;


# virtual methods
.method public abstract content()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract copy()Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract duplicate()Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract initialFlowControlledBytes()I
.end method

.method public abstract isEndStream()Z
.end method

.method public abstract padding()I
.end method

.method public abstract replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract retain()Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract retainedDuplicate()Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract touch()Lio/netty/handler/codec/http2/Http2DataFrame;
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2DataFrame;
.end method
