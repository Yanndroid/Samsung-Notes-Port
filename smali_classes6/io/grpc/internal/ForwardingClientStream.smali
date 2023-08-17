.class abstract Lio/grpc/internal/ForwardingClientStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    return-void
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    return-void
.end method

.method public abstract delegate()Lio/grpc/internal/ClientStream;
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Stream;->flush()V

    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public halfClose()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Stream;->isReady()Z

    move-result v0

    return v0
.end method

.method public optimizeForDirectExecutor()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/Stream;->optimizeForDirectExecutor()V

    return-void
.end method

.method public request(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->request(I)V

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->setCompressor(Lio/grpc/Compressor;)V

    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setDeadline(Lio/grpc/Deadline;)V

    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V

    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setFullStreamDecompression(Z)V

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMaxInboundMessageSize(I)V

    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMaxOutboundMessageSize(I)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->setMessageCompression(Z)V

    return-void
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStream;->delegate()Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/Stream;->writeMessage(Ljava/io/InputStream;)V

    return-void
.end method
