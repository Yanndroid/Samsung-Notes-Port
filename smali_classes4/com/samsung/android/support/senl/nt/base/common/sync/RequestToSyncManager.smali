.class public Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;


# instance fields
.field private mCoeditResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

.field private mGcsResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

.field private mRequestSyncContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mRequestSyncContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mGcsResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mCoeditResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    return-void
.end method

.method public static deleteCoeditDataAllAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestDeleteCoeditNoteDataAllAndDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAccountGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->getAccountGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->sInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initPreferenceMDESupported()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->initPreferenceMDESupported()V

    return-void
.end method

.method public static isAutoSyncPossible()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isAutoSyncPossible()Z

    move-result v0

    return v0
.end method

.method public static isCoeditFeatureSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isCoeditFeatureSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isCoeditWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isCoeditWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDataCallNotLimitedForApp()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isDataCallNotLimitedForApp()Z

    move-result v0

    return v0
.end method

.method public static isDataNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isDataNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSesAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isSesAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isWiFiAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isWiFiAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static requestCoeditTitleUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestCoeditTitleUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestCoeditUpdateItemData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestCoeditUpdateItemData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static requestDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestShareDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static requestDeleteCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestShareDeleteCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static requestServerNoteInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestServerNoteInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V

    return-void
.end method

.method public static requestShareBackground(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestShareBackground(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestSyncBackground()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncBackground()Z

    move-result v0

    return v0
.end method

.method public static requestSyncByModification()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncByModification()Z

    move-result v0

    return v0
.end method

.method public static requestSyncDownFirst(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncDownFirst(Ljava/lang/String;)V

    return-void
.end method

.method public static requestSyncForConflictedNote(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncForConflictedNote(Ljava/lang/String;I)V

    return-void
.end method

.method public static requestSyncForServerPolling()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncForServerPolling()V

    return-void
.end method

.method public static requestSyncUpFirst(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncUpFirst(Ljava/lang/String;)V

    return-void
.end method

.method public static setCategoryOrderModifiedTime(J)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->setCategoryOrderModifiedTime(J)V

    return-void
.end method

.method public static setSyncEnableByUserClick(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->setSyncEnableByUserClick(Z)V

    return-void
.end method

.method public static stopSyncBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;->onEnded(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->stopSyncBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    return-void
.end method


# virtual methods
.method public getCoeditResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mCoeditResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    return-object v0
.end method

.method public getGcsResolver()Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mGcsResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

    return-object v0
.end method

.method public getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mRequestSyncContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    return-object v0
.end method

.method public notifyOnDocumentClosed()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->notifyOnDocumentClosed()V

    return-void
.end method

.method public requestSyncDownForServerNoteTemporarily(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;->requestSyncDownForServerNoteTemporarily(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    return-void
.end method

.method public setCoeditResolver(Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mCoeditResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;

    return-void
.end method

.method public setGcsResolver(Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mGcsResolverContract:Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;

    return-void
.end method

.method public setRequestSyncContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->mRequestSyncContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    return-void
.end method
