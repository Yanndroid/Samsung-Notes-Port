.class public abstract Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ld1/d;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImportBaseTask"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mErrorCode:I

.field public mImportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

.field public mRequestType:I

.field public mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public mSuccessfulList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->NONE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iput p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mRequestType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-class v0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mErrorCode:I

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    iget v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mRequestType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->getImportItems()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->startImport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mErrorCode:I

    instance-of v1, v0, Ls0/c;

    if-eqz v1, :cond_2

    check-cast v0, Ls0/c;

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v1

    const/16 v2, 0x13b

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Ls0/a;->b(Ls0/c;)I

    move-result v2

    if-eq v1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ls0/a;->a(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mErrorCode:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mErrorCode:I

    const-string v4, "ImportBaseTask.doInBackground"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getDownloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    return-object v0
.end method

.method public getFailedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract getImportItems()V
.end method

.method public getResultData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    return-object v0
.end method

.method public getSuccessfulList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "ImportBaseTask"

    const-string v1, "onCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    const-string p1, "ImportBaseTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute() start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mRequestType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "ImportBaseTask"

    const-string v0, "finish getting doc list!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mErrorCode:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    goto :goto_0

    :cond_0
    const-string p1, "ImportBaseTask"

    const-string v0, "do not call mListener.onGetListEnded()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "ImportBaseTask"

    const-string v0, "finish downloading doc files!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "ImportBaseTask"

    const-string v0, "onPostExecute() ends"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportStart(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    return-void
.end method

.method public setDownloadList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    return-void
.end method

.method public abstract startImport()V
.end method

.method public stop()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    const-string v0, "ImportBaseTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() : cancel(true) - TaskType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , RequestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract syncProgress()I
.end method
