.class public final Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;
.super Lio/netty/handler/codec/CorruptedFrameException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x365fba625ea3ffb2L


# instance fields
.field private final closeStatus:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->reasonText()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->closeStatus:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public closeStatus()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->closeStatus:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0
.end method
