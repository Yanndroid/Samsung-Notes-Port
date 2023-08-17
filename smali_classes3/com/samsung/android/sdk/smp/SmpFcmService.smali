.class public abstract Lcom/samsung/android/sdk/smp/SmpFcmService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/SmpFcmService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpFcmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

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

.method public abstract messageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end method

.method public final onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getPriority()I

    move-result v1

    new-instance v2, Lcom/samsung/android/sdk/smp/push/PushMsgHandler;

    invoke-direct {v2}, Lcom/samsung/android/sdk/smp/push/PushMsgHandler;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/smp/SmpFcmService$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/sdk/smp/SmpFcmService$1;-><init>(Lcom/samsung/android/sdk/smp/SmpFcmService;Lcom/google/firebase/messaging/RemoteMessage;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/samsung/android/sdk/smp/push/PushMsgHandler;->handleFcmMessage(Landroid/content/Context;Ljava/util/Map;ILcom/samsung/android/sdk/smp/push/PushMsgHandler$ISmpPushInterface;)V

    return-void
.end method

.method public final onNewToken(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isSupportCountryCode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpFcmService;->TAG:Ljava/lang/String;

    const-string v0, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->he(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->isSmpDeactivated()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpFcmService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "token refreshed. smp is deactivated. do nothing"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpFcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token refreshed but push type is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". skip this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/smp/SmpFcmService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "token refreshed"

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setPushToken(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/data/DataManager;->isInitialUploadDone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->setUploadFailCount(I)V

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/smp/data/DataManager;->triggerUploadClientsNow(Landroid/content/Context;Z)V

    :cond_3
    invoke-static {v0, v3, p1}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastTokenChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
