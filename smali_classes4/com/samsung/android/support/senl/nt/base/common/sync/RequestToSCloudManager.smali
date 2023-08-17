.class public Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestToSCloudManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;


# instance fields
.field private mRequestSCloudContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mRequestSCloudContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAuthorizationSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mRequestSCloudContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;

    if-nez v0, :cond_0

    const-string p1, "RequestToSCloudManager"

    const-string p2, "getAuthorization() : No contract!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;->getAuthorizationSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDataNetworkAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mRequestSCloudContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;

    if-nez v0, :cond_0

    const-string v0, "RequestToSCloudManager"

    const-string v1, "isDataNetworkAvailable() : No contract!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;->isDataNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public setRequestSCloudContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->mRequestSCloudContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;

    return-void
.end method
