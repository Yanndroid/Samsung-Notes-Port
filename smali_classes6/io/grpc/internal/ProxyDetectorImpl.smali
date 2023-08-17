.class Lio/grpc/internal/ProxyDetectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/ProxyDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTHENTICATOR:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

.field private static final DEFAULT_PROXY_SELECTOR:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRPC_PROXY_ENV_VAR:Ljava/lang/String; = "GRPC_PROXY_EXP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROXY_SCHEME:Ljava/lang/String; = "https"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final authenticationProvider:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

.field private final overrideProxyAddress:Ljava/net/InetSocketAddress;

.field private final proxySelector:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/internal/ProxyDetectorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    new-instance v0, Lio/grpc/internal/ProxyDetectorImpl$1;

    invoke-direct {v0}, Lio/grpc/internal/ProxyDetectorImpl$1;-><init>()V

    sput-object v0, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_AUTHENTICATOR:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    new-instance v0, Lio/grpc/internal/ProxyDetectorImpl$2;

    invoke-direct {v0}, Lio/grpc/internal/ProxyDetectorImpl$2;-><init>()V

    sput-object v0, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_PROXY_SELECTOR:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_PROXY_SELECTOR:Lcom/google/common/base/Supplier;

    sget-object v1, Lio/grpc/internal/ProxyDetectorImpl;->DEFAULT_AUTHENTICATOR:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    const-string v2, "GRPC_PROXY_EXP"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/internal/ProxyDetectorImpl;-><init>(Lcom/google/common/base/Supplier;Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;",
            "Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    iput-object p1, p0, Lio/grpc/internal/ProxyDetectorImpl;->proxySelector:Lcom/google/common/base/Supplier;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    iput-object p1, p0, Lio/grpc/internal/ProxyDetectorImpl;->authenticationProvider:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxy(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private detectProxy(Ljava/net/InetSocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/net/URI;

    const-string v2, "https"

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Lio/grpc/internal/ProxyDetectorImpl;->proxySelector:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    sget-object p1, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "proxy selector is null, so continuing without proxy lookup"

    invoke-virtual {p1, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v9}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    sget-object v2, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "More than 1 proxy detected, gRPC will select the first one"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lio/grpc/internal/ProxyDetectorImpl;->authenticationProvider:Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v8, 0x0

    const-string v6, "https"

    const-string v7, ""

    invoke-interface/range {v2 .. v8}, Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v4, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v4

    :cond_3
    invoke-static {}, Lio/grpc/HttpConnectProxiedSocketAddress;->newBuilder()Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setTargetAddress(Ljava/net/InetSocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setProxyAddress(Ljava/net/SocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object p1

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->build()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setUsername(Ljava/lang/String;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-virtual {p1, v0}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setPassword(Ljava/lang/String;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->build()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    sget-object v1, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to construct URI for proxy lookup, proceeding without proxy"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    sget-object v1, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to get host for proxy lookup, proceeding without proxy"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static overrideProxy(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x50

    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    sget-object v1, Lio/grpc/internal/ProxyDetectorImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public proxyFor(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    invoke-static {}, Lio/grpc/HttpConnectProxiedSocketAddress;->newBuilder()Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ProxyDetectorImpl;->overrideProxyAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setProxyAddress(Ljava/net/SocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object v0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->setTargetAddress(Ljava/net/InetSocketAddress;)Lio/grpc/HttpConnectProxiedSocketAddress$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/HttpConnectProxiedSocketAddress$Builder;->build()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1}, Lio/grpc/internal/ProxyDetectorImpl;->detectProxy(Ljava/net/InetSocketAddress;)Lio/grpc/ProxiedSocketAddress;

    move-result-object p1

    return-object p1
.end method
