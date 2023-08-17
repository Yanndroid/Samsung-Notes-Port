.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ImageDownloadingResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceDeletionResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionListResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemListWithContentListResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemListResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithContentListResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemUpdateResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemSyncResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListSyncResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithMediaServiceContentIdRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithUriRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithMediaServiceContentIdRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithDataRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemUpdateWithUriListRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriListRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriRequest;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;
    }
.end annotation


# static fields
.field public static final API_NAME:Ljava/lang/String; = "ShareApi"

.field public static final EXTRA_DOWNLOAD_NOTI_ALL_ITEMS_DOWNLOADED:Ljava/lang/String; = "multi_downloaded"

.field public static final EXTRA_DOWNLOAD_NOTI_ALL_ITEMS_DOWNLOAD_FAILED:Ljava/lang/String; = "download_multi_failed"

.field public static final EXTRA_DOWNLOAD_NOTI_GROUP_STATUS_CHANGED:Ljava/lang/String; = "group_status_changed"

.field public static final EXTRA_DOWNLOAD_NOTI_ITEMS_DELETED:Ljava/lang/String; = "items_deleted"

.field public static final EXTRA_DOWNLOAD_NOTI_ITEMS_DOWNLOADED_WITH_ITEMS_FAILED:Ljava/lang/String; = "multi_download_multi_failed"

.field public static final EXTRA_DOWNLOAD_NOTI_ITEMS_DOWNLOADED_WITH_ONE_ITEM_FAILED:Ljava/lang/String; = "multi_download_1_failed"

.field public static final EXTRA_DOWNLOAD_NOTI_ITEMS_DOWNLOADING:Ljava/lang/String; = "downloading_multi"

.field public static final EXTRA_DOWNLOAD_NOTI_ITEMS_DOWNLOAD_PREPARING:Ljava/lang/String; = "preparing_download_multi"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_ITEM_DELETED:Ljava/lang/String; = "item_deleted"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_ITEM_DOWNLOADED:Ljava/lang/String; = "1_downloaded"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_ITEM_DOWNLOADED_WITH_ITEMS_FAILED:Ljava/lang/String; = "1_download_multi_failed"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_ITEM_DOWNLOADING:Ljava/lang/String; = "downloading_1"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_ITEM_DOWNLOAD_FAILED:Ljava/lang/String; = "download_1_failed"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_ITEM_DOWNLOAD_PREPARING:Ljava/lang/String; = "preparing_download_1"

.field public static final EXTRA_DOWNLOAD_NOTI_ONE_SPACE_DELETED:Ljava/lang/String; = "space_deleted"

.field public static final EXTRA_DOWNLOAD_NOTI_SPACES_DELETED:Ljava/lang/String; = "spaces_deleted"

.field public static final EXTRA_SHARE_NOTI_ALL_ITEMS_UPLOADED:Ljava/lang/String; = "multi_uploaded"

.field public static final EXTRA_SHARE_NOTI_ALL_ITEMS_UPLOAD_FAILED:Ljava/lang/String; = "upload_multi_failed"

.field public static final EXTRA_SHARE_NOTI_GROUP_STATUS_CHANGED:Ljava/lang/String; = "group_status_changed"

.field public static final EXTRA_SHARE_NOTI_ITEMS_DELETED:Ljava/lang/String; = "items_deleted"

.field public static final EXTRA_SHARE_NOTI_ITEMS_UPLOADED_WITH_ITEMS_FAILED:Ljava/lang/String; = "multi_uploaded_multi_failed"

.field public static final EXTRA_SHARE_NOTI_ITEMS_UPLOADED_WITH_ONE_ITEM_FAILED:Ljava/lang/String; = "multi_uploaded_1_failed"

.field public static final EXTRA_SHARE_NOTI_ITEMS_UPLOADING:Ljava/lang/String; = "uploading_multi"

.field public static final EXTRA_SHARE_NOTI_ITEMS_UPLOAD_PREPARING:Ljava/lang/String; = "preparing_upload_multi"

.field public static final EXTRA_SHARE_NOTI_ONE_ITEM_DELETED:Ljava/lang/String; = "item_deleted"

.field public static final EXTRA_SHARE_NOTI_ONE_ITEM_UPLOADED:Ljava/lang/String; = "1_uploaded"

.field public static final EXTRA_SHARE_NOTI_ONE_ITEM_UPLOADED_WITH_ITEMS_FAILED:Ljava/lang/String; = "1_uploaded_multi_failed"

.field public static final EXTRA_SHARE_NOTI_ONE_ITEM_UPLOADING:Ljava/lang/String; = "uploading_1"

.field public static final EXTRA_SHARE_NOTI_ONE_ITEM_UPLOAD_FAILED:Ljava/lang/String; = "upload_failed"

.field public static final EXTRA_SHARE_NOTI_ONE_ITEM_UPLOAD_PREPARING:Ljava/lang/String; = "preparing_upload_1"

.field public static final EXTRA_SHARE_NOTI_ONE_SPACE_DELETED:Ljava/lang/String; = "space_deleted"

.field public static final EXTRA_SHARE_NOTI_QUOTA_EXCEEDED_ERROR:Ljava/lang/String; = "quota_exceeded_error"

.field public static final EXTRA_SHARE_NOTI_SPACES_DELETED:Ljava/lang/String; = "spaces_deleted"

.field public static final HD_1280_SIZE_IMAGE:Ljava/lang/String; = "hd"

.field public static final HQVGA_240_SIZE_IMAGE:Ljava/lang/String; = "low"

.field public static final ORIGINAL_SIZE_IMAGE:Ljava/lang/String; = "original"

