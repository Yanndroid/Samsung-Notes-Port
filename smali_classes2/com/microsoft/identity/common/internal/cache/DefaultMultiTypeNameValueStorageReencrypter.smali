.class public Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reencrypt(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;)V
    .locals 4
    .param p1    # Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p3, v1}, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->eraseEntryOnError()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;->remove(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->eraseAllOnError()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;->clear()V

    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->abortOnError()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    throw v1

    :cond_2
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->abortOnError()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public reencryptAsync(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
    .locals 9
    .param p1    # Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;",
            "Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;",
            "Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;",
            "Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;",
            "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;-><init>(Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
