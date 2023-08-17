.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mTrimRequestTime:J

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->mTrimRequestTime:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->mTrimRequestTime:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->mTrimRequestTime:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "WaitForDownloadHandler"

    const-string v0, "[CS7] handleMessage"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->cancelCoeditTrimLocalSDoc()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[CS7-2] handleMessage fail : wifi only mode restrict"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->requestAuthInfo(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method
