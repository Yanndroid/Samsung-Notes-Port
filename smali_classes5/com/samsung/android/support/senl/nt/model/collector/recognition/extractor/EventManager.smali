.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;
    }
.end annotation


# static fields
.field private static sDefaultEventBus:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->sDefaultEventBus:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager$DefaultEventBusImpl;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/a;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->sDefaultEventBus:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->sDefaultEventBus:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
