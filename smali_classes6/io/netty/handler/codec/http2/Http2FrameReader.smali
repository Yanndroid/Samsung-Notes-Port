.class public interface abstract Lio/netty/handler/codec/http2/Http2FrameReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract configuration()Lio/netty/handler/codec/http2/Http2FrameReader$Configuration;
.end method

.method public abstract readFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2FrameListener;)V
.end method
