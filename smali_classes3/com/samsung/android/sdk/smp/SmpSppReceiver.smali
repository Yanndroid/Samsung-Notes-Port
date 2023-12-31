.class public abstract Lcom/samsung/android/sdk/smp/SmpSppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/SmpSppReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onPushRegResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSupportCountryCode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->TAG:Ljava/lang/String;

    const-string p2, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->isSmpDeactivated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onPushRegResult. smp is deactivated. do nothing"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getSppAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x3e8

    const-string v1, "Error"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.sec.spp.Status"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/sdk/smp/push/PushHelper;->getInstance()Lcom/samsung/android/sdk/smp/push/PushHelper;

    move-result-object v3

    const/16 v4, 0xfb1

    const/4 v5, 0x2

    if-ne v0, v4, :cond_4

    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_4

    :cond_3
    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handleSppDeactivateEvent(Landroid/content/Context;)V

    return-void

    :cond_4
    const-string/jumbo v4, "spp"

    if-nez v1, :cond_6

    const-string v0, "RegistrationID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, "SMP_5003"

    const-string v0, "SPP error. SPP Token is empty"

    invoke-virtual {v3, p1, v4, p2, v0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v3, p1, v4, p2}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne v1, v2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, v4, p2, v1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-ne v1, v5, :cond_8

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handleSppDeregistrationSuccess(Landroid/content/Context;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onPushRegResult. appid not matched"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isMarketingDisplayEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public marketingMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract messageReceived(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->TAG:Ljava/lang/String;

    const-string p2, "context is null"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->TAG:Ljava/lang/String;

    const-string p2, "intent is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.spp.RegistrationChangedAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->onPushRegResult(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/smp/push/PushMsgHandler;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/push/PushMsgHandler;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;-><init>(Lcom/samsung/android/sdk/smp/SmpSppReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/push/PushMsgHandler;->handleSPPMessage(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/push/PushMsgHandler$ISmpPushInterface;)V

    :goto_1
    return-void
.end method
