.class Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobRunnerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mRunner:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->mRunner:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->mRunner:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getCallerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->cancel(I)V

    return-void
.end method

.method public cancel(I)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunnerFuture;->mRunner:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->cancel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
