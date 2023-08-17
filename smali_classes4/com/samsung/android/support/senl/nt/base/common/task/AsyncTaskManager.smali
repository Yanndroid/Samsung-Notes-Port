.class public Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;,
        Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITY_HASHCODE:Ljava/lang/String; = "activity_hashcode"


# instance fields
.field public mTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskListener:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addTask(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRunningTask(ILjava/lang/Class;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->getActivityHashCode()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "activity_hashcode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->getActivityHashCode()I

    move-result v2

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onActivityCreated(Landroid/app/Activity;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->getActivityHashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onActivityDestroyed()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskListener:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v0, "activity_hashcode"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public registerTaskStatusListener(ILcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskListener:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTask(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskListener:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->getActivityHashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;->onEnd(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterTaskStatusListener(ILcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->mTaskListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
