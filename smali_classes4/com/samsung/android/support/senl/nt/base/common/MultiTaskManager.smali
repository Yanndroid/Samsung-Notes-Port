.class public Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperLegacyImpl;,
        Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperAPI29Impl;,
        Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;
    }
.end annotation


# static fields
.field private static final APP_MULTIPLE_LAUNCH_DETECT_DURATION_MS:I = 0x7d0

.field public static final INTENT_EXTRA_KEY_RELAUNCH:Ljava/lang/String; = "intent_extra_task_relaunch"

.field private static final MAX_TASK_COUNT:I = 0x5

.field private static final MID_TASK_COUNT:I = 0x3

.field private static final MIN_TASK_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiTaskManager"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;


# instance fields
.field private final mActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultActivityClass:Ljava/lang/Class;

.field private mIsPairWindowMode:Z

.field private mLastCallTime:J

.field private final mPrevLaunchedActivityNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrevLaunchedTaskIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

.field private final mTaskSize:I


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mActivityMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mLastCallTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedTaskIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedActivityNames:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mIsPairWindowMode:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->getDeviceMemoryLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskSize:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskSize:I

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperAPI29Impl;

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperAPI29Impl;-><init>(Lcom/samsung/android/support/senl/nt/base/common/c;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperLegacyImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperLegacyImpl;-><init>(Lcom/samsung/android/support/senl/nt/base/common/d;)V

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    return-void
.end method

.method private checkLaunchInterval(Z)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mLastCallTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mLastCallTime:J

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getOneUIVersion()I

    move-result v0

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mIsPairWindowMode:Z

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x7d0

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedTaskIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedActivityNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private getAvailableClassName(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mActivityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedActivityNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mDefaultActivityClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getEffectiveTasks(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedTaskIds:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    invoke-interface {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;->getTaskId(Landroid/app/ActivityManager$AppTask;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    return-object v0
.end method

.method private getOldestActivityClass(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->multiTaskInfos:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;

    iget-wide v4, v3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;->launchTime:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iget v0, v3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;->taskId:I

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    :cond_1
    const-string p1, "MultiTaskManager"

    if-nez v2, :cond_2

    const-string p2, "get oldest Activity : not found id"

    :goto_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mDefaultActivityClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;->getTaskId(Landroid/app/ActivityManager$AppTask;)I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get oldest Activity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get oldest Activity : not found task matched id - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method private isExtendedMultiWindowMode(Landroid/app/Activity;)Z
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getPairWindowMode(Landroid/app/Activity;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is multi-window mode ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mIsPairWindowMode:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private launchBackgroundTask(Landroid/app/Activity;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getEffectiveTasks(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->multiTaskInfos:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;

    iget-boolean v1, v0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;->isForeground:Z

    if-nez v1, :cond_0

    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;->taskId:I

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->launchTaskRoot(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private launchTaskRoot(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;I)Z
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;->getTaskId(Landroid/app/ActivityManager$AppTask;)I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    if-eq v2, v3, :cond_0

    if-ne v2, p4, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez p3, :cond_1

    return v1

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find background task : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "MultiTaskManager"

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->updateBackgroundTaskIntent(Landroid/content/Intent;)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedTaskIds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mPrevLaunchedActivityNames:Ljava/util/List;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private moveTaskToFront(Ljava/util/List;I)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;->getTaskId(Landroid/app/ActivityManager$AppTask;)I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;->isRunning(Landroid/app/ActivityManager$AppTask;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->moveToFront()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private removeTaskNotMemolistAsRoot(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)I
    .locals 10
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mActivityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$AppTask;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskControl:Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;

    invoke-interface {v7, v6}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;->getTaskId(Landroid/app/ActivityManager$AppTask;)I

    move-result v7

    invoke-virtual {v6}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->multiTaskInfos:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->multiTaskInfos:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    add-int/2addr v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Remove tasks not MemoList as root :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", total "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiTaskManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private updateActivityClass(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->getTaskInfo()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->removeTaskNotMemolistAsRoot(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)I

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getAvailableClassName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getOldestActivityClass(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x8000001

    and-int/2addr v0, v1

    const/high16 v1, 0x4200000

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "intent_extra_task_relaunch"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update activity class - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiTaskManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateBackgroundTaskIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x1001

    const v1, -0x8000001

    and-int/2addr v0, v1

    const v1, -0x200001

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private updateNewTaskIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x1001

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x18080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/Class;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mDefaultActivityClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mDefaultActivityClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mActivityMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mActivityMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public launchActivity(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->isExtendedMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->getTaskInfo(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->removeTaskNotMemolistAsRoot(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->checkLaunchInterval(Z)V

    iget-boolean v4, v1, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->hasFullWindow:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TOS #task = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", with full : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", multiMode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiTaskManager"

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mDefaultActivityClass:Ljava/lang/Class;

    invoke-virtual {v5, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1, v5, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->launchBackgroundTask(Landroid/app/Activity;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    const-string v0, "with full-window"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->fullWindowTaskId:I

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->moveTaskToFront(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getAvailableClassName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskSize:I

    if-lt v3, v0, :cond_2

    const-string v0, "cannot launched"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$plurals;->max_app_window:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mTaskSize:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "nothing to do"

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->updateNewTaskIntent(Landroid/content/Intent;)V

    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public relaunchedActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->onActivityNewIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->updateActivityClass(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->updateActivityClass(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityOfSameTask(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getAppTask(Landroid/content/Context;I)Landroid/app/ActivityManager$AppTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->mActivityMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start activity from - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiTaskManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
