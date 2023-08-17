.class public Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;
.super Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityClientManager"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startDiscovery()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    if-nez v0, :cond_0

    const-string v0, "ContinuityClientManager"

    const-string v1, "startDiscoveryForClient# fail - Discovery Manager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->startAdvertisement()Z

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ContinuityClientManager"

    return-object v0
.end method

.method public onServiceConnected()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->startDiscovery()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->openSession()Z

    return-void
.end method

.method public onSessionStatusChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->onServiceDisconnected(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/ContinuityManager;->getContinuityIntentHelper(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityIntentHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->mIntent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityIntentHelper;->getContinuityNearbyMyDevice(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->mIntent:Landroid/content/Intent;

    invoke-interface {p1, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityIntentHelper;->getContinuityNetworkPolicy(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStatusChanged# continuityNearbyMyDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", continuityNetworkPolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuityClientManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "onSessionStatusChanged# btMac is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mPeerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;->responseConnect(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->release(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setContinuityIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public stopDiscovery()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    if-eqz v0, :cond_0

    const-string v0, "ContinuityClientManager"

    const-string v1, "stopDiscovery#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->stopAdvertisement()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    :cond_0
    return-void
.end method
