.class interface abstract Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager$ITaskInfoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITaskInfoHelper"
.end annotation


# virtual methods
.method public abstract getTaskId(Landroid/app/ActivityManager$AppTask;)I
    .param p1    # Landroid/app/ActivityManager$AppTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isRunning(Landroid/app/ActivityManager$AppTask;)Z
    .param p1    # Landroid/app/ActivityManager$AppTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
