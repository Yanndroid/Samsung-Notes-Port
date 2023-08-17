.class public interface abstract Lio/netty/handler/codec/http2/Http2FrameListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
.end method

.method public abstract onGoAwayRead(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
.end method

.method public abstract onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
.end method

.method public abstract onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
.end method

.method public abstract onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
.end method

.method public abstract onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
.end method

.method public abstract onPriorityRead(Lio/netty/channel/ChannelHandlerContext;IISZ)V
.end method

.method public abstract onPushPromiseRead(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
.end method

.method public abstract onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
.end method

.method public abstract onSettingsAckRead(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
.end method

.method public abstract onUnknownFrame(Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
.end method

.method public abstract onWindowUpdateRead(Lio/netty/channel/ChannelHandlerContext;II)V
.end method
