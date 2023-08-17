.class public Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestToSamsungAccountManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;


# instance fields
.field private mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    return-void
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogined()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;->isLogined()Z

    move-result v0

    return v0
.end method

.method public static requestAuthInfo(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;->requestAuthInfo(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method


# virtual methods
.method public setRequestSamsungAccountContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->mRequestSamsungAccountContract:Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;

    return-void
.end method
