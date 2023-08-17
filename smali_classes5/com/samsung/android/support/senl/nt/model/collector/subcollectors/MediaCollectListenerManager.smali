.class public Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;
.super Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;->mInstance:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;->mInstance:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;->mInstance:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollectListenerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
