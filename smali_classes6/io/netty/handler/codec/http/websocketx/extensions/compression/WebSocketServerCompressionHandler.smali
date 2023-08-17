.class public Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketServerCompressionHandler;
.super Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;

    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;

    invoke-direct {v1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateServerExtensionHandshaker;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;

    invoke-direct {v1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameServerExtensionHandshaker;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandler;-><init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketServerExtensionHandshaker;)V

    return-void
.end method
