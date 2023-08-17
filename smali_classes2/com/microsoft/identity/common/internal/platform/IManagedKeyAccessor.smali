.class public interface abstract Lcom/microsoft/identity/common/internal/platform/IManagedKeyAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/security/KeyStore$Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;"
    }
.end annotation


# virtual methods
.method public abstract getManager()Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/crypto/IKeyStoreKeyManager<",
            "TK;>;"
        }
    .end annotation
.end method
