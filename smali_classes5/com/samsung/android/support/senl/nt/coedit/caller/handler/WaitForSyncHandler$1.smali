.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "WaitForSyncHandler"

    const-string v0, "[CS6] mWaitForSync, handleMessage"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->cancelCoeditTrimLocalSDoc()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[CS6-2] mWaitForSync, handleMessage fail : wifi only mode restrict"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->requestAuthInfo(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method
