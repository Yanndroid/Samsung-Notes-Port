.class Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;->this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$1;->this$0:Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->decompressor(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener;->access$000(Lio/netty/handler/codec/http2/DelegatingDecompressorFrameListener$Http2Decompressor;)V

    :cond_0
    return-void
.end method
