.class public interface abstract Lcom/microsoft/identity/common/internal/platform/AsymmetricKeyAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/IManagedKeyAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/platform/IManagedKeyAccessor<",
        "Ljava/security/KeyStore$PrivateKeyEntry;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getPublicKey(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager$PublicKeyFormat;)Ljava/lang/String;
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method
