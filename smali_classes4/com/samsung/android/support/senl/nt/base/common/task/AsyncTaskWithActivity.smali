.class public abstract Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result::",
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityHashCode:I

.field private mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivityHashCode:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public getActivityHashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivityHashCode:I

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivityHashCode:I

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public onCancelled(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->removeTask(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onCancelled(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    return-void
.end method

.method public onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final onPostExecute(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->removeTask(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPostExecute(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mAsyncTaskManager:Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->addTask(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method

.method public onPreExecute(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
