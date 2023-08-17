.class Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closeStreamsGreaterThanLastKnownStreamId(ILio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

.field public final synthetic val$endpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

.field public final synthetic val$lastKnownStream:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ILio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;->val$lastKnownStream:I

    iput-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;->val$endpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 2

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;->val$lastKnownStream:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;->val$endpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isValidStreamId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
