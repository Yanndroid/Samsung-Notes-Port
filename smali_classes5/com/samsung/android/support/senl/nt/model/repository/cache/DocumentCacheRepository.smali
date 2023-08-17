.class public Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;


# instance fields
.field private final mDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

.field private final mPath:Ljava/lang/String;

.field private final mUsingIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    return-object v0
.end method

.method public static subscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
    .locals 1
    .param p0    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->subscribe(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    :cond_0
    return-object p0
.end method

.method private subscribe(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->SKIPPED_USERS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static unsubscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 1
    .param p0    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->unsubscribe(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    :cond_0
    return-void
.end method

.method private unsubscribe(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isUsed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->mUsingIds:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocumentCacheRepository{mUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", mPath=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDocument="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDocument.isClosed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->isClosed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUsingIds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
