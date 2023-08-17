.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuityDiscoveryManagerImpl"


# instance fields
.field private final mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;)V
    .locals 0
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->lambda$stopDiscovery$1()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->lambda$startDiscovery$0(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    return-void
.end method

.method private synthetic lambda$startDiscovery$0(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl$1;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendStartDiscoveryCommand()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v0, "startDiscovery"

    const-string v1, "fail sendStartDiscoveryCommand"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$stopDiscovery$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendStopDiscoveryCommand()Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCallbackManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->setDiscoveryListener(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;->destroy()V

    return-void
.end method

.method public getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuitySimpleMessageManagerImpl:Lcom/samsung/android/mcf/continuity/impl/ContinuitySimpleMessageManagerImpl;

    return-object v0
.end method

.method public getNearbyMyDevices()Ljava/util/List;
    .locals 3
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

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string v1, "getNearbyMyDevices"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->getNearbyMyDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startAdvertisement()Z
    .locals 3

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "startAdvertisement"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendStartAdvertisementCommand()Z

    const/4 v0, 0x1

    return v0
.end method

.method public startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "startDiscovery"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/v;

    invoke-direct {v0, p0, p1}, Lk3/v;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public stopAdvertisement()Z
    .locals 3

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "stopAdvertisement"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendStopAdvertisementCommand()Z

    const/4 v0, 0x1

    return v0
.end method

.method public stopDiscovery()Z
    .locals 3

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "stopDiscovery"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk3/u;

    invoke-direct {v0, p0}, Lk3/u;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public updateAdvertisement([B)Z
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "updateAdvertisement"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->sendUpdateAdvertisementCommand([B)Z

    move-result p1

    return p1
.end method
