.class public Lcom/microsoft/identity/common/java/platform/JweResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;
    }
.end annotation


# instance fields
.field public mAuthenticationTag:Ljava/lang/String;

.field public mEncryptedKey:Ljava/lang/String;

.field public mIv:Ljava/lang/String;

.field public mJweHeader:Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

.field public mPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJwe(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse;
    .locals 4

    new-instance v0, Lcom/microsoft/identity/common/java/platform/JweResponse;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/platform/JweResponse;-><init>()V

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    iput-object v3, v0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mEncryptedKey:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    iput-object v3, v0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mIv:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, p0, v3

    iput-object v3, v0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mPayload:Ljava/lang/String;

    array-length v3, p0

    if-le v3, v2, :cond_0

    aget-object p0, p0, v2

    iput-object p0, v0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mAuthenticationTag:Ljava/lang/String;

    :cond_0
    const/16 p0, 0x8

    invoke-static {v1, p0}, Lcz/msebera/android/httpclient/extras/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->builder()Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string v2, "alg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->algorithm(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string/jumbo v2, "typ"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->type(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string/jumbo v2, "x5t"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509CertificateThumbprint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string/jumbo v2, "x5c"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509Certificate(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string v2, "kid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyID(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string/jumbo v2, "use"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyUse(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string v2, "enc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->encryptionAlgorithm(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    const-string v2, "ctx"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->context(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->build()Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mJweHeader:Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JWE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAuthenticationTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mAuthenticationTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mEncryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mIv:Ljava/lang/String;

    return-object v0
.end method

.method public getJweHeader()Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mJweHeader:Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse;->mPayload:Ljava/lang/String;

    return-object v0
.end method
