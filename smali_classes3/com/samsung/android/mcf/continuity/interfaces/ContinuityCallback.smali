.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLBACK_DISCOVERY_DISCOVERED:I = 0xfa2

.field public static final CALLBACK_END:I = 0xfa5

.field public static final CALLBACK_MESSAGE_RECEIVED:I = 0xfa0

.field public static final CALLBACK_MESSAGE_SENT:I = 0xfa1

.field public static final CALLBACK_SESSION_PEER_CONNECTION_REQUESTED:I = 0xfa5

.field public static final CALLBACK_SESSION_PEER_STATUS_CHANGED:I = 0xfa4

.field public static final CALLBACK_SESSION_STATUS_CHANGED:I = 0xfa3

.field public static final CALLBACK_START:I = 0xfa0

.field public static final KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE:Ljava/lang/String; = "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_EVENT:Ljava/lang/String; = "KEY_EVENT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PEER_STATUS:Ljava/lang/String; = "KEY_PEER_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SESSION_STATUS:Ljava/lang/String; = "KEY_SESSION_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_STATUS:Ljava/lang/String; = "KEY_STATUS"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDiscoveryDiscoveredCallbackMessage(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Message;
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa2

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_EVENT"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private static createMessage(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public static createMessageReceivedCallbackMessage(Ljava/lang/String;[BB)Landroid/os/Message;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageData(Landroid/os/Bundle;[B)V

    invoke-static {v1, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageId(Landroid/os/Bundle;B)V

    return-object v0
.end method

.method public static createMessageSentCallbackMessage(Ljava/lang/String;BI)Landroid/os/Message;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa1

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageId(Landroid/os/Bundle;B)V

    const-string p0, "KEY_STATUS"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createSessionPeerConnectionRequestedCallbackMessage(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;
    .locals 3
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa5

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v1, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setContinuityNetworkPolicyWrapper(Landroid/os/Bundle;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createSessionPeerStatusChangedCallbackMessage(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Message;
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa4

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_PEER_STATUS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static createSessionStatusChangedCallbackMessage(I)Landroid/os/Message;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xfa3

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_SESSION_STATUS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static getBtMac(Landroid/os/Message;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallbackId(Landroid/os/Message;)I
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p0, Landroid/os/Message;->what:I

    return p0
.end method

.method public static getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getEvent(Landroid/os/Message;)I
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x66

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_EVENT"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMessageData(Landroid/os/Message;)[B
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getMessageData(Landroid/os/Message;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMessageId(Landroid/os/Message;)B
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getMessageId(Landroid/os/Message;)B

    move-result p0

    return p0
.end method

.method public static getPeerStatus(Landroid/os/Message;)I
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0x15

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_PEER_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSessionStatus(Landroid/os/Message;)I
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/16 v1, 0xb

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_SESSION_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStatus(Landroid/os/Message;)I
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
