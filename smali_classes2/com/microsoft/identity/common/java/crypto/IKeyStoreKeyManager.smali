.class public interface abstract Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/security/KeyStore$Entry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clear()Z
.end method

.method public abstract exists()Z
.end method

.method public abstract getCertificateChain()[Ljava/security/cert/Certificate;
.end method

.method public abstract getCreationDate()Ljava/util/Date;
.end method

.method public abstract getEntry()Ljava/security/KeyStore$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getKeyAlias()Ljava/lang/String;
.end method

.method public abstract getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
.end method

.method public abstract getThumbprint()[B
.end method

.method public abstract hasThumbprint([B)Z
.end method

.method public abstract importKey([BLjava/lang/String;)V
.end method

.method public abstract storeAsymmetricKey(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
.end method
