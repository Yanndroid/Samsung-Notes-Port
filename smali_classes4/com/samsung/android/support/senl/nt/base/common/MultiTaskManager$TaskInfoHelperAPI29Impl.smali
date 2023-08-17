.class Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperAPI29Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfoHelperAPI29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperAPI29Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId(Landroid/app/ActivityManager$AppTask;)I
    .locals 0
    .param p1    # Landroid/app/ActivityManager$AppTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    return p1
.end method

.method public isRunning(Landroid/app/ActivityManager$AppTask;)Z
    .locals 0
    .param p1    # Landroid/app/ActivityManager$AppTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    return p1
.end method
