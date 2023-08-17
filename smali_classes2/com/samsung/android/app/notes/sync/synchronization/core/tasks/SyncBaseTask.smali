.class public abstract Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;
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
.field private static final LISTENER_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "SyncBaseTask"

.field public static mAccountGuid:Ljava/lang/String;


# instance fields
.field public final mAuthorization:Ljava/lang/String;

.field private mCancelCode:I

.field public final mContext:Landroid/content/Context;

.field public mErrorCode:I

.field public mRequestType:I

.field private mResultCode:I

.field private mStopCode:I

.field public mSyncInfoSDoc:Lt2/b;

.field public mSyncInfoSDocx:Lx2/e;

.field public mSyncOperationSDoc:Lt2/c;

.field public mSyncOperationSDocx:Lx2/g;

.field public mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

.field public mSyncRequestInfo:Ly2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->LISTENER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAuthorization:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    iput p4, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mRequestType:I

    const/16 p1, 0x12d

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mResultCode:I

    const/16 p1, 0x258

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    return-void
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 4

    instance-of v0, p1, Ls0/c;

    const-string v1, "SyncBaseTask"

    if-eqz v0, :cond_4

    check-cast p1, Ls0/c;

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v2, 0x13b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1fc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1fd

    if-eq v0, v2, :cond_1

    const/16 v2, 0x25f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x260

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleException() : mStopCode = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->b()Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->a(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    goto :goto_2

    :cond_0
    :pswitch_1
    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    goto :goto_2

    :cond_1
    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mResultCode:I

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ls0/a;->b(Ls0/c;)I

    move-result v2

    if-eq v0, v2, :cond_3

    move v0, v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync failed because of server error, converted error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "handleException() : "

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ls0/a;->a(I)I

    move-result p1

    goto :goto_1

    :cond_4
    const-string v0, "Unknown exception : "

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleException() : mResultCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mResultCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mCancelCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , mErrorCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleResultCode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->b()I

    move-result v2

    or-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    invoke-virtual {v0}, Lx2/d;->b()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    invoke-virtual {v1}, Lx2/d;->b()I

    move-result v1

    or-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    :cond_3
    return-void
.end method

.method private initSyncInfo()Z
    .locals 3

    new-instance v0, Lx2/e;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAuthorization:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lx2/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    new-instance v0, Lt2/b;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAuthorization:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lt2/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    const/4 v0, 0x1

    return v0
.end method

.method private initSyncOperation()V
    .locals 2

    new-instance v0, Lx2/g;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-direct {v0, v1}, Lx2/g;-><init>(Lx2/e;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    new-instance v0, Lt2/c;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDoc:Lt2/b;

    invoke-direct {v0, v1}, Lt2/c;-><init>(Lt2/b;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDoc:Lt2/c;

    return-void
.end method

.method private isTaskCancelled()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    const/16 v1, 0x258

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSyncEnded()V
    .locals 4

    const-string v0, "SyncBaseTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncEnded() : mResultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mCancelCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mRequestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->LISTENER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->isTaskCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v1, :cond_1

    const-string v1, "SyncBaseTask"

    const-string v2, "onSyncEnded() : cancelled"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->c(I)V

    goto :goto_0

    :cond_0
    const-string v1, "SyncBaseTask"

    const-string v2, "onSyncEnded() : success"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mResultCode:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->d(I)V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const-string v0, "SyncBaseTask"

    const-string v1, "onSyncEnded() : fail!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->LISTENER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    const-string v3, "SyncBaseTask.doInBackground"

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->a(ILjava/lang/String;)V

    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
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

    const-string v0, "SyncBaseTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    iget p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mRequestType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->syncProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->handleResultCode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->handleException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fillSyncInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncOperationSDocx:Lx2/g;

    invoke-virtual {v1}, Lx2/f;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lx2/d;->n(J)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->p()La2/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncRequestInfo:Ly2/b;

    invoke-virtual {v1}, Ly2/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, La2/g$a;->g(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncRequestInfo:Ly2/b;

    invoke-virtual {v0, v1}, Lx2/d;->l(Ly2/b;)V

    return-void
.end method

.method public initSyncTask()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    const-string v1, "SyncBaseTask"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "No samsung account!"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->n()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mAccountGuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "No accountGuid!"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->initSyncInfo()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->initSyncOperation()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelled() start : v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStopCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncBaseTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->b()Lcom/samsung/android/app/notes/sync/synchronization/managers/e;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mCancelCode:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->onSyncEnded()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute() start : v."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncBaseTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->onSyncEnded()V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;->b()V

    return-void
.end method

.method public printPreSyncInfo()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync : v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/utils/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , Sync Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncInfoSDocx:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , Device Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , isChinaAccount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncBaseTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->LISTENER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncProgressListener:Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRequestSyncInfo(Ly2/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mSyncRequestInfo:Ly2/b;

    return-void
.end method

.method public stop(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop() : stopCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncBaseTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask;->mStopCode:I

    return-void
.end method

.method public abstract syncProgress()I
.end method
