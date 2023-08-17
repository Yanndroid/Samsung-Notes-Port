.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GROUP_KEY_COEDIT_NOTE:Ljava/lang/String; = "com.samsung.android.app.notes.GROUP_KEY_COEDIT_NOTE"

.field private static final GROUP_SUMMARY_KEY_COEDIT_NOTE:I = 0x1393

.field private static final TAG:Ljava/lang/String; = "CoeditNotificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private cancelInviteSummaryNotification(Landroid/app/NotificationManager;)V
    .locals 7

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "com.samsung.android.app.notes.GROUP_KEY_COEDIT_NOTE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    move v2, v0

    :cond_2
    if-eqz v2, :cond_3

    const/16 v0, 0x1393

    const-string v1, "CoeditNotificationManager"

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private getAcceptPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.sync.ui.COEDIT_NOTIFICATION_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COEDIT_notification_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "COEDIT_invitation_action_data_group_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "COEDIT_invitation_action_data_group_name"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "COEDIT_invitation_action_key"

    const-string p3, "COEDIT_ok"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const/high16 p3, 0xc000000

    invoke-static {p2, p1, v0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getActivityShowPendingIntent(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_view_co_edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getCancelPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.sync.ui.COEDIT_NOTIFICATION_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COEDIT_notification_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "COEDIT_invitation_action_data_group_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "COEDIT_invitation_action_data_group_name"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "COEDIT_invitation_action_key"

    const-string p3, "COEDIT_cancel"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const/high16 p3, 0xc000000

    invoke-static {p2, p1, v0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getGroupNotificationBuilder(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->stat_notify_notes:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "channel_id_notification_mde"

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string p1, "com.samsung.android.app.notes.GROUP_KEY_COEDIT_NOTE"

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    return-object v1
.end method

.method private getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->stat_notify_notes:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "channel_id_notification_mde"

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    new-instance p3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const-string p1, "com.samsung.android.app.notes.GROUP_KEY_COEDIT_NOTE"

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object v1
.end method


# virtual methods
.method public cancelAllInvitationNotification()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "CoeditNotificationManager"

    if-nez v0, :cond_0

    const-string v0, "cancelAllInvitationNotification# Cannot cancel invitation notification!"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string v0, "cancelAllInvitationNotification# notificationManager is null"

    goto :goto_0

    :cond_1
    const-string v2, "cancelAllInvitationNotification# [Notification] remove the MDE notification!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    const-string v8, "COEDIT_notification_type"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x70

    if-ne v6, v7, :cond_5

    :try_start_0
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelAllInvitationNotification# Exception while canceling notification. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method public cancelCoeditNotification(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "CoeditNotificationManager"

    if-nez v0, :cond_0

    const-string p1, "cancelCoeditNotification# Cannot cancel notification!"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string p1, "cancelCoeditNotification# notificationManager is null"

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "cancelCoeditNotification# [Notification] remove the MDE notification!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->cancelInviteSummaryNotification(Landroid/app/NotificationManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCoeditNotification# Exception while canceling notification. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public closeSystemDialogIntent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSystemDialogIntent# groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditNotificationManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->cancelCoeditNotification(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->collapsePanels(Landroid/content/Context;)V

    return-void
.end method

.method public createInfoNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInfoNotification# start key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditNotificationManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/NotificationManager;

    invoke-virtual {p4, v1, p1, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createButtonNotification() notify : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createInvitedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createInvitedNotification# start key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoeditNotificationManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->getCancelPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->getAcceptPendingIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    add-int/lit8 p2, v0, 0x2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->getActivityShowPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->getGroupNotificationBuilder(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-direct {p0, p3, p4, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->getNotificationBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_decline:I

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    new-instance v5, Landroid/app/Notification$Action$Builder;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p4, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_invitation_join:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Landroid/app/Notification$Action$Builder;

    invoke-direct {v1, v6, p4, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p4, "COEDIT_notification_key"

    invoke-virtual {p2, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p4, "COEDIT_notification_type"

    const/16 v1, 0x70

    invoke-virtual {p2, p4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[CS2] createInvitedNotification() notify : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x1393

    invoke-virtual {v4, v2, p2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
