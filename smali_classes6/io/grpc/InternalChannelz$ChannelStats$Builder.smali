.class public final Lio/grpc/InternalChannelz$ChannelStats$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz$ChannelStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callsFailed:J

.field private callsStarted:J

.field private callsSucceeded:J

.field private channelTrace:Lio/grpc/InternalChannelz$ChannelTrace;

.field private lastCallStartedNanos:J

.field private sockets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lio/grpc/ConnectivityState;

.field private subchannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->subchannels:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->sockets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/InternalChannelz$ChannelStats;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lio/grpc/InternalChannelz$ChannelStats;

    iget-object v2, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->target:Ljava/lang/String;

    iget-object v3, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->state:Lio/grpc/ConnectivityState;

    iget-object v4, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->channelTrace:Lio/grpc/InternalChannelz$ChannelTrace;

    iget-wide v5, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->callsStarted:J

    iget-wide v7, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->callsSucceeded:J

    iget-wide v9, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->callsFailed:J

    iget-wide v11, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->lastCallStartedNanos:J

    iget-object v13, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->subchannels:Ljava/util/List;

    iget-object v14, v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->sockets:Ljava/util/List;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/grpc/InternalChannelz$ChannelStats;-><init>(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/InternalChannelz$ChannelTrace;JJJJLjava/util/List;Ljava/util/List;Lio/grpc/InternalChannelz$1;)V

    return-object v16
.end method

.method public setCallsFailed(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-wide p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->callsFailed:J

    return-object p0
.end method

.method public setCallsStarted(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-wide p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->callsStarted:J

    return-object p0
.end method

.method public setCallsSucceeded(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-wide p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->callsSucceeded:J

    return-object p0
.end method

.method public setChannelTrace(Lio/grpc/InternalChannelz$ChannelTrace;)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->channelTrace:Lio/grpc/InternalChannelz$ChannelTrace;

    return-object p0
.end method

.method public setLastCallStartedNanos(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-wide p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->lastCallStartedNanos:J

    return-object p0
.end method

.method public setSockets(Ljava/util/List;)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;)",
            "Lio/grpc/InternalChannelz$ChannelStats$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->subchannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->sockets:Ljava/util/List;

    return-object p0
.end method

.method public setState(Lio/grpc/ConnectivityState;)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->state:Lio/grpc/ConnectivityState;

    return-object p0
.end method

.method public setSubchannels(Ljava/util/List;)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/InternalWithLogId;",
            ">;)",
            "Lio/grpc/InternalChannelz$ChannelStats$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->sockets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->subchannels:Ljava/util/List;

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelStats$Builder;
    .locals 0

    iput-object p1, p0, Lio/grpc/InternalChannelz$ChannelStats$Builder;->target:Ljava/lang/String;

    return-object p0
.end method
