.class Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->deactivate(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

.field public final synthetic val$itr:Ljava/util/Iterator;

.field public final synthetic val$stream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;->this$1:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;->val$stream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    iput-object p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;->val$itr:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;->this$1:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;->val$stream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;->val$itr:Ljava/util/Iterator;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->removeFromActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    return-void
.end method
