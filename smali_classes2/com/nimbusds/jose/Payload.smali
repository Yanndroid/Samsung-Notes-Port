.class public final Lcom/nimbusds/jose/Payload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/Payload$Origin;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private final bytes:[B

.field private final jsonObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final jwsObject:Lcom/nimbusds/jose/JWSObject;

.field private final origin:Lcom/nimbusds/jose/Payload$Origin;

.field private final signedJWT:Lcom/nimbusds/jwt/SignedJWT;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS object must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Base64URL-encoded object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/SignedJWT;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWT must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The signed JWT must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JSON object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The byte array must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getOrigin()Lcom/nimbusds/jose/Payload$Origin;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-object v0
.end method

.method public toBase64URL()Lcom/nimbusds/jose/util/Base64URL;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    return-object v0
.end method

.method public toBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public toJWSObject()Lcom/nimbusds/jose/JWSObject;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/JWSObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jwt/SignedJWT;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/SignedJWT;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nimbusds/jose/JOSEObject;->getParsedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JOSEObject;->getParsedString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public toType(Lcom/nimbusds/jose/PayloadTransformer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/PayloadTransformer<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/nimbusds/jose/PayloadTransformer;->transform(Lcom/nimbusds/jose/Payload;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
