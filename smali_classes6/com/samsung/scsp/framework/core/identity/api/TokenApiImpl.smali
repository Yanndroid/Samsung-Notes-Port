.class public Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenApiImpl"

.field private static final TOKEN_URI:Ljava/lang/String; = "/identity/v1/tokens"


# instance fields
.field private final identityHeader:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

.field private final logger:Lcom/samsung/scsp/error/Logger;

.field private final scontext:Lcom/samsung/scsp/framework/core/SContext;

.field private final scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/scsp/framework/core/SContextHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    invoke-direct {v0}, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->identityHeader:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/SContextHolder;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;)Lcom/samsung/scsp/error/Logger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->logger:Lcom/samsung/scsp/error/Logger;

    return-object p0
.end method


# virtual methods
.method public issue()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/identity/v1/tokens"

    invoke-static {v1, v2, v3}, Lcom/samsung/scsp/framework/core/ers/ScspErs;->getBaseUrlOfPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->identityHeader:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    invoke-virtual {v1, v2}, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->get(Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    sget-object v4, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->POST:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;-><init>(Lcom/samsung/scsp/framework/core/SContextHolder;Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->clearHeader()Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeaderMap(Ljava/util/Map;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontext:Lcom/samsung/scsp/framework/core/SContext;

    invoke-virtual {v3}, Lcom/samsung/scsp/framework/core/SContext;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-sc-app-version"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->build()Lcom/samsung/scsp/framework/core/network/HttpRequest;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object v4, v4, Lcom/samsung/scsp/framework/core/SContextHolder;->network:Lcom/samsung/scsp/framework/core/network/Network;

    new-instance v5, Lcom/samsung/scsp/framework/core/DefaultErrorListener;

    invoke-direct {v5, v0}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;

    invoke-direct {v0, p0, v3, v1}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;-><init>(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;[Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-interface {v4, v2, v5, v0, v1}, Lcom/samsung/scsp/framework/core/network/Network;->post(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0
.end method
