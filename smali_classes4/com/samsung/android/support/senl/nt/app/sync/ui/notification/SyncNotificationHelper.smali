.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID_NOTIFICATION_SYNC:Ljava/lang/String; = "CHANNEL_ID_NOTIFICATION_SYNC"

.field public static final SYNC_NOFITICATION_TYPE:Ljava/lang/String; = "SYNC_NOFITICATION_TYPE"

.field public static final SYNC_NOTIFICATION_KEY:Ljava/lang/String; = "SYNC_NOTIFICATION_KEY"

.field public static final SYNC_NOTIFICATION_TYPE_CLOUD:I = 0x6

.field public static final SYNC_NOTIFICATION_TYPE_IMPORT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SyncNotificationHelper"

.field private static mCurrentLocale:Ljava/util/Locale;

.field private static final mExecutor:Ljava/util/concurrent/Executor;

.field private static mNotiInfo:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "SyncNotificationHelper"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mNotiInfo:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    return-object v0
.end method

.method public static bridge synthetic b(Landroid/content/Context;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createImportNotification(Landroid/content/Context;III)V

    return-void
.end method

.method public static bridge synthetic c(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createSyncNotification(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method

.method public static cancelSyncNotification(Landroid/content/Context;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "cancelSyncNotification(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNotificationHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public static changeConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mCurrentLocale:Ljava/util/Locale;

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-object p1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mCurrentLocale:Ljava/util/Locale;

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static createImportNotification(Landroid/content/Context;III)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;-><init>(III)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->saveNotiInfo(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;)V

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_tipcard_fail_to_import_server_error_title:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_server_import_failed_body:I

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_network_import_failed_body:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_tipcard_device_storage_full:I

    goto :goto_0

    :goto_1
    const/4 v0, 0x7

    invoke-static {p0, v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createNotification(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createNotification(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->stat_notify_notes:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_jp:I

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_channel_name_sync:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v4, "CHANNEL_ID_NOTIFICATION_SYNC"

    invoke-static {p0, v4, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->getTipCardPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p4

    iget-object v0, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "SYNC_NOTIFICATION_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "SYNC_NOFITICATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string p1, "SyncNotificationHelper"

    invoke-virtual {p0, p1, p2, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v5

    aput-object p3, p0, v3

    const-string p2, "createNotification() notify : %d (%s)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createSyncNotification(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;-><init>(ILcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->saveNotiInfo(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->getResIdTipCardTitle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->getResIdTipCardBody(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Lb3/v;

    const-string v4, "100"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MB"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationTypeStrings;->getResIdTipCardBody(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result p1

    invoke-static {p0, v2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createNotification(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getTipCardPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/EdgeLightingHelper;->getIntentSupportEdgeLighting(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYNC_NOTIFICATION_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/EdgeLightingHelper;->getPendingIntentSupportEdgeLighting(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static saveNotiInfo(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mNotiInfo:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    return-void
.end method


# virtual methods
.method public cancelAllImportNotification()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SyncNotificationHelper"

    const-string v1, "cancelAllImportNotification()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lb3/a;->c(II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lb3/a;->c(II)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lb3/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-static {v2, v3}, Lb3/a;->c(II)I

    move-result v6

    invoke-virtual {v1, v0, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {v2, v4}, Lb3/a;->c(II)I

    move-result v6

    invoke-virtual {v1, v0, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {v2, v5}, Lb3/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v2, 0x2

    invoke-static {v2, v3}, Lb3/a;->c(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {v2, v4}, Lb3/a;->c(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {v2, v5}, Lb3/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelAllSyncNotification()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SyncNotificationHelper"

    const-string v1, "cancelAllSyncNotification()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/16 v2, 0x800

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/16 v2, 0x2000

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/16 v2, 0x200

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelNetworkErrNotification()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SyncNotificationHelper"

    const-string v1, "cancelNetworkErrNotification()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lb3/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-static {v2, v3}, Lb3/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 v2, 0x2

    invoke-static {v2, v3}, Lb3/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public launchImportNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lb3/a;->b(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)I

    move-result v0

    invoke-static {p2}, Lb3/a;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "SyncNotificationHelper"

    if-ne v1, v2, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "launchImportTipCardNotification(%s, %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lb3/a;->c(II)I

    move-result p2

    invoke-static {p1, p2, v1, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createImportNotification(Landroid/content/Context;III)V

    goto :goto_0

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "can\'t launchImportNotification(%s, %d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public launchImportTipCardNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lb3/a;->b(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)I

    move-result v0

    invoke-static {p2}, Lb3/a;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "SyncNotificationHelper"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "can\'t launchImportTipCardNotification(%s, %d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "launchImportTipCardNotification(%s, %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lb3/a;->c(II)I

    move-result p2

    invoke-static {p1, p2, v1, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createImportNotification(Landroid/content/Context;III)V

    :cond_4
    :goto_1
    return-void
.end method

.method public launchSyncNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch sync notification of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-static {v1}, Lb3/u;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNotificationHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    const/16 v2, 0x200

    if-eq v0, v2, :cond_1

    const-string p1, "launchSyncNotification() : No Noti!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createSyncNotification(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :goto_0
    return-void
.end method

.method public launchSyncTipCardNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch sync notification of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-static {v1}, Lb3/u;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNotificationHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    const-string p1, "launchSyncTipCardNotification() : No Noti!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->createSyncNotification(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :goto_0
    return-void
.end method
