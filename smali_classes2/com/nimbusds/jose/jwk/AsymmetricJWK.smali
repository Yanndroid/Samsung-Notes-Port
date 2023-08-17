.class public interface abstract Lcom/nimbusds/jose/jwk/AsymmetricJWK;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract matches(Ljava/security/cert/X509Certificate;)Z
.end method

.method public abstract toKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract toPrivateKey()Ljava/security/PrivateKey;
.end method

.method public abstract toPublicKey()Ljava/security/PublicKey;
.end method
