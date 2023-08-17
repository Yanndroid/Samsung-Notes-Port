.class public Lcom/samsung/android/sdk/smp/SmpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpReceiver;->TAG:Ljava/lang/String;

    const-string p2, "context is null"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpReceiver;->TAG:Ljava/lang/String;

    const-string p2, "intent is null"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.TASK_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/task/STask;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/task/STask;

    move-result-object p2

    instance-of v0, p2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/task/STask;->getData()Landroid/os/Bundle;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->getMid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/data/DebugDataManager;->addFeedback(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Z)V

    :cond_2
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->onClick(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_BUTTON_1_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_BUTTON_2_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_BUTTON_3_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_CLEAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->onClear(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->handlePopupDisplayResult(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->bootCompleted(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    :goto_1
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->onClickNotificationButton(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_9
    :goto_2
    return-void
.end method
