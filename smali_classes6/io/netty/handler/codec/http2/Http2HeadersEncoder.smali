.class public interface abstract Lio/netty/handler/codec/http2/Http2HeadersEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;,
        Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;
    }
.end annotation


# static fields
.field public static final ALWAYS_SENSITIVE:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

.field public static final NEVER_SENSITIVE:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder;->NEVER_SENSITIVE:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    new-instance v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2HeadersEncoder;->ALWAYS_SENSITIVE:Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    return-void
.end method


# virtual methods
.method public abstract configuration()Lio/netty/handler/codec/http2/Http2HeadersEncoder$Configuration;
.end method

.method public abstract encodeHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBuf;)V
.end method
