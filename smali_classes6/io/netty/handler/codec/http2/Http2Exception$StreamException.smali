.class public Lio/netty/handler/codec/http2/Http2Exception$StreamException;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x85c69964ce66d40L


# instance fields
.field private final streamId:I


# direct methods
.method public constructor <init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->NO_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p2, p3, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    iput p1, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId:I

    return-void
.end method

.method public constructor <init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->NO_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p2, p3, p4, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    iput p1, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId:I

    return-void
.end method


# virtual methods
.method public streamId()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId:I

    return v0
.end method
