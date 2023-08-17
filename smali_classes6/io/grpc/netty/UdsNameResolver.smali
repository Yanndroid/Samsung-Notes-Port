.class final Lio/grpc/netty/UdsNameResolver;
.super Lio/grpc/NameResolver;
.source "SourceFile"


# instance fields
.field private final authority:Ljava/lang/String;

.field private listener:Lio/grpc/NameResolver$Listener2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/NameResolver;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "non-null authority not supported"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p2, p0, Lio/grpc/netty/UdsNameResolver;->authority:Ljava/lang/String;

    return-void
.end method

.method private resolve()V
    .locals 5

    invoke-static {}, Lio/grpc/NameResolver$ResolutionResult;->newBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lio/grpc/EquivalentAddressGroup;

    new-instance v3, Lio/netty/channel/unix/DomainSocketAddress;

    iget-object v4, p0, Lio/grpc/netty/UdsNameResolver;->authority:Ljava/lang/String;

    invoke-direct {v3, v4}, Lio/netty/channel/unix/DomainSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    iget-object v1, p0, Lio/grpc/netty/UdsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {v0}, Lio/grpc/NameResolver$ResolutionResult$Builder;->build()Lio/grpc/NameResolver$ResolutionResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/NameResolver$Listener2;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V

    return-void
.end method


# virtual methods
.method public getServiceAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/UdsNameResolver;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/UdsNameResolver;->resolve()V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public start(Lio/grpc/NameResolver$Listener2;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/UdsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/NameResolver$Listener2;

    iput-object p1, p0, Lio/grpc/netty/UdsNameResolver;->listener:Lio/grpc/NameResolver$Listener2;

    invoke-direct {p0}, Lio/grpc/netty/UdsNameResolver;->resolve()V

    return-void
.end method
