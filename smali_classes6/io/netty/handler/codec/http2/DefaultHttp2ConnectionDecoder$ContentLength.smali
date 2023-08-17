.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentLength"
.end annotation


# instance fields
.field private final expected:J

.field private seen:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    return-void
.end method


# virtual methods
.method public increaseReceivedBytes(ZIIZ)V
    .locals 10

    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz p3, :cond_4

    iget-wide v6, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    cmp-long p3, v0, v6

    const/4 v8, 0x2

    const-string v9, "Received amount of data %d does not match content-length header %d"

    if-gtz p3, :cond_3

    if-eqz p4, :cond_2

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    cmp-long p1, v6, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v4

    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v5

    invoke-static {p2, p1, v9, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v4

    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v5

    invoke-static {p2, p1, v9, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_4
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p3, v5, [Ljava/lang/Object;

    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v4

    const-string p4, "Received amount of data did overflow and so not match content-length header %d"

    invoke-static {p2, p1, p4, p3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method
