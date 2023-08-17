.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestSyncHandler"
.end annotation


# static fields
.field private static final MSG_REQUEST_SYNC_PERIODIC:I = 0x3

.field private static final MSG_REQUEST_SYNC_START:I = 0x2

.field private static final REQUEST_SYNC_INTERVAL:I = 0xbb8

.field private static final REQUEST_SYNC_START:I = 0x1388


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V

    return-void
.end method

.method private requestSyncForServerPolling(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;->canStopToSendRequestSyncMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    const-string v0, "requestSyncForServerPolling# stop"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncDownFirst(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncForServerPolling()V

    :goto_0
    const/4 p1, 0x3

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->requestSyncForServerPolling(Z)V

    :goto_1
    return-void
.end method

.method public sendRequestSyncMsg()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$RequestSyncHandler;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;->canStopToSendRequestSyncMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    const-string v1, "sendRequestSyncMsg# stop"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
