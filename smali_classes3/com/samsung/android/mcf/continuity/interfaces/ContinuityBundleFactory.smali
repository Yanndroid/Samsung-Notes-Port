.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_BT_MAC:Ljava/lang/String; = "KEY_BT_MAC"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_BT_STATE:Ljava/lang/String; = "KEY_BT_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CALL_STATE:Ljava/lang/String; = "KEY_CALL_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CMC_STATE:Ljava/lang/String; = "KEY_CMC_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CUR_CONTINUITY_DEVICE_STATE:Ljava/lang/String; = "KEY_CUR_CONTINUITY_DEVICE_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "KEY_DEVICE_TYPE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "KEY_DISPLAY_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_IP:Ljava/lang/String; = "KEY_IP"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MODEL_NAME:Ljava/lang/String; = "KEY_MODEL_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_ROLE:Ljava/lang/String; = "KEY_NETWORK_ROLE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_TOPOLOGY:Ljava/lang/String; = "KEY_NETWORK_TOPOLOGY"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_TYPE:Ljava/lang/String; = "KEY_NETWORK_TYPE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PORT:Ljava/lang/String; = "KEY_PORT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PREV_CONTINUITY_DEVICE_STATE:Ljava/lang/String; = "KEY_PREV_CONTINUITY_DEVICE_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SCREEN_STATE:Ljava/lang/String; = "KEY_SCREEN_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_WIFI_STATE:Ljava/lang/String; = "KEY_WIFI_STATE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;-><init>()V

    const-string v1, "KEY_SCREEN_STATE"

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setScreenState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_CALL_STATE"

    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setCallState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_BT_STATE"

    const/16 v2, 0x258

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setBtState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_WIFI_STATE"

    const/16 v2, 0x2bc

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setWifiState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object v0

    const-string v1, "KEY_CMC_STATE"

    const/16 v2, 0x320

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->setCmcState(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object p0

    return-object p0
.end method

.method public static continuityDeviceStateToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Landroid/os/Bundle;
    .locals 3
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getScreenState()I

    move-result v1

    const-string v2, "KEY_SCREEN_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCallState()I

    move-result v1

    const-string v2, "KEY_CALL_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getBtState()I

    move-result v1

    const-string v2, "KEY_BT_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getWifiState()I

    move-result v1

    const-string v2, "KEY_WIFI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;->getCmcState()I

    move-result p0

    const-string v1, "KEY_CMC_STATE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static continuityNearbyMyDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;-><init>()V

    const-string v1, "KEY_BT_MAC"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setBtMac(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_DISPLAY_NAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setDisplayName(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_DEVICE_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setDeviceType(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_MODEL_NAME"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setModelName(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_IP"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setIp(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_PORT"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setPort(I)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object v0

    const-string v1, "KEY_PREV_CONTINUITY_DEVICE_STATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setPrevContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    :cond_0
    const-string v1, "KEY_CUR_CONTINUITY_DEVICE_STATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v1, p0, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setCurContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;
    .locals 3
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getBtMac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_BT_MAC"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_DISPLAY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getDeviceType()I

    move-result v1

    const-string v2, "KEY_DEVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getModelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_MODEL_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_IP"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPort()I

    move-result v1

    const-string v2, "KEY_PORT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPrevContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_PREV_CONTINUITY_DEVICE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getCurContinuityDeviceState()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "KEY_CUR_CONTINUITY_DEVICE_STATE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method

.method public static continuityNetworkPolicyWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "KEY_NETWORK_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "KEY_NETWORK_TOPOLOGY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "KEY_NETWORK_ROLE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->createInstance(III)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static continuityNetworkPolicyWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Bundle;
    .locals 3
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v1

    const-string v2, "KEY_NETWORK_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result v1

    const-string v2, "KEY_NETWORK_TOPOLOGY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getRole()I

    move-result p0

    const-string v1, "KEY_NETWORK_ROLE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
