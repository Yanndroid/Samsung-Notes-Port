.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CMD_ASYNC_CLOSE_SESSION:I = 0x7e1

.field public static final CMD_ASYNC_DISCONNECT:I = 0x7e0

.field public static final CMD_ASYNC_END:I = 0x7e1

.field public static final CMD_ASYNC_OPEN_SESSION:I = 0x7dc

.field public static final CMD_ASYNC_REGISTER_CALLBACK:I = 0x7d0

.field public static final CMD_ASYNC_REGISTER_MESSAGE_INTENT_LISTENER:I = 0x7da

.field public static final CMD_ASYNC_REGISTER_SESSION_LISTENER:I = 0x7de

.field public static final CMD_ASYNC_REGISTER_SIMPLE_MESSAGE_LISTENER:I = 0x7d8

.field public static final CMD_ASYNC_REQUEST_CONNECT:I = 0x7dd

.field public static final CMD_ASYNC_RESPONSE_CONNECT:I = 0x7df

.field public static final CMD_ASYNC_SEND_MESSAGE:I = 0x7d7

.field public static final CMD_ASYNC_START:I = 0x7d0

.field public static final CMD_ASYNC_START_ADVERTISEMENT:I = 0x7d4

.field public static final CMD_ASYNC_START_DISCOVERY:I = 0x7d2

.field public static final CMD_ASYNC_STOP_ADVERTISEMENT:I = 0x7d6

.field public static final CMD_ASYNC_STOP_DISCOVERY:I = 0x7d3

.field public static final CMD_ASYNC_UNREGISTER_CALLBACK:I = 0x7d1

.field public static final CMD_ASYNC_UNREGISTER_MESSAGE_INTENT_LISTENER:I = 0x7db

.field public static final CMD_ASYNC_UNREGISTER_SIMPLE_MESSAGE_LISTENER:I = 0x7d9

.field public static final CMD_ASYNC_UPDATE_ADVERTISEMENT:I = 0x7d5

.field public static final CMD_SYNC_END:I = 0xbba

.field public static final CMD_SYNC_GET_CONTINUITY_NEARBY_DEVICE:I = 0xbb8

.field public static final CMD_SYNC_GET_MESSAGE_INTENT_ACTION:I = 0xbb9

.field public static final CMD_SYNC_IS_MAIN_CONTROLLER_STARTED:I = 0xbba

.field public static final CMD_SYNC_START:I = 0xbb8

.field public static final KEY_ADVERTISEMENT_DATA:Ljava/lang/String; = "KEY_ADVERTISEMENT_DATA"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_BT_MAC:Ljava/lang/String; = "KEY_BT_MAC"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CALLBACK:Ljava/lang/String; = "KEY_CALLBACK"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CONFIRM:Ljava/lang/String; = "KEY_CONFIRM"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE_ARRAY_LIST:Ljava/lang/String; = "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE_ARRAY_LIST"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MESSAGE_DATA:Ljava/lang/String; = "KEY_MESSAGE_DATA"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "KEY_MESSAGE_ID"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MESSAGE_INTENT_ACTION_NAME:Ljava/lang/String; = "KEY_MESSAGE_INTENT_ACTION_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_MESSAGE_INTENT_PACKAGE_NAME:Ljava/lang/String; = "KEY_MESSAGE_INTENT_PACKAGE_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_NETWORK_POLICY_BUNDLE:Ljava/lang/String; = "KEY_NETWORK_POLICY_BUNDLE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PORT:Ljava/lang/String; = "KEY_PORT"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final RETURN_FAILED:I = -0x1

