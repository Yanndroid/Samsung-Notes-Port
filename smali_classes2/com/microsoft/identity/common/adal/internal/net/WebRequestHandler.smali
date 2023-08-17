.class public Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/net/IWebRequestHandler;


# static fields
.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_JSON:Ljava/lang/String; = "application/json"


# instance fields
.field private mCurrentClientVersion:Ljava/lang/String;

.field private mRequestCorrelationId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->mRequestCorrelationId:Ljava/util/UUID;

    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->mCurrentClientVersion:Ljava/lang/String;

    return-void
.end method

.method private updateHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->mRequestCorrelationId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client-request-id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "x-client-SKU"

    const-string v1, "Android"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->mCurrentClientVersion:Ljava/lang/String;

    const-string/jumbo v1, "x-client-Ver"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-client-OS"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "x-client-DM"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public sendGet(Ljava/net/URL;Ljava/util/Map;)Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;

    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->updateHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "GET"

    invoke-direct {v0, p1, v1, p2}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;->send()Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendPost(Ljava/net/URL;Ljava/util/Map;[BLjava/lang/String;)Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;"
        }
    .end annotation

    new-instance v6, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;

    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->updateHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const-string v2, "POST"

    move-object v0, v6

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)V

    invoke-virtual {v6}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;->send()Lcom/microsoft/identity/common/adal/internal/net/HttpWebResponse;

    move-result-object p1

    return-object p1
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->mCurrentClientVersion:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRequestCorrelationId(Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/net/WebRequestHandler;->mRequestCorrelationId:Ljava/util/UUID;

    return-void
.end method
