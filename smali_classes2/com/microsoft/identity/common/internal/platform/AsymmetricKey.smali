.class public interface abstract Lcom/microsoft/identity/common/internal/platform/AsymmetricKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/Key;


# virtual methods
.method public abstract decrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAlias()Ljava/lang/String;
.end method

.method public abstract getCertificateChain()[Ljava/security/cert/Certificate;
.end method

.method public abstract getCreatedOn()Ljava/util/Date;
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getSecureHardwareState()Lcom/microsoft/identity/common/java/crypto/SecureHardwareState;
.end method

.method public abstract getThumbprint()Ljava/lang/String;
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verify(Ljava/lang/String;Ljava/lang/String;)Z
.end method
