.class public final Lio/grpc/inprocess/InProcessChannelBuilder;
.super Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "Lio/grpc/inprocess/InProcessChannelBuilder;",
        ">;"
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1783"
.end annotation


# instance fields
.field private final managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

.field private maxInboundMetadataSize:I

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private transportIncludeStatusCause:Z


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/net/SocketAddress;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->transportIncludeStatusCause:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p2, Lio/grpc/internal/ManagedChannelImplBuilder;

    new-instance v2, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;

    invoke-direct {v2, p0}, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;-><init>(Lio/grpc/inprocess/InProcessChannelBuilder;)V

    const-string v3, "localhost"

    invoke-direct {p2, p1, v3, v2, v1}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iput-object p2, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Lio/grpc/internal/ManagedChannelImplBuilder;

    new-instance v2, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;

    invoke-direct {v2, p0}, Lio/grpc/inprocess/InProcessChannelBuilder$1InProcessChannelTransportFactoryBuilder;-><init>(Lio/grpc/inprocess/InProcessChannelBuilder;)V

    invoke-direct {p1, p2, v2, v1}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    iput-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    :goto_0
    iget-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {p1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsRecordStartedRpcs(Z)V

    iget-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {p1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsRecordFinishedRpcs(Z)V

    iget-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {p1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsRecordRetryMetrics(Z)V

    iget-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;

    return-void
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/DoNotCall;
        value = "Unsupported. Use forName() instead"
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "call forName() instead"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forAddress(Ljava/net/SocketAddress;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2

    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    const-string v1, "address"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/SocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/inprocess/InProcessChannelBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forName(Ljava/lang/String;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2

    new-instance v0, Lio/grpc/inprocess/InProcessSocketAddress;

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/grpc/inprocess/InProcessChannelBuilder;->forAddress(Ljava/net/SocketAddress;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2

    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder;

    const-string v1, "target"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/grpc/inprocess/InProcessChannelBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 5

    new-instance v0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    iget-boolean v3, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->transportIncludeStatusCause:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/util/concurrent/ScheduledExecutorService;IZLio/grpc/inprocess/InProcessChannelBuilder$1;)V

    return-object v0
.end method

.method public delegate()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .annotation build Lio/grpc/Internal;
    .end annotation

    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    return-object v0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    check-cast p1, Lio/grpc/inprocess/InProcessChannelBuilder;

    return-object p1
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize:I

    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/inprocess/InProcessChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public propagateCauseWithStatus(Z)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->transportIncludeStatusCause:Z

    return-object p0
.end method

.method public scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 1

    const-string v0, "scheduledExecutorService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public setStatsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder;->managedChannelImplBuilder:Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->setStatsEnabled(Z)V

    return-void
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->usePlaintext()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/inprocess/InProcessChannelBuilder;->useTransportSecurity()Lio/grpc/inprocess/InProcessChannelBuilder;

    move-result-object v0

    return-object v0
.end method
