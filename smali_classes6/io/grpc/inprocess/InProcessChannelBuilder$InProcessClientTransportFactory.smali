.class final Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProcessClientTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field private final includeCauseWithStatus:Z

.field private final maxInboundMetadataSize:I

.field private final timerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final useSharedTimer:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;IZ)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    if-eqz v0, :cond_1

    sget-object p1, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {p1}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    iput-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    iput p2, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    iput-boolean p3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->includeCauseWithStatus:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;IZLio/grpc/inprocess/InProcessChannelBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/util/concurrent/ScheduledExecutorService;IZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    if-eqz v0, :cond_1

    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 7

    iget-boolean p3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-nez p3, :cond_0

    new-instance p3, Lio/grpc/inprocess/InProcessTransport;

    iget v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v5

    iget-boolean v6, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->includeCauseWithStatus:Z

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/grpc/inprocess/InProcessTransport;-><init>(Ljava/net/SocketAddress;ILjava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Z)V

    return-object p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The transport factory is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public swapChannelCredentials(Lio/grpc/ChannelCredentials;)Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
