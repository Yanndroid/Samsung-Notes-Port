.class final Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/HpackDecoder$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Http2HeadersSink"
.end annotation


# instance fields
.field private exceededMaxLength:Z

.field private final headers:Lio/netty/handler/codec/http2/Http2Headers;

.field private headersLength:J

.field private final maxHeaderListSize:J

.field private previousType:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

.field private final streamId:I

.field private final validate:Z

.field private validationException:Lio/netty/handler/codec/http2/Http2Exception;


# direct methods
.method public constructor <init>(ILio/netty/handler/codec/http2/Http2Headers;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    iput-wide p3, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->maxHeaderListSize:J

    iput p1, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->streamId:I

    iput-boolean p5, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->validate:Z

    return-void
.end method


# virtual methods
.method public appendToHeaderList(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->headersLength:J

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/HpackHeaderField;->sizeOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->headersLength:J

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->exceededMaxLength:Z

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->maxHeaderListSize:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->exceededMaxLength:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->validationException:Lio/netty/handler/codec/http2/Http2Exception;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->validate:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->streamId:I

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->previousType:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-static {v0, p1, v1, v2}, Lio/netty/handler/codec/http2/HpackDecoder;->access$000(ILjava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;Lio/netty/handler/codec/http2/Http2Headers;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->previousType:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->validationException:Lio/netty/handler/codec/http2/Http2Exception;

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->headers:Lio/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    :cond_3
    :goto_2
    return-void
.end method

.method public finish()V
    .locals 4

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->exceededMaxLength:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->streamId:I

    iget-wide v1, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->maxHeaderListSize:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->headerListSizeExceeded(IJZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->validationException:Lio/netty/handler/codec/http2/Http2Exception;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    throw v0
.end method
