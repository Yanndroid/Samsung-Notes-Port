.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

.field private static mResIdMapTipCardBody:Landroid/util/SparseIntArray;

.field private static mResIdMapTipCardTitle:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_cloud_server_storage_exceeds_title:I

    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_title:I

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_in_settings_title:I

    const/16 v4, 0x800

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    const/16 v5, 0x80

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_can_not_sync_notes_title:I

    const/16 v6, 0x200

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_cloud_server_storage_exceeds_body_jp:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_body_pre_jp:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_in_settings_body_jp:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_can_not_sync_notes_body_jp:I

    :goto_0
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasSaSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_cloud_server_storage_exceeds_body_na:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_body_pre_na:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_cloud_server_storage_exceeds_body:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_body_pre:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_not_enough_cloud_storage_in_settings_body:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_can_not_sync_notes_body:I

    goto :goto_0

    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_fail_to_sync_not_enough_device_storage_body:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getResIdTipCardBody(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardBody:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static getResIdTipCardTitle(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->mResIdMapTipCardTitle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method
