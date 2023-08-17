.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenOpenModeManager"

.field private static volatile sSpenOpenModeManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;


# instance fields
.field private final mUsedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->sSpenOpenModeManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->sSpenOpenModeManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->sSpenOpenModeManager:Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;
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
.method public disuse(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public use(ILjava/lang/String;)I
    .locals 4
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/SpenOpenMode;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->mUsedMap:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    add-int/2addr p1, v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return p1
.end method
