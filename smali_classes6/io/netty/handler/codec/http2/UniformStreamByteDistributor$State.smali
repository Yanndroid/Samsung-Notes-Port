.class final Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public enqueued:Z

.field public final stream:Lio/netty/handler/codec/http2/Http2Stream;

.field public streamableBytes:I

.field public final synthetic this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

.field public windowNegative:Z

.field public writing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    return-void
.end method


# virtual methods
.method public addToQueue()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->removeFromQueue()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->updateStreamableBytes(IZI)V

    return-void
.end method

.method public removeFromQueue()V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateStreamableBytes(IZI)V
    .locals 5

    iget v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    sub-int v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    iget-object p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$200(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$202(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;J)J

    :cond_0
    if-gez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->windowNegative:Z

    if-eqz p2, :cond_3

    if-gtz p3, :cond_2

    if-nez p3, :cond_3

    iget-boolean p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->addToQueue()V

    :cond_3
    return-void
.end method

.method public write(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p2, v1, p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;->write(Lio/netty/handler/codec/http2/Http2Stream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "byte distribution write error"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    throw p1
.end method
