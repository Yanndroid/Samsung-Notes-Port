.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELETE_PAGE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

.field private mIsUseThread:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskDeletePages"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mIsUseThread:Z

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;->release()V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mIsUseThread:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToUpdate()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$DeletePagesHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
