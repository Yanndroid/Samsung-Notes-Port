.class Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;->this$0:Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;->this$0:Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;

    invoke-static {v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->access$000(Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedChannel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder$1;->this$0:Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;

    invoke-virtual {v1, p1, v0}, Lio/netty/handler/codec/http2/CompressorHttp2ConnectionEncoder;->cleanup(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/channel/embedded/EmbeddedChannel;)V

    :cond_0
    return-void
.end method
