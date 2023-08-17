.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuitySessionManagerImpl"


# instance fields
.field private final mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuitySessionMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySessionMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$registerPeerConnectionRequestListener$1(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$disconnect$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$responseConnect$3(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$requestConnect$2(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$openSession$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    return-void
.end method

.method private synthetic lambda$disconnect$4(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->forceDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openSession$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->open(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    return-void
.end method

.method private synthetic lambda$registerPeerConnectionRequestListener$1(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$2;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->registerPeerConnectionRequestListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    return-void
.end method

.method private synthetic lambda$requestConnect$2(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$3;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$3;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->requestConnect(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method private synthetic lambda$responseConnect$3(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    move-object p4, v1

    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->responseConnect(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method


# virtual methods
.method public closeSession()Z
    .locals 3

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "closeSession"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk3/i1;

    invoke-direct {v1, v0}, Lk3/i1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySessionMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->destroy()V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "disconnect"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/n1;

    invoke-direct {v0, p0, p1}, Lk3/n1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public getContinuitySessionFileManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySessionFileManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContinuitySessionMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySessionMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;

    return-object v0
.end method

.method public openSession(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "openSession"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/m1;

    invoke-direct {v0, p0, p1}, Lk3/m1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public registerPeerConnectionRequestListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "registerPeerConnectionRequestListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/l1;

    invoke-direct {v0, p0, p1}, Lk3/l1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public requestConnect(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .locals 3
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

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "requestConnect"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/o1;

    invoke-direct {v0, p0, p1, p2, p3}, Lk3/o1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public responseConnect(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .locals 7
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

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "responseConnect"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    const-string p1, "CONFIRM_ACCEPT, but null peerStatusListener"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v6, Lk3/k1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lk3/k1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-static {v6}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public unregisterPeerConnectionRequestListener()V
    .locals 3

    const-string v0, "ContinuitySessionManagerImpl"

    const-string/jumbo v1, "unregisterPeerConnectionRequestListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->mContinuitySession:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk3/j1;

    invoke-direct {v1, v0}, Lk3/j1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
