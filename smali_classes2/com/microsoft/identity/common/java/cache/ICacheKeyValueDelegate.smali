.class public interface abstract Lcom/microsoft/identity/common/java/cache/ICacheKeyValueDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fromCacheValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract generateCacheKey(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;
.end method

.method public abstract generateCacheKey(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;
.end method

.method public abstract generateCacheValue(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Ljava/lang/String;
.end method

.method public abstract generateCacheValue(Lcom/microsoft/identity/common/java/dto/Credential;)Ljava/lang/String;
.end method
