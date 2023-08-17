.class public final Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClosedStreamCreationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5da08917295d72beL


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
