.class public Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BIRTHDATE:Ljava/lang/String; = "birthdate"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EMAIL_VERIFIED:Ljava/lang/String; = "email_verified"

.field public static final FAMILY_NAME:Ljava/lang/String; = "family_name"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final GIVEN_NAME:Ljava/lang/String; = "given_name"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final MIDDLE_NAME:Ljava/lang/String; = "middle_name"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PHONE_NUMBER_VERIFIED:Ljava/lang/String; = "phone_number_verified"

.field public static final PICTURE:Ljava/lang/String; = "picture"

.field public static final PREFERRED_USERNAME:Ljava/lang/String; = "preferred_username"

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field private static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.java.providers.oauth2.IDToken"

.field public static final UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final WEBSITE:Ljava/lang/String; = "website"

.field public static final ZONEINFO:Ljava/lang/String; = "zoneinfo"


# instance fields
.field private final mRawIdToken:Ljava/lang/String;

.field private final mTokenClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->parseJWT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty raw idtoken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseJWT(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const-string v0, "rawIdToken is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jwt/JWTParser;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/JWT;

    move-result-object p0

    invoke-interface {p0}, Lcom/nimbusds/jwt/JWT;->getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nimbusds/jwt/JWTClaimsSet;->getClaims()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getClaims(String)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse IdToken"

    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    const-string v1, "Failed to parse JWT"

    const-string v2, "invalid_jwt"

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    iget-object v3, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getRawIDToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenClaims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
