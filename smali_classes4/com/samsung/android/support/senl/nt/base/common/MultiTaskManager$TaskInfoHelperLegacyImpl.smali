.class Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperLegacyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfoHelperLegacyImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$TaskInfoHelperLegacyImpl;-><init>()V

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

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    return p1
.end method

.method public isRunning(Landroid/app/ActivityManager$AppTask;)Z
    .locals 1
    .param p1    # Landroid/app/ActivityManager$AppTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
