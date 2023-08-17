.class final Lcom/microsoft/identity/client/ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/ClientInfo$ClientInfoClaim;
    }
.end annotation


# instance fields
.field private final mUniqueIdentifier:Ljava/lang/String;

.field private final mUniqueTenantIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueIdentifier:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueTenantIdentifier:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->extractJsonObjectIntoMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueIdentifier:Ljava/lang/String;

    const-string/jumbo v0, "utid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "json_parse_failure"

    const-string v1, "Failed to parse the returned raw client info."

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueIdentifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueIdentifier:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUniqueTenantIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueTenantIdentifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/ClientInfo;->mUniqueTenantIdentifier:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
