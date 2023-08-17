.class public interface abstract Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RSV1:I = 0x4

.field public static final RSV2:I = 0x2

.field public static final RSV3:I = 0x1


# virtual methods
.method public abstract newExtensionDecoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionDecoder;
.end method

.method public abstract newExtensionEncoder()Lio/netty/handler/codec/http/websocketx/extensions/WebSocketExtensionEncoder;
.end method

.method public abstract rsv()I
.end method
