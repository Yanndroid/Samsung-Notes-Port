.class public interface abstract Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

.field public static final NEVER_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->NEVER_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    new-instance v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;->ALWAYS_SKIP:Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionFilter;

    return-void
.end method


# virtual methods
.method public abstract mustSkip(Lio/netty/handler/codec/http/websocketx/WebSocketFrame;)Z
.end method
