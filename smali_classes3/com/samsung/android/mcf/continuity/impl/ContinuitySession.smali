.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuitySession"


# instance fields
.field private final mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityConnectionMap:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContinuityConnectionMapLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContinuityPacketBuilder:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mFileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsOpened:Z

.field private mMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)V
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->newBuilder()Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityPacketBuilder:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->onAccepted(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->handleSessionStatusChanged(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->handlePeerStatusChanged(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->handlePeerConnectionRequested(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Landroidx/collection/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-object p0
.end method

.method public static synthetic b(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$handlePeerConnected$5(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$forceDisconnect$9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkNetworkPolicy(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result p1

    const/16 v1, 0x1e

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->createInstance(III)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private closeServer()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    const-string v1, "closeServer"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi ap is not supported"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "-"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    :cond_1
    return-void
.end method

.method private createControlSocketCallback(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;)V

    return-object v0
.end method

.method private createPeerConnectionRequestListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method private createPeerStatusListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method private createSendMessageCallbackWrapper()Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;
    .locals 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$4;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method private createSessionStatusListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$onAccepted$0(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already disconnected, btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuitySession"

    const-string v1, "disconnect"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->destroy()V

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerDisconnected(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static synthetic e(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$handleSessionStatusChanged$8(I)V

    return-void
.end method

.method public static synthetic f(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$handlePeerStatusChanged$4(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$onAccepted$2(Ljava/lang/String;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    move-result-object p0

    return-object p0
.end method

.method private getLocalPort()I
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->getLocalPort()I

    move-result v1

    :cond_2
    return v1
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$handlePeerDisconnected$7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handlePeerConnected(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    if-nez v0, :cond_0

    const-string p1, "ContinuitySession"

    const-string p2, "handlePeerConnected"

    const-string p3, "null mContinuityNetworkPolicyWrapper"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createControlSocketCallback(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;

    move-result-object v1

    invoke-static {p1, p2, p3, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createInstance(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid networkType : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuitySession"

    const-string p3, "handlePeerConnected"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    new-instance v0, Lk3/k0;

    invoke-direct {v0, p3, p1}, Lk3/k0;-><init>(ZLjava/lang/String;)V

    const-string v1, "ContinuitySession"

    const-string v2, "handlePeerConnected"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    if-nez p3, :cond_1

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocket()Ljava/net/Socket;

    move-result-object p3

    new-instance v0, Lk3/s0;

    invoke-direct {v0, p0, p1}, Lk3/s0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->connectAndSetControlSocket(Ljava/net/Socket;Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerConnected(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePeerConnecting(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuitySession"

    const-string v1, "handlePeerConnecting"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlePeerConnectionRequested(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;->onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    :cond_0
    return-void
.end method

.method private handlePeerDisconnected(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lk3/j0;

    invoke-direct {v0, p1}, Lk3/j0;-><init>(Ljava/lang/String;)V

    const-string v1, "ContinuitySession"

    const-string v2, "handlePeerDisconnected"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->disconnect(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method private handlePeerStatusChanged(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .locals 5
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getBtMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPort()I

    move-result p2

    new-instance v2, Lk3/t0;

    invoke-direct {v2, p1, v0, v1, p2}, Lk3/t0;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    const-string v3, "ContinuitySession"

    const-string v4, "handlePeerStatusChanged"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    if-nez v0, :cond_0

    const-string p1, "null btMac"

    :goto_0
    invoke-static {v3, v4, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "not contain peerStatusListener"

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid status : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->handlePeerConnecting(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->handlePeerDisconnected(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->handlePeerConnected(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSessionStatusChanged(I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    if-eqz v0, :cond_0

    new-instance v0, Lk3/l0;

    invoke-direct {v0, p0, p1}, Lk3/l0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;I)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$registerMessageListener$10(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method private ipToBtMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v3

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isServerOpened()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic j(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$handlePeerConnected$6(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$onAccepted$1(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$unregisterMessageListener$11()V

    return-void
.end method

.method private static synthetic lambda$forceDisconnect$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$handlePeerConnected$5(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", btMac = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handlePeerConnected$6(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->onControlSocketConnectResult(ZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handlePeerDisconnected$7(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btMac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$handlePeerStatusChanged$4(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", btMac = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ip = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", port = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleSessionStatusChanged$8(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onSessionStatusChanged(I)V

    return-void
.end method

.method private static synthetic lambda$notifyPeerConnected$3(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
    .locals 0

    const/16 p1, 0x14

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-object p2
.end method

.method private synthetic lambda$onAccepted$0(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->onControlSocketConnectResult(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onAccepted$1(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 0

    new-instance p3, Lk3/r0;

    invoke-direct {p3, p0, p2}, Lk3/r0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->setControlSocket(Ljava/net/Socket;Ljava/util/function/Consumer;)V

    return-object p4
.end method

.method private static synthetic lambda$onAccepted$2(Ljava/lang/String;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;)Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    .locals 0

    invoke-virtual {p4, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->addFileSocket(Ljava/lang/String;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-object p4
.end method

.method private synthetic lambda$registerMessageListener$10(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$6;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSessionMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method private synthetic lambda$unregisterMessageListener$11()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSessionMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->lambda$notifyPeerConnected$3(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    move-result-object p0

    return-object p0
.end method

.method private notifyPeerConnected(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lk3/o0;

    invoke-direct {v1, p1}, Lk3/o0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method private notifyPeerDisconnected(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    const/16 v1, 0x15

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setBtMac(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;->onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    :cond_0
    return-void
.end method

.method private onAccepted(Ljava/net/Socket;)V
    .locals 5
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContinuitySession"

    const-string v1, "accept"

    const-string v2, "null inetAddress"

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ContinuitySession"

    const-string v1, "accept"

    const-string v2, "null ip"

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->ipToBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown ip : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySession"

    const-string v2, "accept"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "socket ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", btMac = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContinuitySession"

    const-string v3, "accept"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    new-instance v3, Lk3/n0;

    invoke-direct {v3, p0, p1, v1}, Lk3/n0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Ljava/net/Socket;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mFileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    if-nez v0, :cond_4

    const-string v0, "ContinuitySession"

    const-string v1, "accept"

    const-string v2, "null fileInfoListener"

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    new-instance v4, Lk3/p0;

    invoke-direct {v4, v1, p1, v0}, Lk3/p0;-><init>(Ljava/lang/String;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not connected btMac : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySession"

    const-string v2, "accept"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private onControlSocketConnectResult(ZLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerConnected(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerDisconnected(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openServer()Z
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    const-string v1, "openServer"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi ap is not supported"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->createInstance()Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->enableReuseAddress()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityServerSocket:Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;

    new-instance v1, Lk3/q0;

    invoke-direct {v1, p0}, Lk3/q0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityServerSocket;->accept(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableReuseAddress SocketException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->closeServer()V

    return v0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createInstance IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private registerCallbackWrappers()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createSendMessageCallbackWrapper()Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSendMessageCallbackWrapper(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createSessionStatusListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSessionStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createPeerConnectionRequestListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setPeerConnectionRequestListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createPeerStatusListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setPeerStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method private setPeerStatusListener(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private unregisterCallbackWrappers()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSendMessageCallbackWrapper(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$SendMessageCallbackWrapper;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setSessionStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setPeerConnectionRequestListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setPeerStatusListenerWrapper(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendCloseSessionCommand()Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mMessageListener:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->unregisterCallbackWrappers()V

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->closeServer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public forceDisconnect(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lk3/i0;

    invoke-direct {v0, p1}, Lk3/i0;-><init>(Ljava/lang/String;)V

    const-string v1, "ContinuitySession"

    const-string v2, "forceDisconnect"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->disconnect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendDisconnectCommand(Ljava/lang/String;)Z

    return-void
.end method

.method public getPeerConnectionRequestListener()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    return-object v0
.end method

.method public hasPeerStatusListener(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerStatusListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public open(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    const-string v1, "open"

    const-string v2, "ContinuitySession"

    if-eqz v0, :cond_0

    const-string p1, "already opened"

    :goto_0
    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->openServer()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "fail openServer"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->registerCallbackWrappers()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendOpenSessionCommand()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "fail sendOpenSessionCommand"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->unregisterCallbackWrappers()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mSessionStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->closeServer()V

    :cond_2
    return-void
.end method

.method public registerFileInfoListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mFileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method

.method public registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/m0;

    invoke-direct {v0, p0, p1}, Lk3/m0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public registerPeerConnectionRequestListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    const-string v1, "ContinuitySession"

    if-nez v0, :cond_0

    const-string p1, "registerPeerConnectionRequestListener"

    const-string v0, "not opened session"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendRegisterSessionListenerCommand()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "registerSessionListener"

    const-string v0, "fail sendRegisterSessionListenerCommand"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    :cond_1
    return-void
.end method

.method public requestConnect(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    const/16 v1, 0x15

    const-string v2, "requestConnect"

    const-string v3, "ContinuitySession"

    if-nez v0, :cond_0

    const-string/jumbo p2, "session is not opened"

    :goto_0
    invoke-static {v3, v2, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not supported networkType : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/16 v4, 0xb

    if-eq v0, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->isServerOpened()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "server socket is not opened"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->getLocalPort()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->checkNetworkPolicy(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "different network policy"

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->setPeerStatusListener(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p2, "duplicated connect"

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v4, p1, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendRequestConnectCommand(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "fail sendRequestConnectCommand"

    invoke-static {v3, v2, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->setPeerStatusListener(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    invoke-static {p1, v1, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    :cond_5
    return-void
.end method

.method public responseConnect(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mIsOpened:Z

    const/16 v1, 0x15

    const-string v2, "responseConnect"

    const-string v3, "ContinuitySession"

    if-nez v0, :cond_0

    const-string/jumbo p1, "session is not opened"

    :goto_0
    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v1, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not supported networkType : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v4, 0xb

    if-eq v0, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->isServerOpened()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "server socket is not opened"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->getLocalPort()I

    move-result v0

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->checkNetworkPolicy(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p1, "different network policy"

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->setPeerStatusListener(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p1, "duplicated connect"

    goto :goto_0

    :cond_4
    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v4, p1, p2, v0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendResponseConnectCommand(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "fail sendRequestConnectCommand"

    invoke-static {v3, v2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->setPeerStatusListener(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mConnectionRequestedSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p2, v1, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->notifyPeerStatusChanged(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    :cond_7
    return-void
.end method

.method public responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .locals 4
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ContinuitySession"

    const-string p2, "responseReceiveFile"

    const-string p3, "null continuityNetworkPolicyWrapper"

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    const-string p1, "ContinuitySession"

    const-string p2, "responseReceiveFile"

    const-string p3, "BT session does not support File"

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getSrcBtMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getFileSequence()I

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const-string p1, "ContinuitySession"

    const-string p2, "responseReceiveFile"

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not connected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v1

    :cond_2
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->responseReceiveFile(IILjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p1

    monitor-exit v2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendFile(Ljava/lang/String;[BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ContinuitySession"

    const-string p2, "sendFile"

    const-string p3, "null continuityNetworkPolicyWrapper"

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    const-string p1, "ContinuitySession"

    const-string p2, "sendFile"

    const-string p3, "BT session does not support File"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const-string p2, "ContinuitySession"

    const-string p3, "sendFile"

    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not connected "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-virtual {v2, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->sendFile([BLjava/io/File;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendMessage(Ljava/lang/String;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "btMac = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message.length = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ContinuitySession"

    const-string v1, "sendMessage"

    invoke-static {v0, v1, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityNetworkPolicyWrapper:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p1, "ContinuitySession"

    const-string p2, "sendMessage"

    const-string p3, "null continuityNetworkPolicyWrapper"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result p3

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityConnectionMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const-string p2, "ContinuitySession"

    const-string p3, "sendMessage"

    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not connected btMac : "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->getMessageId()B

    move-result v3

    const/16 v4, 0xb

    if-ne p3, v4, :cond_2

    invoke-virtual {v2, v3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->putSendMessageCallback(BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {p3, p1, p2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendSessionMessageCommand(Ljava/lang/String;[BB)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_3

    const-string p2, "ContinuitySession"

    const-string p3, "sendMessage"

    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail sendSessionMessageCommand : "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->removeSendMessageCallback(B)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    monitor-exit v1

    return v0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mContinuityPacketBuilder:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    invoke-virtual {p1, v4}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setType(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setId(I)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    invoke-virtual {v2, p1, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->sendMessage(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->incrementMessageId()V

    const/4 p1, 0x1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unregisterFileInfoListener()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mFileInfoListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method

.method public unregisterMessageListener()V
    .locals 1

    new-instance v0, Lk3/h0;

    invoke-direct {v0, p0}, Lk3/h0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterPeerConnectionRequestListener()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->mPeerConnectionRequestListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    return-void
.end method
