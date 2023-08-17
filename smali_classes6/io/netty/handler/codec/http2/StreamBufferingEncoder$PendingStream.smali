.class final Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingStream"
.end annotation


# instance fields
.field public final ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final frames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;",
            ">;"
        }
    .end annotation
.end field

.field public final streamId:I


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->frames:Ljava/util/Queue;

    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iput p2, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->streamId:I

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->frames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;->release(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendFrames()V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->frames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;

    iget-object v2, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget v3, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$PendingStream;->streamId:I

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Frame;->send(Lio/netty/channel/ChannelHandlerContext;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
