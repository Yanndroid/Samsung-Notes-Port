.class public abstract Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;
.super Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MdeImportBaseTask"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupId:Ljava/lang/String;

.field public mListener:Lr/b;

.field public mOwnerId:Ljava/lang/String;

.field public mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mSpaceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "MdeImportBaseTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->importProgress()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mErrorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mSpaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mErrorList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lr/b;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error list is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/Exception;)V

    instance-of v1, v0, Ly1/b;

    if-eqz v1, :cond_2

    check-cast v0, Ly1/b;

    invoke-virtual {v0}, Ly1/b;->a()Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    move-result-object v0

    invoke-static {v0}, Ls/i;->b(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mErrorList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mErrorList:Ljava/util/ArrayList;

    new-instance v1, Ls/k;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Ls/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mSpaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mErrorList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lr/b;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    monitor-exit p0

    :cond_4
    :goto_1
    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public abstract importProgress()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "MdeImportBaseTask"

    const-string v1, "onCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "MdeImportBaseTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute() v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    if-eqz p1, :cond_1

    const-string p1, "MdeImportBaseTask"

    const-string v0, "finish importing docs!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mErrorList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "MdeImportBaseTask"

    const-string v0, "call onImportEnded()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mSpaceId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lr/b;->a(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "MdeImportBaseTask"

    const-string v0, "onPostExecute() ends"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    invoke-interface {v0}, Lr/b;->onStart()V

    return-void
.end method

.method public stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mListener:Lr/b;

    const-string v0, "MdeImportBaseTask"

    const-string v1, "stop()"

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
