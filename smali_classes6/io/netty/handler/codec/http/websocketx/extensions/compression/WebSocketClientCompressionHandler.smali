.class public final Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;
.super Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;
.source "SourceFile"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;->INSTANCE:Lio/netty/handler/codec/http/websocketx/extensions/compression/WebSocketClientCompressionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;

    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;

    invoke-direct {v1}, Lio/netty/handler/codec/http/websocketx/extensions/compression/PerMessageDeflateClientExtensionHandshaker;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;

    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/extensions/compression/DeflateFrameClientExtensionHandshaker;-><init>(Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandler;-><init>([Lio/netty/handler/codec/http/websocketx/extensions/WebSocketClientExtensionHandshaker;)V

    return-void
.end method
