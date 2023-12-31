.class public Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final ACTION_DEACTIVATE:Ljava/lang/String; = "com.samsung.android.sdk.smp.DEACTIVATE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deactivateSmp(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;->TAG:Ljava/lang/String;

    const-string v1, "deactivate smp"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSmpID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->isSmpDeactivated()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "smp is already deactivated. finish deactivation"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "smp has never been initialized. finish deactivation"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->deactivateSmp(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->deactivateSmp(Z)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->DEACTIVATE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->dispatchOnService(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onReceive. context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onReceive. intent is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSamsungPushService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p2, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive. This receiver is only for spp. pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.sdk.smp.DEACTIVATE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/spsclient/SpsReceiver;->deactivateSmp(Landroid/content/Context;)V

    :cond_3
    return-void
.end method