.field private static final TAG:Ljava/lang/String; = "ShareApi"

.field private static final TYPE_FULL_SYNC:Ljava/lang/String; = "FULL_SYNC"

.field private static final TYPE_SYNC_WITH_LAST_THUMBNAIL:Ljava/lang/String; = "SYNC_WITH_LAST_THUMBNAIL"

.field public static final WQHD_2560_SIZE_IMAGE:Ljava/lang/String; = "wqhd"


# instance fields
.field private final featureIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCid:Ljava/lang/String;

.field private mFeatureId:I

.field private mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x1f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->featureIdSet:Ljava/util/HashSet;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->isValidFeatureId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/mobileservice/common/exception/NotSupportedApiException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/mobileservice/common/exception/NotSupportedApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    return-void
.end method

.method private isValidFeatureId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->featureIdSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clearUnreadCount(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->clearUnreadCount(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getFamilyQuota()Lcom/samsung/android/sdk/mobileservice/social/share/result/QuotaResult;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->getFamilyQuota(I)Lcom/samsung/android/sdk/mobileservice/social/share/result/QuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public getQuota()Lcom/samsung/android/sdk/mobileservice/social/share/result/QuotaResult;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->getQuota(I)Lcom/samsung/android/sdk/mobileservice/social/share/result/QuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public getVerifiedOriginalFileList(Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/share/result/OriginalFileListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/OriginalFileListResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->getVerifiedOriginalFileList(Ljava/util/List;I)Lcom/samsung/android/sdk/mobileservice/social/share/result/OriginalFileListResult;

    move-result-object p1

    return-object p1
.end method

.method public requestDeleteAllItemsFromTrashBin(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestDeleteAllItemsFromTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestDeleteItemListFromTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestDeleteItemListFromTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestInstantShare(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public requestItemThumbnailDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v6, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestItemThumbnailDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestMoveItemListToTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestMoveItemListToTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestRestoreItemListFromTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestRestoreItemListFromTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestShare(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriListRequest;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithContentListResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestShare(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriListRequest;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithContentListResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestShare(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestShare(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$NotificationMessage;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestShare(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestShare(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestShare(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestShare(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestShare(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriListRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestShare(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestSharedContentDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v5, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedContentDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public requestSharedContentDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v7, v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedContentDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public requestSharedContentDownload(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedContentDownload(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public requestSharedContentDownload(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedContentDownload(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public requestSharedContentDownload(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedContentDownload(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public requestSharedContentDownloadToHiddenFolder(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedContentDownloadToHiddenFolder(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ContentDownloadingResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemResultCallback;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->requestSharedItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemResultCallback;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemDeletion(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionResultCallback;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemDeletion(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemDeletion(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/ItemListResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemDeletion(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemDeletion(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionListResultCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionListResultCallback;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemDeletion(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemDeletionListResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemListResultCallback;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemListResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemListWithContentListResultCallback;)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemListWithContentListResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemListInTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/TrashedItemListResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemListInTrashBin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemSync(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemSyncResultCallback;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemSync(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemSync(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemSyncResultCallback;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSharedItemUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemUpdateResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemUpdateResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestSharedItemUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriListRequest;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithContentListResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithUriListRequest;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithContentListResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestSharedItemUpdate(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListResult;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemUpdate(Ljava/lang/String;Ljava/util/List;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestSharedItemWithUriListUpdate(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemUpdateWithUriListRequest;",
            ">;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListWithUriListResult;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSharedItemWithUriListUpdate(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareUploadResultCallback;Landroid/app/PendingIntent;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/share/ShareController;

    move-result-object p1

    return-object p1
.end method

.method public requestSpace(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpace(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceCoverImageDownload(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ImageDownloadingResultCallback;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceCoverImageDownload(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ImageDownloadingResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceCreation(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceCreation(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceDeletion(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceDeletionResultCallback;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceDeletion(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceDeletionResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceList(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceList(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceList(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceList(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceListSync(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListSyncResultCallback;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceListSync(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "content_uri"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "memo"

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, "content_uri"

    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    invoke-virtual {v2, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p6, Ljava/util/HashMap;

    const-string p2, "meta_data"

    invoke-virtual {v2, p2, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "memo"

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "content_hash"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "file_name"

    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "file_size"

    invoke-virtual {v2, p2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdate(Ljava/lang/String;Ljava/util/Map;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    check-cast p2, Ljava/util/HashMap;

    const-string v0, "meta_data"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdate(Ljava/lang/String;ZLcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;ZLjava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSpaceUpdateWithMediaServiceContentId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "media_service_content_id"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "file_name"

    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "file_size"

    invoke-virtual {v2, p2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const/4 v3, 0x0

    move-object v1, p1

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceUpdate(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSync(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSync(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSync(Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSync(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/SyncOption;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSync(ZLcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const-string v4, "FULL_SYNC"

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSync(Ljava/lang/String;IZLjava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSyncWithLastThumbnail(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListSyncResultCallback;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSpaceListSync(Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestSyncWithLastThumbnail(ZLcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mCid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    const-string v4, "SYNC_WITH_LAST_THUMBNAIL"

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestSync(Ljava/lang/String;IZLjava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestThumbnailDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v6, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestThumbnailDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method

.method public requestWebLinkEnabled(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mShareApiImpl:Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;

    iget v4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;->mFeatureId:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApiImpl;->requestWebLinkEnabled(Ljava/lang/String;Ljava/lang/String;ZILcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareBaseResultCallback;)I

    move-result p1

    return p1
.end method
