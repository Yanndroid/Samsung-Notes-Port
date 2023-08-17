.class public interface abstract Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAuthorizationStrategyFactory()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getBroadcaster()Lcom/microsoft/identity/common/java/util/IBroadcaster;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getClockSkewManager()Lcom/microsoft/identity/common/java/util/IClockSkewManager;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getDefaultDevicePopManager()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getDevicePopManager(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getEncryptedFileStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
.end method

.method public abstract getEncryptedNameValueStore(Ljava/lang/String;Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getFileStore(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
.end method

.method public abstract getHttpClientWrapper()Lcom/microsoft/identity/common/java/interfaces/IHttpClientWrapper;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getMultiProcessStringStore(Ljava/lang/String;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNameValueStore(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getPlatformUtil()Lcom/microsoft/identity/common/java/util/IPlatformUtil;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getStateGenerator()Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getStorageEncryptionManager()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;
    .annotation build Llombok/NonNull;
    .end annotation
.end method
