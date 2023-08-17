.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MCFDS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds"

.field private static final MCFDS_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.mcfds.McfDeviceSyncService"

.field private static final SERVICE_STATE_AVAILABLE:I = 0x5

.field public static final SERVICE_STATE_CONNECTED:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_DISCONNECTED:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_NONE:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SERVICE_STATE_REQUESTED:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SERVICE_STATE_UNAVAILABLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ContinuityAdapterImpl"


# instance fields
.field private mAppId:I

.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile mServiceState:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuityCallbackManager()Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->createIContinuitySdkCallback()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuityCommandManager(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-static {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuitySimpleMessageManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuityDiscoveryManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;)Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    invoke-static {v1, v0}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuitySession(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuitySessionMessageManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuitySessionFileManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/impl/Injection;->createContinuitySessionManagerImpl(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionMessageManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionFileManagerImpl;Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$release$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->destroy()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$initialize$0(I)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$unbindService$3(Landroid/content/Context;)V

    return-void
.end method

.method private createServiceConnection(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Landroid/content/ServiceConnection;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-object v0
.end method

.method private static createStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mcfds.ACTION_START_FROM_CONTINUITY_SDK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.mcfds"

    const-string v3, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Caller"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->lambda$bindService$2(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V

    return-void
.end method

.method private destroy()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->destroy()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$bindService$2(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    const-string v1, "bindService"

    const-string v2, "ContinuityAdapterImpl"

    if-nez v0, :cond_0

    const-string p2, "Please initialize first"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lk3/a;

    invoke-direct {p2, p1}, Lk3/a;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid service state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lk3/a;

    invoke-direct {p2, p1}, Lk3/a;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createServiceConnection(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Landroid/content/ServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "start bindService"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return-void

    :cond_2
    const-string v0, "fail bindService"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    iput v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lk3/a;

    invoke-direct {p2, p1}, Lk3/a;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initialize$0(I)V
    .locals 3

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "initialize"

    const-string v2, "INIT_SUCCESS"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->start()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    return-void
.end method

.method private synthetic lambda$release$1(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "release"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdown()V

    return-void
.end method

.method private synthetic lambda$unbindService$3(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ContinuityAdapterImpl"

    const-string/jumbo v1, "unbindService"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V

    return-void
.end method

.method private unbindServiceImpl(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    const-string/jumbo v1, "unbindServiceImpl"

    const-string v2, "ContinuityAdapterImpl"

    if-nez v0, :cond_0

    const-string p1, "Please initialize first"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid service state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "connected, unregister callback"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendUnregisterCallbackCommand()Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->destroy()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/e;

    invoke-direct {v0, p0, p2, p1}, Lk3/e;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public getAppId()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mAppId:I

    return v0
.end method

.method public getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityAdapterImpl"

    const-string v2, "getContinuityDiscoveryManager"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityDiscoveryManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    return-object v0
.end method

.method public getContinuitySessionManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityAdapterImpl"

    const-string v2, "getContinuitySessionManager"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuitySessionManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    return-object v0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public getServiceState()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I

    return v0
.end method

.method public initialize(Landroid/content/Context;I)I
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->isContinuityFeatureEnabled()Z

    move-result v0

    const-string v1, "initialize"

    const-string v2, "ContinuityAdapterImpl"

    if-nez v0, :cond_0

    const-string p1, "INIT_FAIL_FEATURE_NOT_ENABLED"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x385

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "INIT_FAIL_SETTING_NOT_ENABLED"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x386

    return p1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->initServiceSupportFeatures(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isServiceSupportAppId(I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "INIT_FAIL_APP_ID_NOT_SUPPORTED"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x387

    return p1

    :cond_2
    new-instance p1, Lk3/b;

    invoke-direct {p1, p0, p2}, Lk3/b;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    const/16 p1, 0x384

    return p1
.end method

.method public release(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/c;

    invoke-direct {v0, p0, p1}, Lk3/c;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lk3/d;

    invoke-direct {v0, p0, p1}, Lk3/d;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
