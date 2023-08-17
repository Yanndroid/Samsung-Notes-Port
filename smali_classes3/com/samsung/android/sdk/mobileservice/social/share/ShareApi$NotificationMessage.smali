.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMessage"
.end annotation


# instance fields
.field private mAllItemsDownloadFailed:Ljava/lang/String;

.field private mAllItemsDownloaded:Ljava/lang/String;

.field private mAllItemsUploadFailed:Ljava/lang/String;

.field private mAllItemsUploaded:Ljava/lang/String;

.field private mDownloadingMultiItems:Ljava/lang/String;

.field private mDownloadingOneItem:Ljava/lang/String;

.field private mGroupStatusChanged:Ljava/lang/String;

.field private mMultiItemsDeleted:Ljava/lang/String;

.field private mMultiItemsDownloadedAndMultiItemsFailed:Ljava/lang/String;

.field private mMultiItemsDownloadedAndOneItemFailed:Ljava/lang/String;

.field private mMultiItemsUploadedAndMultiItemsFailed:Ljava/lang/String;

.field private mMultiItemsUploadedAndOneItemFailed:Ljava/lang/String;

.field private mMultiSpacesDeleted:Ljava/lang/String;

.field private mOneItemDeleted:Ljava/lang/String;

.field private mOneItemDownloadFailed:Ljava/lang/String;

.field private mOneItemDownloaded:Ljava/lang/String;

.field private mOneItemDownloadedAndMultiItemsFailed:Ljava/lang/String;

.field private mOneItemUploadFailed:Ljava/lang/String;

.field private mOneItemUploaded:Ljava/lang/String;

.field private mOneItemUploadedAndMultiItemsFailed:Ljava/lang/String;

.field private mOneSpaceDeleted:Ljava/lang/String;

.field private mPreparingDownloadMultiItems:Ljava/lang/String;

.field private mPreparingDownloadOneItem:Ljava/lang/String;

.field private mPreparingUploadMultiItems:Ljava/lang/String;

.field private mPreparingUploadOneItem:Ljava/lang/String;

.field private mQuotaExceededError:Ljava/lang/String;

.field private mUploadingMultiItems:Ljava/lang/String;

.field private mUploadingOneItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setMessageForAllItemsDownloadFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsDownloadFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForAllItemsDownloaded(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsDownloaded:Ljava/lang/String;

    return-void
.end method

.method public setMessageForAllItemsUploadFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsUploadFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForAllItemsUploaded(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsUploaded:Ljava/lang/String;

    return-void
.end method

.method public setMessageForDownloadingMultiItems(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mDownloadingMultiItems:Ljava/lang/String;

    return-void
.end method

.method public setMessageForDownloadingOneItem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mDownloadingOneItem:Ljava/lang/String;

    return-void
.end method

.method public setMessageForGroupStatusChanged(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mGroupStatusChanged:Ljava/lang/String;

    return-void
.end method

.method public setMessageForMultiItemsDeleted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsDeleted:Ljava/lang/String;

    return-void
.end method

.method public setMessageForMultiItemsDownloadedAndMultiItemsFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsDownloadedAndMultiItemsFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForMultiItemsDownloadedAndOneItemFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsDownloadedAndOneItemFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForMultiItemsUploadedAndMultiItemsFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsUploadedAndMultiItemsFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForMultiItemsUploadedAndOneItemFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsUploadedAndOneItemFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForMultiSpacesDeleted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiSpacesDeleted:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemDeleted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDeleted:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemDownloadFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDownloadFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemDownloaded(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDownloaded:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemDownloadedAndMultiItemsFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDownloadedAndMultiItemsFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemUploadFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemUploadFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemUploaded(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemUploaded:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneItemUploadedAndMultiItemsFailed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemUploadedAndMultiItemsFailed:Ljava/lang/String;

    return-void
.end method

.method public setMessageForOneSpaceDeleted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneSpaceDeleted:Ljava/lang/String;

    return-void
.end method

.method public setMessageForPreparingDownloadMultiItems(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingDownloadMultiItems:Ljava/lang/String;

    return-void
.end method

.method public setMessageForPreparingDownloadOneItem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingDownloadOneItem:Ljava/lang/String;

    return-void
.end method

.method public setMessageForPreparingUploadMultiItems(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingUploadMultiItems:Ljava/lang/String;

    return-void
.end method

.method public setMessageForPreparingUploadOneItem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingUploadOneItem:Ljava/lang/String;

    return-void
.end method

.method public setMessageForQuotaExceededError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mQuotaExceededError:Ljava/lang/String;

    return-void
.end method

.method public setMessageForUploadingMultiItems(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mUploadingMultiItems:Ljava/lang/String;

    return-void
.end method

.method public setMessageForUploadingOneItem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mUploadingOneItem:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingUploadOneItem:Ljava/lang/String;

    const-string v2, "preparing_upload_1"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingUploadMultiItems:Ljava/lang/String;

    const-string v2, "preparing_upload_multi"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mUploadingOneItem:Ljava/lang/String;

    const-string/jumbo v2, "uploading_1"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mUploadingMultiItems:Ljava/lang/String;

    const-string/jumbo v2, "uploading_multi"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemUploaded:Ljava/lang/String;

    const-string v2, "1_uploaded"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsUploaded:Ljava/lang/String;

    const-string v2, "multi_uploaded"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemUploadedAndMultiItemsFailed:Ljava/lang/String;

    const-string v2, "1_uploaded_multi_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsUploadedAndOneItemFailed:Ljava/lang/String;

    const-string v2, "multi_uploaded_1_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsUploadedAndMultiItemsFailed:Ljava/lang/String;

    const-string v2, "multi_uploaded_multi_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemUploadFailed:Ljava/lang/String;

    const-string/jumbo v2, "upload_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsUploadFailed:Ljava/lang/String;

    const-string/jumbo v2, "upload_multi_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingDownloadOneItem:Ljava/lang/String;

    const-string v2, "preparing_download_1"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mPreparingDownloadMultiItems:Ljava/lang/String;

    const-string v2, "preparing_download_multi"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mDownloadingOneItem:Ljava/lang/String;

    const-string v2, "downloading_1"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mDownloadingMultiItems:Ljava/lang/String;

    const-string v2, "downloading_multi"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDownloaded:Ljava/lang/String;

    const-string v2, "1_downloaded"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsDownloaded:Ljava/lang/String;

    const-string v2, "multi_downloaded"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDownloadedAndMultiItemsFailed:Ljava/lang/String;

    const-string v2, "1_download_multi_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsDownloadedAndOneItemFailed:Ljava/lang/String;

    const-string v2, "multi_download_1_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsDownloadedAndMultiItemsFailed:Ljava/lang/String;

    const-string v2, "multi_download_multi_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDownloadFailed:Ljava/lang/String;

    const-string v2, "download_1_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mAllItemsDownloadFailed:Ljava/lang/String;

    const-string v2, "download_multi_failed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneItemDeleted:Ljava/lang/String;

    const-string v2, "item_deleted"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiItemsDeleted:Ljava/lang/String;

    const-string v2, "items_deleted"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mOneSpaceDeleted:Ljava/lang/String;

    const-string/jumbo v2, "space_deleted"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mMultiSpacesDeleted:Ljava/lang/String;

    const-string/jumbo v2, "spaces_deleted"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mGroupStatusChanged:Ljava/lang/String;

    const-string v2, "group_status_changed"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->mQuotaExceededError:Ljava/lang/String;

    const-string v2, "quota_exceeded_error"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;->putMessage(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
