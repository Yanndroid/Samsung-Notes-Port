.class Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->changeConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "SyncNotificationHelper"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;->val$context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeConfiguration() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeConfiguration(), StatusBarNotification : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "SYNC_NOTIFICATION_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->key:I

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNotiInfo key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->key:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "SYNC_NOFITICATION_TYPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    const-string v4, "invalid key "

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->key:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->errorType:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->importType:I

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->b(Landroid/content/Context;III)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->a()Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->c(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_3
    return-void
.end method
