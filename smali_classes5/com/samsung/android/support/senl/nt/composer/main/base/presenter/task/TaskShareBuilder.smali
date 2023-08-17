.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

.field private mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

.field private mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    :cond_0
    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->setPendingTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    :goto_0
    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    return-void
.end method

.method public getCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-object v0
.end method

.method public getInputValues()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    return-object v0
.end method

.method public getTask()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    return-object v0
.end method

.method public setCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    return-object p0
.end method

.method public setInputValues(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->mInputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    return-object p0
.end method
