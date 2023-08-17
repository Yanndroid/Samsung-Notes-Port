.class final Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Connection$Endpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultEndpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lio/netty/handler/codec/http2/Http2FlowController;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
        "TF;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private flowController:Lio/netty/handler/codec/http2/Http2FlowController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private lastStreamKnownByPeer:I

.field private maxActiveStreams:I

.field private final maxReservedStreams:I

.field private maxStreams:I

.field private nextReservationStreamId:I

.field private nextStreamIdToCreate:I

.field public numActiveStreams:I

.field public numStreams:I

.field private pushToAllowed:Z

.field private final server:Z

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ZI)V
    .locals 1

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer:I

    iput-boolean p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->server:Z

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextStreamIdToCreate:I

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextReservationStreamId:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextStreamIdToCreate:I

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextReservationStreamId:I

    :goto_0
    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->pushToAllowed:Z

    const p1, 0x7fffffff

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxActiveStreams:I

    const-string p1, "maxReservedStreams"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxReservedStreams:I

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->updateMaxStreams()V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)I
    .locals 0

    iget p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer:I

    return p0
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer(I)V

    return-void
.end method

.method private addStream(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v0, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->id()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v1, v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v1, v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onStreamAdded(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->access$400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Caught Throwable from listener onStreamAdded."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkNewStreamAllowed(ILio/netty/handler/codec/http2/Http2Stream$State;)V
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Cannot create stream %d greater than Last-Stream-ID %d from GOAWAY."

    invoke-static {p1, p2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isValidStreamId(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-ltz p1, :cond_3

    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->server:Z

    if-eqz p1, :cond_2

    const-string p1, "server"

    goto :goto_1

    :cond_2
    const-string p1, "client"

    :goto_1
    aput-object p1, v0, v2

    const-string p1, "Request stream %d is not correct for %s connection"

    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_3
    new-instance p1, Lio/netty/handler/codec/http2/Http2NoMoreStreamIdsException;

    invoke-direct {p1}, Lio/netty/handler/codec/http2/Http2NoMoreStreamIdsException;-><init>()V

    throw p1

    :cond_4
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextStreamIdToCreate:I

    if-lt p1, v0, :cond_d

    if-lez v0, :cond_c

    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-eq p2, v0, :cond_6

    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-ne p2, v0, :cond_5

    goto :goto_2

    :cond_5
    move p2, v3

    goto :goto_3

    :cond_6
    :goto_2
    move p2, v2

    :goto_3
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->canOpenStream()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    if-eqz p2, :cond_a

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numStreams:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxStreams:I

    if-lt v0, v1, :cond_a

    :cond_8
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum active streams violated for this endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    iget p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxStreams:I

    goto :goto_4

    :cond_9
    iget p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxActiveStreams:I

    :goto_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, p2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_a
    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->isClosed()Z

    move-result p2

    if-nez p2, :cond_b

    return-void

    :cond_b
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Attempted to create stream id %d after connection was closed"

    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_c
    new-instance p1, Lio/netty/handler/codec/http2/Http2Exception;

    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->GRACEFUL_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v1, "Stream IDs are exhausted for this endpoint."

    invoke-direct {p1, p2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    throw p1

    :cond_d
    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextStreamIdToCreate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Request stream %d is behind the next expected stream %d"

    invoke-static {p2, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->closedStreamError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private incrementExpectedStreamId(I)V
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextReservationStreamId:I

    if-le p1, v0, :cond_0

    if-ltz v0, :cond_0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextReservationStreamId:I

    :cond_0
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextStreamIdToCreate:I

    iget p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numStreams:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numStreams:I

    return-void
.end method

.method private isLocal()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v0, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lastStreamKnownByPeer(I)V
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer:I

    return-void
.end method

.method private updateMaxStreams()V
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxActiveStreams:I

    int-to-long v0, v0

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxReservedStreams:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxStreams:I

    return-void
.end method


# virtual methods
.method public allowPushTo(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->server:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Servers do not allow push"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->pushToAllowed:Z

    return-void
.end method

.method public allowPushTo()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->pushToAllowed:Z

    return v0
.end method

.method public canOpenStream()Z
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxActiveStreams:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createStream(IZ)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    .locals 2

    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isLocal()Z

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeState(ILio/netty/handler/codec/http2/Http2Stream$State;ZZ)Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->checkNewStreamAllowed(ILio/netty/handler/codec/http2/Http2Stream$State;)V

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {v0, v1, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ILio/netty/handler/codec/http2/Http2Stream$State;)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->incrementExpectedStreamId(I)V

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->addStream(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->activate()V

    return-object v0
.end method

.method public bridge synthetic createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->createStream(IZ)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    move-result-object p1

    return-object p1
.end method

.method public created(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1

    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->createdBy()Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public flowController()Lio/netty/handler/codec/http2/Http2FlowController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->flowController:Lio/netty/handler/codec/http2/Http2FlowController;

    return-object v0
.end method

.method public flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    const-string v0, "flowController"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2FlowController;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->flowController:Lio/netty/handler/codec/http2/Http2FlowController;

    return-void
.end method

.method public incrementAndGetNextStreamId()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextReservationStreamId:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextReservationStreamId:I

    :cond_0
    return v0
.end method

.method public isServer()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->server:Z

    return v0
.end method

.method public isValidStreamId(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->server:Z

    and-int/2addr p1, v1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public lastStreamCreated()I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->nextStreamIdToCreate:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastStreamKnownByPeer()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer:I

    return v0
.end method

.method public maxActiveStreams()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxActiveStreams:I

    return v0
.end method

.method public maxActiveStreams(I)V
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->maxActiveStreams:I

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->updateMaxStreams()V

    return-void
.end method

.method public mayHaveCreatedStream(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isValidStreamId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamCreated()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public numActiveStreams()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    return v0
.end method

.method public opposite()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
            "+",
            "Lio/netty/handler/codec/http2/Http2FlowController;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v0, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v0, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    :goto_0
    return-object v0
.end method

.method public reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Stream$State;->localSideOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Stream$State;->remoteSideOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->opposite()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_1

    :cond_1
    sget-object p2, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    :goto_1
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->checkNewStreamAllowed(ILio/netty/handler/codec/http2/Http2Stream$State;)V

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {v0, v1, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ILio/netty/handler/codec/http2/Http2Stream$State;)V

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->incrementExpectedStreamId(I)V

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->addStream(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    return-object v0

    :cond_2
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Server push not allowed to opposite endpoint"

    invoke-static {p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_3
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Stream %d is not open for sending push promise"

    invoke-static {p1, p2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_4
    sget-object p1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Parent stream missing"

    invoke-static {p1, v0, p2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->reservePushStream(ILio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    move-result-object p1

    return-object p1
.end method
