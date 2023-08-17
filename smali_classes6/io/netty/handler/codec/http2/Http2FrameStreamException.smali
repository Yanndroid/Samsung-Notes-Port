.class public final Lio/netty/handler/codec/http2/Http2FrameStreamException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3d2978797a1dc044L


# instance fields
.field private final error:Lio/netty/handler/codec/http2/Http2Error;

.field private final stream:Lio/netty/handler/codec/http2/Http2FrameStream;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "stream"

    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FrameStream;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameStreamException;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    const-string p1, "error"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error:Lio/netty/handler/codec/http2/Http2Error;

    return-void
.end method


# virtual methods
.method public error()Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameStreamException;->error:Lio/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method

.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameStreamException;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method
