.class public interface abstract Lcom/nimbusds/jwt/JWT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getHeader()Lcom/nimbusds/jose/Header;
.end method

.method public abstract getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;
.end method

.method public abstract getParsedParts()[Lcom/nimbusds/jose/util/Base64URL;
.end method

.method public abstract getParsedString()Ljava/lang/String;
.end method

.method public abstract serialize()Ljava/lang/String;
.end method
