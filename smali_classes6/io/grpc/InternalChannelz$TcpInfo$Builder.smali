.class public final Lio/grpc/InternalChannelz$TcpInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz$TcpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private advmss:I

.field private ato:I

.field private backoff:I

.field private caState:I

.field private fackets:I

.field private lastAckRecv:I

.field private lastAckSent:I

.field private lastDataRecv:I

.field private lastDataSent:I

.field private lost:I

.field private options:I

.field private pmtu:I

.field private probes:I

.field private rcvMss:I

.field private rcvSsthresh:I

.field private rcvWscale:I

.field private reordering:I

.field private retrans:I

.field private retransmits:I

.field private rto:I

.field private rtt:I

.field private rttvar:I

.field private sacked:I

.field private sndCwnd:I

.field private sndMss:I

.field private sndSsthresh:I

.field private sndWscale:I

.field private state:I

.field private unacked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/InternalChannelz$TcpInfo;
    .locals 33

    move-object/from16 v0, p0

    new-instance v31, Lio/grpc/InternalChannelz$TcpInfo;

    move-object/from16 v1, v31

    iget v2, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->state:I

    iget v3, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->caState:I

    iget v4, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->retransmits:I

    iget v5, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->probes:I

    iget v6, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->backoff:I

    iget v7, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->options:I

    iget v8, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndWscale:I

    iget v9, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rcvWscale:I

    iget v10, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rto:I

    iget v11, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->ato:I

    iget v12, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndMss:I

    iget v13, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rcvMss:I

    iget v14, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->unacked:I

    iget v15, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sacked:I

    move-object/from16 v32, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lost:I

    move/from16 v16, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->retrans:I

    move/from16 v17, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->fackets:I

    move/from16 v18, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastDataSent:I

    move/from16 v19, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastAckSent:I

    move/from16 v20, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastDataRecv:I

    move/from16 v21, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastAckRecv:I

    move/from16 v22, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->pmtu:I

    move/from16 v23, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rcvSsthresh:I

    move/from16 v24, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rtt:I

    move/from16 v25, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rttvar:I

    move/from16 v26, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndSsthresh:I

    move/from16 v27, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndCwnd:I

    move/from16 v28, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->advmss:I

    move/from16 v29, v1

    iget v1, v0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->reordering:I

    move/from16 v30, v1

    move-object/from16 v1, v32

    invoke-direct/range {v1 .. v30}, Lio/grpc/InternalChannelz$TcpInfo;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-object v31
.end method

.method public setAdvmss(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->advmss:I

    return-object p0
.end method

.method public setAto(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->ato:I

    return-object p0
.end method

.method public setBackoff(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->backoff:I

    return-object p0
.end method

.method public setCaState(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->caState:I

    return-object p0
.end method

.method public setFackets(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->fackets:I

    return-object p0
.end method

.method public setLastAckRecv(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastAckRecv:I

    return-object p0
.end method

.method public setLastAckSent(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastAckSent:I

    return-object p0
.end method

.method public setLastDataRecv(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastDataRecv:I

    return-object p0
.end method

.method public setLastDataSent(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lastDataSent:I

    return-object p0
.end method

.method public setLost(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->lost:I

    return-object p0
.end method

.method public setOptions(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->options:I

    return-object p0
.end method

.method public setPmtu(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->pmtu:I

    return-object p0
.end method

.method public setProbes(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->probes:I

    return-object p0
.end method

.method public setRcvMss(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rcvMss:I

    return-object p0
.end method

.method public setRcvSsthresh(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rcvSsthresh:I

    return-object p0
.end method

.method public setRcvWscale(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rcvWscale:I

    return-object p0
.end method

.method public setReordering(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->reordering:I

    return-object p0
.end method

.method public setRetrans(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->retrans:I

    return-object p0
.end method

.method public setRetransmits(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->retransmits:I

    return-object p0
.end method

.method public setRto(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rto:I

    return-object p0
.end method

.method public setRtt(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rtt:I

    return-object p0
.end method

.method public setRttvar(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->rttvar:I

    return-object p0
.end method

.method public setSacked(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sacked:I

    return-object p0
.end method

.method public setSndCwnd(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndCwnd:I

    return-object p0
.end method

.method public setSndMss(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndMss:I

    return-object p0
.end method

.method public setSndSsthresh(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndSsthresh:I

    return-object p0
.end method

.method public setSndWscale(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->sndWscale:I

    return-object p0
.end method

.method public setState(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->state:I

    return-object p0
.end method

.method public setUnacked(I)Lio/grpc/InternalChannelz$TcpInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/InternalChannelz$TcpInfo$Builder;->unacked:I

    return-object p0
.end method
