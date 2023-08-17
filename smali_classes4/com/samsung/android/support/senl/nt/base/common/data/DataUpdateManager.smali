.class public Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager$DataUpdateObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;


# instance fields
.field private final mObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager$DataUpdateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->mObservers:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager$DataUpdateObserver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->mObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDataUpdated()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager;->mObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager$DataUpdateObserver;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/common/data/DataUpdateManager$DataUpdateObserver;->onDataUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
