.class public Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditGroupAndSpaceSyncAsyncTask"

.field public static final mExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mFinishedRunnable:Ljava/lang/Runnable;

.field private mGroupId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CoeditGroupAndSpaceSyncAsyncTask"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mFinishedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private requestSync(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lu/c;->r()Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lu/c;->l(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;

    :cond_0
    return-void
.end method

.method public static requestSync(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const-string p1, "CoeditGroupAndSpaceSyncAsyncTask"

    const-string v0, "doInBackground#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mGroupId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->requestSync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    throw p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditGroupAndSpaceSyncAsyncTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->mFinishedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
