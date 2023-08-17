.class public Lcom/microsoft/identity/common/java/util/JWSBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;,
        Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;
    }
.end annotation


# static fields
.field private static final JWS_HEADER_ALG:Ljava/lang/String; = "RS256"

.field private static final SECONDS_MS:J = 0x3e8L

.field private static final SIGNING_ALGORITHM:Ljava/lang/String; = "SHA256withRSA"

.field private static final TAG:Ljava/lang/String; = "JWSBuilder"

.field private static final sSigner:Lcom/microsoft/identity/common/java/crypto/ISigner;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/crypto/BasicSigner;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/crypto/BasicSigner;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/util/JWSBuilder;->sSigner:Lcom/microsoft/identity/common/java/crypto/ISigner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignedJWT(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5

    const-string v0, "."

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;-><init>(Lcom/microsoft/identity/common/java/util/JWSBuilder$1;)V

    invoke-static {v1, p1}, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;->access$102(Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;->access$202(Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {v1, p1, p2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;->access$302(Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;J)J

    new-instance p1, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;

    invoke-direct {p1, v2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;-><init>(Lcom/microsoft/identity/common/java/util/JWSBuilder$1;)V

    const-string p2, "RS256"

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->access$502(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "JWT"

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->access$602(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x1

    :try_start_0
    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->access$702(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;[Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->access$700(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;)[Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p5

    const/4 v3, 0x2

    invoke-static {p5, v3}, Lcz/msebera/android/httpclient/extras/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, v2

    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "JWSBuilder:generateSignedJWT"

    const-string p5, "Generate client certificate challenge response JWS Header. "

    invoke-static {p4, p5}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->encodeUrlSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->encodeUrlSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/microsoft/identity/common/java/util/JWSBuilder;->sSigner:Lcom/microsoft/identity/common/java/crypto/ISigner;

    const-string p4, "SHA256withRSA"

    sget-object p5, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p5

    invoke-interface {p2, p3, p4, p5}, Lcom/microsoft/identity/common/java/crypto/ISigner;->sign(Ljava/security/PrivateKey;Ljava/lang/String;[B)[B

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->encodeUrlSafeString([B)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string p3, "Certificate encoding is not generated"

    const-string p4, "Certificate encoding error"

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pubKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "privateKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "audience"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nonce"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
