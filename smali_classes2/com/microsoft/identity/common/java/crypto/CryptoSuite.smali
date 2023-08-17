.class public interface abstract Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cipher()Lcom/microsoft/identity/common/java/crypto/Algorithm;
.end method

.method public abstract isAsymmetric()Z
.end method

.method public abstract keyClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/KeyStore$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keySize()I
.end method

.method public abstract macName()Ljava/lang/String;
.end method

.method public abstract signingAlgorithm()Lcom/microsoft/identity/common/java/crypto/SigningAlgorithm;
.end method
