.class abstract Lio/grpc/okhttp/ForwardingFrameWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameWriter;


# instance fields
.field private final delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object p1, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-void
.end method


# virtual methods
.method public ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public connectionPreface()V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    return-void
.end method

.method public data(ZILokio/Buffer;I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V

    return-void
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    return-void
.end method

.method public headers(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lio/grpc/okhttp/internal/framed/FrameWriter;->headers(ILjava/util/List;)V

    return-void
.end method

.method public maxDataLength()I
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v0

    return v0
.end method

.method public ping(ZII)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lio/grpc/okhttp/internal/framed/FrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public settings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V

    return-void
.end method

.method public synReply(ZILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method public synStream(ZZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/ForwardingFrameWriter;->delegate:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    return-void
.end method
