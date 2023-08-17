.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityCallbackManager"


# instance fields
.field private volatile mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mPeerConnectionRequestListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mPeerStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mSendMessageCallbackWrapper:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mSessionMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mSessionStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->handleDiscoveryDiscovered(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Ljava/lang/String;[BB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->handleMessageReceived(Ljava/lang/String;[BB)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Ljava/lang/String;BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->handleMessageSent(Ljava/lang/String;BI)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->handleSessionPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->handleSessionPeerStatusChanged(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->handleSessionStatusChanged(I)V

    return-void
.end method

.method private handleDiscoveryDiscovered(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .locals 3
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleDiscoveryDiscovered"

    const-string v1, "ContinuityCallbackManager"

    if-nez p2, :cond_0

    const-string p1, "null parameters"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    if-nez v2, :cond_1

    const-string p1, "null discoveryListener"

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;->onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method

.method private handleMessageReceived(Ljava/lang/String;[BB)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleMessageReceived"

    const-string v1, "ContinuityCallbackManager"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    if-nez p3, :cond_2

    const-string p1, "null simpleMessageListener"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSessionMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    if-nez p3, :cond_2

    const-string p1, "null sessionMessageListener"

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "null parameters"

    goto :goto_0
.end method

.method private handleMessageSent(Ljava/lang/String;BI)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleMessageSent"

    const-string v1, "ContinuityCallbackManager"

    if-nez p1, :cond_0

    const-string p1, "null parameters"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "SendMessageCallback for simple message is not supported"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSendMessageCallbackWrapper:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;

    if-nez v2, :cond_2

    const-string p1, "null sendMessageCallbackWrapper"

    goto :goto_0

    :cond_2
    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;->onMessageSent(Ljava/lang/String;BI)V

    :goto_1
    return-void
.end method

.method private handleSessionPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleSessionPeerConnectionRequested"

    const-string v1, "ContinuityCallbackManager"

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mPeerConnectionRequestListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    if-nez v2, :cond_1

    const-string p1, "null peerConnectionRequestListenerWrapper"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;->onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "null parameters"

    goto :goto_0
.end method

.method private handleSessionPeerStatusChanged(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .locals 3
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "handleSessionPeerStatusChanged"

    const-string v1, "ContinuityCallbackManager"

    if-nez p2, :cond_0

    const-string p1, "null parameters"

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mPeerStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    if-nez v2, :cond_1

    const-string p1, "null peerStatusListenerWrapper"

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;->onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method

.method private handleSessionStatusChanged(I)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSessionStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    if-nez v0, :cond_0

    const-string p1, "ContinuityCallbackManager"

    const-string v0, "handleSessionStatusChanged"

    const-string v1, "null sessionStatusListenerWrapper"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onSessionStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public createIContinuitySdkCallback()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSessionMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSendMessageCallbackWrapper(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSessionStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setPeerStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setPeerConnectionRequestListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    return-void
.end method

.method public setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mDiscoveryListener:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    return-void
.end method

.method public setPeerConnectionRequestListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mPeerConnectionRequestListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    return-void
.end method

.method public setPeerStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mPeerStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    return-void
.end method

.method public setSendMessageCallbackWrapper(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSendMessageCallbackWrapper:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;

    return-void
.end method

.method public setSessionMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSessionMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method

.method public setSessionStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSessionStatusListenerWrapper:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    return-void
.end method

.method public setSimpleMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->mSimpleMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method
