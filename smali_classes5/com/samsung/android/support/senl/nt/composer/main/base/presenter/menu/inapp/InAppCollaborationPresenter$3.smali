.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->registerScreenOffReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "InAppCollaborationPresenter"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "ScreenOffReceiver# onReceive"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenOffReceiver# send message successfully : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p2, "ScreenOffReceiver# onReceive error"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
