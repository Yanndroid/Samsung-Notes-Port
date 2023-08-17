.class public interface abstract Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameWriter;


# virtual methods
.method public abstract connection()Lio/netty/handler/codec/http2/Http2Connection;
.end method

.method public abstract flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;
.end method

.method public abstract frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;
.end method

.method public abstract lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V
.end method

.method public abstract pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;
.end method

.method public abstract remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
.end method

.method public abstract writeFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
