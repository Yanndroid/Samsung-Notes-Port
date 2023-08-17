.class public Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;,
        Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$RequestField;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PKeyAuthChallenge"


# instance fields
.field private final mCertAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field private final mContext:Ljava/lang/String;

.field private final mJwsBuilder:Lcom/microsoft/identity/common/java/util/JWSBuilder;

.field private final mNonce:Ljava/lang/String;

.field private final mSubmitUrl:Ljava/lang/String;

.field private final mTenantId:Ljava/lang/String;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field private final mThumbprint:Ljava/lang/String;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field private final mVersion:Ljava/lang/String;


# direct methods
.method private static $default$jwsBuilder()Lcom/microsoft/identity/common/java/util/JWSBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/util/JWSBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/JWSBuilder;-><init>()V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/util/JWSBuilder;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/util/JWSBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mNonce:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mJwsBuilder:Lcom/microsoft/identity/common/java/util/JWSBuilder;

    iput-object p8, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mTenantId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/microsoft/identity/common/java/util/JWSBuilder;
    .locals 1

    invoke-static {}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->$default$jwsBuilder()Lcom/microsoft/identity/common/java/util/JWSBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge$PKeyAuthChallengeBuilder;-><init>()V

    return-object v0
.end method

.method private getChallengeHeaderWithSignedJwt(Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;)Ljava/util/Map;
    .locals 10
    .param p1    # Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;
        .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mVersion:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, ":getChallengeHeaderWithSignedJwt"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PKeyAuth version mismatch, server provides: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "We support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Proceed anyway with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v4, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mJwsBuilder:Lcom/microsoft/identity/common/java/util/JWSBuilder;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mNonce:Ljava/lang/String;

    iget-object v6, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/microsoft/identity/common/java/util/JWSBuilder;->generateSignedJWT(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Generated a signed challenge response."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "PKeyAuth"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    aput-object v3, v2, p1

    const/4 p1, 0x3

    aput-object v1, v2, p1

    const-string p1, "%s AuthToken=\"%s\",Context=\"%s\",Version=\"%s\""

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Authorization"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "Key Chain certificate exception"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "Key Chain public key exception"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "Key Chain private key exception"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getChallengeHeaderWithoutSignedJwt()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "PKeyAuth"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "1.0"

    aput-object v3, v1, v2

    const-string v2, "%s Context=\"%s\",Version=\"%s\""

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getCertAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    return-object v0
.end method

.method public getChallengeHeader()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    const-string v1, ":getChallengeHeader"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Both cert Authorities and Thumbprint are not provided.Sending a response which is equivalent to no certificate present on client."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithoutSignedJwt()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/microsoft/identity/common/java/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/java/AuthenticationSettings;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/AuthenticationSettings;->getCertificateLoader()Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Certificate loader is not initialized."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithoutSignedJwt()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mTenantId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;->loadCertificate(Ljava/lang/String;)Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Certificate not found."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithoutSignedJwt()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;->isValidIssuer(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found a certificate matching the provided authority."

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithSignedJwt(Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;->getThumbPrint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found a certificate matching the provided thumbprint."

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithSignedJwt(Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {p0}, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->getChallengeHeaderWithoutSignedJwt()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    return-object v0
.end method

.method public getJwsBuilder()Lcom/microsoft/identity/common/java/util/JWSBuilder;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mJwsBuilder:Lcom/microsoft/identity/common/java/util/JWSBuilder;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbprint()Ljava/lang/String;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/challengehandlers/PKeyAuthChallenge;->mVersion:Ljava/lang/String;

    return-object v0
.end method
