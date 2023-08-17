.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PollingHandler"

    if-eqz v0, :cond_0

    const-string p1, "[CS6-1] pause polling coedit"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const-string p1, "[CS6-1] EXIT polling coedit"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    const-string v0, "[CS6] REQUEST polling coedit"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[CS6-2] REQUEST polling coedit failed : wifi only mode restrict"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_1
    return-void
.end method
