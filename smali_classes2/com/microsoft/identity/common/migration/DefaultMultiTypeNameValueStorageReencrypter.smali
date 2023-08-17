.class public Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMultiTypeNameValueStorageReencrypter"

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyCacheMutation(Ljava/util/Map;Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable;Lcom/microsoft/identity/common/migration/MigrationOperationResult;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Ljava/util/Set;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/migration/MigrationOperationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/microsoft/identity/common/migration/MigrationOperationResult;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":applyCacheMutation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Skipping entry."

    invoke-static {v0, v3}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Error during mutation"

    invoke-static {v0, v4, v3}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/microsoft/identity/common/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v3}, Lcom/microsoft/identity/common/migration/MigrationOperationResult;->addFailure(Ljava/lang/Exception;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->eraseEntryOnError()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Marking key for removal."

    invoke-static {v0, v3}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p4}, Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->eraseAllOnError()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-string p2, "Marking all keys for removal."

    invoke-static {v0, p2}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->abortOnError()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private clearEntriesMarkedForRemoval(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Ljava/util/Map;Ljava/util/Set;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":clearEntriesMarkedForRemoval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Removing entries marked for removal"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public reencrypt(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;)Lcom/microsoft/identity/common/migration/IMigrationOperationResult;
    .locals 16
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;",
            ")",
            "Lcom/microsoft/identity/common/migration/IMigrationOperationResult;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":reencrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to migrate cache entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/microsoft/identity/common/migration/MigrationOperationResult;

    invoke-direct {v12}, Lcom/microsoft/identity/common/migration/MigrationOperationResult;-><init>()V

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/microsoft/identity/common/migration/MigrationOperationResult;->setCountOfTotalRecords(I)V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$1;

    move-object/from16 v0, p3

    invoke-direct {v2, v8, v0}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$1;-><init>(Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v12

    move-object/from16 v4, p4

    move-object v5, v13

    move-object v6, v15

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->applyCacheMutation(Ljava/util/Map;Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable;Lcom/microsoft/identity/common/migration/MigrationOperationResult;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Ljava/util/Set;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v8, v9, v11, v13}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->clearEntriesMarkedForRemoval(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Aborting after decrypt."

    :goto_0
    invoke-static {v10, v0}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_0
    new-instance v2, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$2;

    move-object/from16 v0, p2

    invoke-direct {v2, v8, v0}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$2;-><init>(Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v12

    move-object/from16 v4, p4

    move-object v5, v13

    move-object v6, v15

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->applyCacheMutation(Ljava/util/Map;Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$Callable;Lcom/microsoft/identity/common/migration/MigrationOperationResult;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Ljava/util/Set;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v8, v9, v11, v13}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->clearEntriesMarkedForRemoval(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Aborting after reencrypt."

    goto :goto_0

    :cond_1
    const-string v0, "Writing reencrypted cache entries."

    invoke-static {v10, v0}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v2, v1}, Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v12
.end method

.method public reencryptAsync(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;)V
    .locals 9
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/interfaces/INameValueStorage<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;",
            "Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;",
            "Lcom/microsoft/identity/common/java/util/TaskCompletedCallback<",
            "Lcom/microsoft/identity/common/migration/IMigrationOperationResult;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;-><init>(Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
