.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;,
        Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;,
        Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/CoeditController"


# instance fields
.field private mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

.field private mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

.field private mRestoreContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mRestoreContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mRestoreContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;

    return-object p0
.end method

.method private setRequestUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->setRequestUpdate(Z)V

    return-void
.end method


# virtual methods
.method public canShowProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->canShowProgress()Z

    move-result v0

    return v0
.end method

.method public getAbnormalReleased(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getAbnormalReleased(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->createCoeditCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastDownloadedCheckPoint(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getLastDownloadedCheckPoint(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleExceedMaxConnectDevice(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->handleExceedMaxConnectDevice(J)V

    return-void
.end method

.method public hideProgress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->hideProgress(Ljava/lang/String;)V

    return-void
.end method

.method public isEditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public isLocalDataChanged(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isLocalDataChanged(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkReconnectDisabled()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isNetworkReconnectDisabled()Z

    move-result v0

    return v0
.end method

.method public isReconnectAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;->isReconnectAvailable()Z

    move-result v0

    return v0
.end method

.method public isSnapUploadCompleted(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isSnapUploadCompleted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onDeviceListUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->onDeviceListUpdated(Ljava/util/List;)V

    return-void
.end method

.method public onError(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->handleError(JLjava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mRestoreContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    return-void
.end method

.method public releaseForReconnect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;->releaseForReconnect(Ljava/lang/String;)V

    return-void
.end method

.method public releaseJwt()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;->releaseJwt()V

    return-void
.end method

.method public requestDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NT/CoeditController"

    const-string v1, "[CS7] requestDownloadFile()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "[CS7-2] requestDownloadFile() : Empty uuid!"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[CS7-2] requestDownloadFile() : No groupId!"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMinimumMemory()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "[CS7-2] requestDownloadFile() : No isAvailableMinimumMemory!"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isMemoryUnavailable()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "[CS7-2] requestDownloadFile() : isMemoryUnavailable"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "[CS7-2] requestDownloadFile() : DataNetwork is not available!"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->getAuthorizationSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "[CS3-2] requestDownloadFile() : Authorization is not available!"

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;

    invoke-direct {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudDownloadFile;->perform()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_1
    const-string p1, "[CS7-2] requestDownloadFile() : invalid accessToken or userId!"

    goto :goto_0
.end method

.method public requestReconnect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;->requestReconnect(Ljava/lang/String;)V

    return-void
.end method

.method public requestUploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 13

    const-string v0, "NT/CoeditController"

    const-string v1, "[CS5] requestUploadFile()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v1, "[CS5-2] requestUploadFile() : Empty uuid!"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[CS5-2] requestUploadFile() : No groupId!"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[CS5-2] requestUploadFile() : DataNetwork is not available!"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lh2/a;->g(Landroid/content/Context;)Lh2/a;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[CS5-2] requestUploadFile() : Authorization is not available!"

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;

    move-object v5, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-wide/from16 v9, p4

    move-object/from16 v11, p7

    move-object v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudUploadFile;->perform()I

    move-result v0

    return v0

    :cond_5
    :goto_1
    const-string v1, "[CS5-2] requestUploadFile() : invalid accessToken or userId!"

    goto :goto_0
.end method

.method public restoreUndrawnData(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->restorePrefInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils$RestoreDownloadListener;)V

    return-void
.end method

.method public runOnUiThread(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ManagerContract;->runOnUiThread(J)V

    return-void
.end method

.method public setAbnormalReleased(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setAbnormalReleased(Ljava/lang/String;I)V

    return-void
.end method

.method public setDisableOfflineEditMode(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->setDisableOfflineEditMode(Z)V

    return-void
.end method

.method public setLastDownloadedCheckPoint(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setLastDownloadedCheckPoint(Ljava/lang/String;J)V

    return-void
.end method

.method public setRequestUpdate(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setRequestUpdate(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setRequestUpdate(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->setRequestUpdate(Z)V

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setRequestUpdate(Ljava/lang/String;I)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->setRequestUpdate(Z)V

    :goto_1
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController;->mComposerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$ComposerContract;->showProgress(Ljava/lang/String;)V

    return-void
.end method
