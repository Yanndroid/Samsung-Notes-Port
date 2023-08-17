.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/NotificationContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllImportNotification()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelAllImportNotification()V

    return-void
.end method

.method public cancelAllSyncNotification()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelAllSyncNotification()V

    return-void
.end method

.method public launchImportNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->launchImportNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void
.end method

.method public launchImportTipCardNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->launchImportTipCardNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void
.end method

.method public launchSyncNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->launchSyncNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method

.method public launchSyncTipCardNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->launchSyncTipCardNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method

.method public showImportedFileCorruptedMessage(III)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_imported_corrupted_files:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-ne p3, v5, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_imported_corrupted_one_file:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-ne p1, v5, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_imported_one_file_and_corrupted_files:I

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v5}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
