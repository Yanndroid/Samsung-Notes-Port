.class public Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final UNIQUE_IDENTIFIER:Ljava/lang/String; = "uid"

.field private static final UNIQUE_TENANT_IDENTIFIER:Ljava/lang/String; = "utid"

.field private static final serialVersionUID:J = 0x2e29f72b8bc00c2bL


# instance fields
.field private mRawClientInfo:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUtid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rawClientInfo is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/extras/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/JsonUtil;->extractJsonObjectIntoMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUid:Ljava/lang/String;

    const-string/jumbo v1, "utid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUtid:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mRawClientInfo:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    const-string v1, ""

    const-string v2, "invalid_jwt"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ClientInfo cannot be null or blank."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getRawClientInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mRawClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUtid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/ClientInfo;->mUtid:Ljava/lang/String;

    return-object v0
.end method
