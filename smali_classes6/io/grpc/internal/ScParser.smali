.class public final Lio/grpc/internal/ScParser;
.super Lio/grpc/NameResolver$ServiceConfigParser;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

.field private final maxHedgedAttemptsLimit:I

.field private final maxRetryAttemptsLimit:I

.field private final retryEnabled:Z


# direct methods
.method public constructor <init>(ZIILio/grpc/internal/AutoConfiguredLoadBalancerFactory;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/NameResolver$ServiceConfigParser;-><init>()V

    iput-boolean p1, p0, Lio/grpc/internal/ScParser;->retryEnabled:Z

    iput p2, p0, Lio/grpc/internal/ScParser;->maxRetryAttemptsLimit:I

    iput p3, p0, Lio/grpc/internal/ScParser;->maxHedgedAttemptsLimit:I

    const-string p1, "autoLoadBalancerFactory"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iput-object p1, p0, Lio/grpc/internal/ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    return-void
.end method


# virtual methods
.method public parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-virtual {v0, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->parseLoadBalancerPolicy(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lio/grpc/internal/ScParser;->retryEnabled:Z

    iget v2, p0, Lio/grpc/internal/ScParser;->maxRetryAttemptsLimit:I

    iget v3, p0, Lio/grpc/internal/ScParser;->maxHedgedAttemptsLimit:I

    invoke-static {p1, v1, v2, v3, v0}, Lio/grpc/internal/ManagedChannelServiceConfig;->fromServiceConfig(Ljava/util/Map;ZIILjava/lang/Object;)Lio/grpc/internal/ManagedChannelServiceConfig;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    const-string v1, "failed to parse service config"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/NameResolver$ConfigOrError;->fromError(Lio/grpc/Status;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object p1

    return-object p1
.end method
