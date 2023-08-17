.class public abstract Lio/grpc/util/ForwardingClientStreamTracer;
.super Lio/grpc/ClientStreamTracer;
.source "SourceFile"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/2861"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delegate()Lio/grpc/ClientStreamTracer;
.end method

.method public inboundHeaders()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer;->inboundHeaders()V

    return-void
.end method

.method public inboundMessage(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/StreamTracer;->inboundMessage(I)V

    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 6

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/StreamTracer;->inboundMessageRead(IJJ)V

    return-void
.end method

.method public inboundTrailers(Lio/grpc/Metadata;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->inboundTrailers(Lio/grpc/Metadata;)V

    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/StreamTracer;->inboundUncompressedSize(J)V

    return-void
.end method

.method public inboundWireSize(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/StreamTracer;->inboundWireSize(J)V

    return-void
.end method

.method public outboundHeaders()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer;->outboundHeaders()V

    return-void
.end method

.method public outboundMessage(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/StreamTracer;->outboundMessage(I)V

    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 6

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/StreamTracer;->outboundMessageSent(IJJ)V

    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/StreamTracer;->outboundUncompressedSize(J)V

    return-void
.end method

.method public outboundWireSize(J)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/StreamTracer;->outboundWireSize(J)V

    return-void
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/StreamTracer;->streamClosed(Lio/grpc/Status;)V

    return-void
.end method

.method public streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/util/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
