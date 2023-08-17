.class final Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public size(Ljava/lang/Object;)I
    .locals 6

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    check-cast p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2DataFrame;->initialFlowControlledBytes()I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x9

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    return p1
.end method
