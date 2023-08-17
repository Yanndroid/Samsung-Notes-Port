.class public Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;,
        Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityServiceContract;
    }
.end annotation


# static fields
.field private static final APP_ID:I = 0x2

.field private static final MIN_SUPPORT_SERVICE_VERSION:J = 0x68e778dL

.field private static final TAG:Ljava/lang/String; = "ContinuityServiceManager"


# instance fields
.field private mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

.field public mConnectedDeviceBtMac:Ljava/lang/String;

.field public mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

.field private mContinuityState:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

.field public mDiscoveryManager:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

.field public mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

.field public mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

.field public final mPeerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

.field private final mSendMessageCallback:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

.field public mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

.field private final mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->INIT:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityState:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mPeerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$2;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$3;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSendMessageCallback:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    return-object p0
.end method

.method public static isContinuityFeatureEnabled()Z
    .locals 4

    const-string v0, "ContinuityServiceManager"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->isContinuityFeatureEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoClassDefFoundError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContinuityFeatureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isContinuityServiceVersionSupported()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getServiceVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x68e778d

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContinuityServiceVersionSupported: version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " supported: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityServiceManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static isContinuitySettingEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContinuitySettingEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuityServiceManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static isSupportedInAppCollaboration()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ContinuityServiceManager"

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportedInAppCollaboration# OS condition : "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isContinuityFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isContinuitySettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportedInAppCollaboration# ContinuityManager isSupported : "

    goto :goto_0
.end method

.method public static isSupportedInAppCollaborationAsClient()Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isSupportedInAppCollaboration()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPhoneModel()Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isSupportInAppClient()Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getOneUIVersion()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x9ca4

    if-lt v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportedInAppCollaborationAsClient# supportedInApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", phone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", supportedDevice : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", supportedOneUIVersion : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ContinuityServiceManager"

    invoke-static {v7, v6}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    return v4
.end method

.method public static isSupportedInAppCollaborationAsServer()Z
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isSupportedInAppCollaboration()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isSupportInAppServer()Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getOneUIVersion()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0x9ca4

    if-lt v4, v7, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportedInAppCollaborationAsServer# supportedInApp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", tablet : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", dex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", supportedDevice : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", supportedOneUIVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContinuityServiceManager"

    invoke-static {v8, v7}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :cond_3
    :goto_1
    return v5

    :cond_4
    :goto_2
    return v6
.end method


# virtual methods
.method public closeInAppCollaboration()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeInAppCollaboration# Session disconnect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;->disconnect(Ljava/lang/String;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeInAppCollaboration# close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public closeSession()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeInAppCollaboration()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "closeSession#"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;->closeSession()Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "closeSession# unregister message"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager;->unregisterMessageListener()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    return-void
.end method

.method public connect(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/ContinuityManager;->getContinuityAdapter(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->initialize(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x384

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect# fail - initialize result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;Landroid/content/Context;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Z

    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->stopDiscovery()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeSession()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->unbindService(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->release(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->DISCONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V

    return-void
.end method

.method public getContinuityState()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContinuityState# state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityState:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityServiceManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityState:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    return-object v0
.end method

.method public getNearbyMyDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->getNearbyMyDevices()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ContinuityServiceManager"

    return-object v0
.end method

.method public hasNearbyMyDevices()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->hasNearbyMyDevices()Z

    move-result v0

    return v0
.end method

.method public initContinuityService(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getContinuityState()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->INIT:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContinuityService# fail - current continuity state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/ContinuityManager;->getContinuityAdapter(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->initialize(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x384

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContinuityService# fail - initialize result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initContinuityService#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$6;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;Landroid/content/Context;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Z

    return-void
.end method

.method public isPeerConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityState:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->PEER_CONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuityServiceManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onServiceConnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityServiceContract;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityServiceContract;->onServiceDisconnected()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->disconnect(Landroid/content/Context;)V

    return-void
.end method

.method public onSessionStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public openSession()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuitySessionManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSession# fail - Session Manager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSession"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;->openSession(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public readyToInAppCollaboration(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSessionManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;->getContinuitySessionMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "readyToInAppCollaboration# fail -  MessageManager is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeInAppCollaboration()Z

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$5;-><init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager;->registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "readyToInAppCollaboration#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;->readyToInAppCollaboration()V

    return-void
.end method

.method public registerMessageIntentListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerMessageIntentListener# fail - Continuity is not Supported"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerMessageIntentListener# fail - DiscoveryManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "ContinuityService.NOTIFICATION"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->registerMessageIntentListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->clear()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->INIT:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V

    return-void
.end method

.method public sendMessage([B)V
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendMessage#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mMessageManager:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mSendMessageCallback:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;->sendMessage(Ljava/lang/String;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z

    :cond_0
    return-void
.end method

.method public setActionContract(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mActionContract:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    return-void
.end method

.method public setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContinuityState# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityServiceManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityState:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    return-void
.end method

.method public stopDiscovery()V
    .locals 0

    return-void
.end method

.method public unregisterMessageIntentListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mContinuityAdapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterMessageIntentListener# fail - Continuity is not Supported"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterMessageIntentListener# fail - DiscoveryManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->unregisterMessageIntentListener()V

    return-void
.end method
