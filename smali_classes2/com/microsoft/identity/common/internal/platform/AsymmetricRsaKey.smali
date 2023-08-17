.class public interface abstract Lcom/microsoft/identity/common/internal/platform/AsymmetricRsaKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/AsymmetricKey;


# virtual methods
.method public abstract decrypt(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getThumbprint()Ljava/lang/String;
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verify(Ljava/lang/String;Ljava/lang/String;)Z
.end method
