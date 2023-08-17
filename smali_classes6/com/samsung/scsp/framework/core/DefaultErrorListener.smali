.class public Lcom/samsung/scsp/framework/core/DefaultErrorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/DefaultErrorListener;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleRegistrationRequired(Lcom/samsung/scsp/framework/core/ScspException;)V
    .locals 1

    iget p1, p1, Lcom/samsung/scsp/framework/core/ScspException;->rcode:I

    const v0, 0x2625de9

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->onRegistrationRequired()V

    :cond_0
    return-void
.end method

.method public handleUnauthenticatedForSC(Lcom/samsung/scsp/framework/core/ScspException;Lcom/samsung/scsp/framework/core/network/HttpRequest;)V
    .locals 3

    iget p1, p1, Lcom/samsung/scsp/framework/core/ScspException;->rcode:I

    const v0, 0x263e0a2

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getHeaderCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {p2, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getHeaderKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-static {v2, v1}, Lcom/samsung/scsp/framework/core/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getHeaderValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-static {p1}, Lcom/samsung/scsp/framework/core/identity/ScspIdentity;->onUnauthenticatedForSC(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onError(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/DefaultErrorListener;->tag:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->registrationId:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p3, v1

    const/4 v0, 0x3

    aput-object p4, p3, v0

    const-string v0, "[%s][%s][%s] %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/scsp/error/Logger;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class p3, Lcom/samsung/scsp/framework/core/ScspException;

    invoke-virtual {p2, p4, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/scsp/framework/core/ScspException;

    invoke-virtual {p0, p2}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;->handleRegistrationRequired(Lcom/samsung/scsp/framework/core/ScspException;)V

    invoke-virtual {p0, p2, p1}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;->handleUnauthenticatedForSC(Lcom/samsung/scsp/framework/core/ScspException;Lcom/samsung/scsp/framework/core/network/HttpRequest;)V

    throw p2
.end method
