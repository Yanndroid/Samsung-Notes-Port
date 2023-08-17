.class public abstract Lio/grpc/internal/AbstractClientStream;
.super Lio/grpc/internal/AbstractStream;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientStream;
.implements Lio/grpc/internal/MessageFramer$Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractClientStream$GetFramer;,
        Lio/grpc/internal/AbstractClientStream$TransportState;,
        Lio/grpc/internal/AbstractClientStream$Sink;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile cancelled:Z

.field private final framer:Lio/grpc/internal/Framer;

.field private headers:Lio/grpc/Metadata;

.field private shouldBeCountedForInUse:Z

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private useGet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/AbstractClientStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/internal/AbstractStream;-><init>()V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/internal/TransportTracer;

    iput-object p3, p0, Lio/grpc/internal/AbstractClientStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-static {p5}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result p3

    iput-boolean p3, p0, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse:Z

    iput-boolean p6, p0, Lio/grpc/internal/AbstractClientStream;->useGet:Z

    if-nez p6, :cond_0

    new-instance p3, Lio/grpc/internal/MessageFramer;

    invoke-direct {p3, p0, p1, p2}, Lio/grpc/internal/MessageFramer;-><init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V

    iput-object p3, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    iput-object p4, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    goto :goto_0

    :cond_0
    new-instance p1, Lio/grpc/internal/AbstractClientStream$GetFramer;

    invoke-direct {p1, p0, p4, p2}, Lio/grpc/internal/AbstractClientStream$GetFramer;-><init>(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)V

    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    :goto_0
    return-void
.end method

.method public static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public abstract abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
.end method

.method public final appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 2

    invoke-interface {p0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    sget-object v1, Lio/grpc/Grpc;->TRANSPORT_ATTR_REMOTE_ADDR:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    return-void
.end method

.method public final cancel(Lio/grpc/Status;)V
    .locals 3

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/AbstractClientStream$Sink;->cancel(Lio/grpc/Status;)V

    return-void
.end method

.method public final deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/AbstractClientStream$Sink;->writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    return-void
.end method

.method public final framer()Lio/grpc/internal/Framer;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    return-object v0
.end method

.method public getTransportTracer()Lio/grpc/internal/TransportTracer;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/AbstractClientStream$TransportState;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$200(Lio/grpc/internal/AbstractClientStream$TransportState;)V

    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->endOfMessages()V

    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/internal/AbstractStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 6

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$100(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/DecompressorRegistry;)V

    return-void
.end method

.method public final setFullStreamDecompression(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$000(Lio/grpc/internal/AbstractClientStream$TransportState;Z)V

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->setMaxInboundMessageSize(I)V

    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->setMaxOutboundMessageSize(I)V

    return-void
.end method

.method public final shouldBeCountedForInUse()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse:Z

    return v0
.end method

.method public final start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->setListener(Lio/grpc/internal/ClientStreamListener;)V

    iget-boolean p1, p0, Lio/grpc/internal/AbstractClientStream;->useGet:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/AbstractClientStream$Sink;->writeHeaders(Lio/grpc/Metadata;[B)V

    iput-object v1, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    :cond_0
    return-void
.end method

.method public abstract transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
.end method

.method public bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method