.field public static final RETURN_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCloseSessionCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7e1

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method private static createCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method public static createDisconnectCommand(ILjava/lang/String;)Landroid/os/Message;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7e0

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "KEY_BT_MAC"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createGetContinuityNearbyDeviceCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xbb8

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createGetMessageIntentActionCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xbb9

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createIsMainControllerStartedCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xbba

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createOpenSessionCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7dc

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createRegisterCallbackCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Landroid/os/Message;
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d0

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v1, "KEY_CALLBACK"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public static createRegisterMessageIntentListenerCommand(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7da

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "KEY_MESSAGE_INTENT_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_MESSAGE_INTENT_ACTION_NAME"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createRegisterSessionListenerCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7de

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createRegisterSimpleMessageListenerCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d8

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createRequestConnectCommand(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7dd

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "KEY_BT_MAC"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_PORT"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setContinuityNetworkPolicyWrapper(Landroid/os/Bundle;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-object p0
.end method

.method public static createResponseConnectCommand(IILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7df

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "KEY_CONFIRM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "KEY_BT_MAC"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_PORT"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, p4}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setContinuityNetworkPolicyWrapper(Landroid/os/Bundle;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-object p0
.end method

.method public static createSendMessageCommand(ILjava/lang/String;[B)Landroid/os/Message;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createSendMessageCommand(ILjava/lang/String;[BB)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static createSendMessageCommand(ILjava/lang/String;[BB)Landroid/os/Message;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d7

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageData(Landroid/os/Bundle;[B)V

    invoke-static {v0, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->setMessageId(Landroid/os/Bundle;B)V

    return-object p0
.end method

.method public static createStartAdvertisementCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d4

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createStartDiscoveryCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d2

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createStopAdvertisementCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d6

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createStopDiscoveryCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d3

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createUnregisterCallbackCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Landroid/os/Message;
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d1

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v1, "KEY_CALLBACK"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public static createUnregisterMessageIntentListenerCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7db

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createUnregisterSimpleMessageListenerCommand(I)Landroid/os/Message;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d9

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public static createUpdateAdvertisementCommand(I[B)Landroid/os/Message;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCommand(I)Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0x7d5

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "KEY_ADVERTISEMENT_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public static getActionName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_MESSAGE_INTENT_ACTION_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdvertisementData(Landroid/os/Message;)[B
    .locals 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_ADVERTISEMENT_DATA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getAppId(Landroid/os/Message;)I
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p0, Landroid/os/Message;->arg1:I

    return p0
.end method

.method public static getBtMac(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_BT_MAC"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallback(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
    .locals 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_CALLBACK"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    move-result-object p0

    return-object p0
.end method

.method public static getCommand(Landroid/os/Message;)I
    .locals 0
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p0, Landroid/os/Message;->what:I

    return p0
.end method

.method public static getConfirm(Landroid/os/Message;)I
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

    const-string v0, "KEY_CONFIRM"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getContinuityNearbyDevice(Landroid/os/Bundle;)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE_ARRAY_LIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
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

    const-string v0, "KEY_NETWORK_POLICY_BUNDLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p0, Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNetworkPolicyWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getMessageData(Landroid/os/Message;)[B
    .locals 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_MESSAGE_DATA"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getMessageId(Landroid/os/Message;)B
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_MESSAGE_ID"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static getMessageIntentAction(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "KEY_MESSAGE_INTENT_ACTION_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPackageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    const-string v0, "KEY_MESSAGE_INTENT_PACKAGE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPort(Landroid/os/Message;)I
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

    const-string v0, "KEY_PORT"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setBtMac(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "KEY_BT_MAC"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContinuityNearbyDevice(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNearbyMyDeviceWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE_ARRAY_LIST"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static setContinuityNetworkPolicyWrapper(Landroid/os/Bundle;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityNetworkPolicyWrapperToBundle(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_NETWORK_POLICY_BUNDLE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static setMessageData(Landroid/os/Bundle;[B)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "KEY_MESSAGE_DATA"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public static setMessageId(Landroid/os/Bundle;B)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "KEY_MESSAGE_ID"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-void
.end method

.method public static setMessageIntentAction(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "KEY_MESSAGE_INTENT_ACTION_NAME"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
