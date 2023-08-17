.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityCommandManager"


# instance fields
.field private volatile mAppId:I

.field private final mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    return-void
.end method

.method private getInternalBundle(Landroid/os/Message;)Landroid/os/Bundle;
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    const/4 v1, 0x0

    const-string v2, "getInternalBundle"

    const-string v3, "ContinuityCommandManager"

    if-nez v0, :cond_0

    const-string p1, "null iContinuitySdkCommand"

    :goto_0
    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v4

    :try_start_0
    invoke-interface {v0, p1, v4}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private internalCommand(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    const-string v1, "internalCommand"

    const-string v2, "ContinuityCommandManager"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "null iContinuitySdkCommand"

    :goto_0
    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    return-void
.end method

.method public getMessageIntentAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createGetMessageIntentActionCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->getInternalBundle(Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getMessageIntentAction(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNearbyMyDevices()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createGetContinuityNearbyDeviceCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->getInternalBundle(Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getContinuityNearbyDevice(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z
    .locals 5
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "initialize"

    const-string v1, "ContinuityCommandManager"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string p1, "null iContinuitySdkCommand"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createIsMainControllerStartedCommand(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "main controller is not started"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    return v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    invoke-static {p1, v3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterCallbackCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    move-result v3

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCommand:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to registerCallback "

    :goto_1
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to check started "

    goto :goto_1
.end method

.method public sendCloseSessionCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCloseSessionCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendDisconnectCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createDisconnectCommand(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendOpenSessionCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createOpenSessionCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendRegisterMessageIntentListenerCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterMessageIntentListenerCommand(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendRegisterSessionListenerCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterSessionListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendRegisterSimpleMessageListenerCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterSimpleMessageListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendRequestConnectCommand(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRequestConnectCommand(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendResponseConnectCommand(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createResponseConnectCommand(IILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendSessionMessageCommand(Ljava/lang/String;[BB)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createSendMessageCommand(ILjava/lang/String;[BB)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendSimpleMessageCommand(Ljava/lang/String;[B)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createSendMessageCommand(ILjava/lang/String;[B)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendStartAdvertisementCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStartAdvertisementCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendStartDiscoveryCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStartDiscoveryCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendStopAdvertisementCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStopAdvertisementCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendStopDiscoveryCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStopDiscoveryCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendUnregisterCallbackCommand()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mIContinuitySdkCallback:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterCallbackCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendUnregisterMessageIntentListenerCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterMessageIntentListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendUnregisterSimpleMessageListenerCommand()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterSimpleMessageListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendUpdateAdvertisementCommand([B)Z
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->mAppId:I

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUpdateAdvertisementCommand(I[B)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->internalCommand(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
