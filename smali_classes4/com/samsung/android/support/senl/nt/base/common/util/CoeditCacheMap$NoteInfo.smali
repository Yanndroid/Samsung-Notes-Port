.class Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteInfo"
.end annotation


# instance fields
.field private final mDownloadedStroke:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadedStrokeLock:Ljava/lang/Object;

.field private mIsReleased:Z

.field private mIsRestored:Z

.field private final mUndownloadedStroke:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUndownloadedStrokeLock:Ljava/lang/Object;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStroke:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStroke:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStrokeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStrokeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mIsRestored:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mIsReleased:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearDownloadedStroke()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getDownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearUndownloadedStroke()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getUndownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsDownloadedStrokeKey(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getDownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDownloadedStroke()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStrokeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStroke:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDownloadedStrokeEntrySet(Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$MapContract;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStrokeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStroke:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$MapContract;->getEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

.method public getDownloadedStrokeSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getDownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getUndownloadedStroke()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStrokeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStroke:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUndownloadedStrokeEntrySet(Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$MapContract;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStrokeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStroke:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$MapContract;->getEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

.method public getUndownloadedStrokeSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getUndownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isReleased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mIsReleased:Z

    return v0
.end method

.method public isRestored()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mIsRestored:Z

    return v0
.end method

.method public putDownloadedStroke(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStrokeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStroke:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mDownloadedStroke:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putUndownloadedStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStrokeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStroke:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mUndownloadedStroke:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeDownloadedStroke(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getDownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUndownloadedStroke(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->getUndownloadedStroke()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReleased(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mIsReleased:Z

    return-void
.end method

.method public setRestored(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheMap$NoteInfo;->mIsRestored:Z

    return-void
.end method
