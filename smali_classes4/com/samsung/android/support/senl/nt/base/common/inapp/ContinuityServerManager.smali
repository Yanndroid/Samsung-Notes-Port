.class public Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;
.super Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityServerManager"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;


# instance fields
.field private final mComposerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContinuityMenu:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

.field private mContinuityReceiver:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityMenu:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loggingFragment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addTargetComposer(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "addTargetComposer"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    return-void
.end method

.method public connect(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->connect(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityReceiver:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ContinuityServerManager"

    const-string v1, "connect# registerReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityReceiver:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.mcfds.SERVICE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.mcfds.permission.START_SERVICE"

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public correctConnectingDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getContinuityState()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correctConnectingDevice# ContinuityState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isCorrectDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContinuityServerManager"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->PEER_CONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getComposerList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "getComposerList"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ContinuityServerManager"

    return-object v0
.end method

.method public getTargetComposerSize()I
    .locals 1

    const-string v0, "getTargetComposerSize"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public hasTargetComposer()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "hasTargetComposer"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public initTargetComposer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "initTargetComposer"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    return-void
.end method

.method public isTargetComposer(I)Z
    .locals 1

    const-string v0, "isTargetComposer"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public release(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->release(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityMenu:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityReceiver:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;

    if-eqz v1, :cond_0

    const-string v1, "ContinuityServerManager"

    const-string v2, "release# unregisterReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityReceiver:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityReceiver:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;

    :cond_0
    return-void
.end method

.method public removeTargetComposer(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "removeTargetComposer"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    return-void
.end method

.method public setTargetComposer(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mComposerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "setTargetComposer"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->loggingFragment(Ljava/lang/String;)V

    return-void
.end method

.method public startDiscovery(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    if-nez v0, :cond_0

    const-string p1, "ContinuityServerManager"

    const-string v0, "startDiscovery# fail - Discovery Manager is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->clear()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityMenu:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z

    return-void
.end method

.method public startInAppCollaboration(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->openSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;-><init>()V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->setTopology(I)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy$Builder;->build()Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    move-result-object v0

    const-string v1, "ContinuityServerManager"

    const-string v2, "startInAppCollaboration# requestConnect"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mPeerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-interface {v1, p1, v0, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;->requestConnect(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public stopDiscovery()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    if-eqz v0, :cond_0

    const-string v0, "ContinuityServerManager"

    const-string v1, "stopDiscovery#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->stopDiscovery()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->mContinuityMenu:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;->onUpdateMenuVisibility()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->clear()V

    :cond_2
    return-void
.end method
