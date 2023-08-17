.class public interface abstract Lcom/microsoft/identity/common/java/crypto/ISigner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sign(Ljava/security/PrivateKey;Ljava/lang/String;[B)[B
    .param p1    # Ljava/security/PrivateKey;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method

.method public abstract signWithHMac([BLjava/lang/String;[B)[B
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method
