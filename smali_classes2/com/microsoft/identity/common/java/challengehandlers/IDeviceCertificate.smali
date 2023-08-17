.class public interface abstract Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCertificate()Ljava/security/cert/X509Certificate;
.end method

.method public abstract getPrivateKey()Ljava/security/PrivateKey;
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract getThumbPrint()Ljava/lang/String;
.end method

.method public abstract isValidIssuer(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
