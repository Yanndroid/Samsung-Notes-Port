.class public interface abstract Lio/netty/handler/codec/http2/Http2LocalFlowController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FlowController;


# virtual methods
.method public abstract consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z
.end method

.method public abstract frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2LocalFlowController;
.end method

.method public abstract initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
.end method

.method public abstract receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V
.end method

.method public abstract unconsumedBytes(Lio/netty/handler/codec/http2/Http2Stream;)I
.end method
