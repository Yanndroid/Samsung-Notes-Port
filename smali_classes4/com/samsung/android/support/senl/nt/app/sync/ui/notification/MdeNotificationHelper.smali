.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANNEL_ID_NOTIFICATION_MDE:Ljava/lang/String; = "channel_id_notification_mde"

.field public static final MADE_NOTIFICATION_TYPE:Ljava/lang/String; = "mde_notification_type"

.field public static final MDE_ACTION_CANCEL:Ljava/lang/String; = "mde_cancel"

.field public static final MDE_ACTION_OK:Ljava/lang/String; = "mde_ok"

.field public static final MDE_INVITATION_ACTION_DATA_GROUP_ID:Ljava/lang/String; = "mde_invitation_action_data_group_id"

.field public static final MDE_INVITATION_ACTION_KEY:Ljava/lang/String; = "mde_invitation_action_key"

.field public static final MDE_NOTIFICATION_ADDED_ITEM_OPENED_FROM_SES:Ljava/lang/String; = "com.samsung.android.app.notes.sync.ui.MDE_NOTIFICATION_ADDED_ITEM_OPENED_FROM_SES"

.field public static final MDE_NOTIFICATION_INTENT_FILTER:Ljava/lang/String; = "com.samsung.android.app.notes.sync.ui.MDE_NOTIFICATION_INTENT_FILTER"

.field public static final MDE_NOTIFICATION_KEY:Ljava/lang/String; = "mde_notification_key"

.field public static final MDE_NOTIFICATION_TYPE_INVITE:I = 0x6f

.field private static final TAG:Ljava/lang/String; = "MdeNotificationHelper"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static cancelMdeNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MdeNotificationHelper"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_1

    const-string v1, "[Notification] remove the MDE notification!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while canceling notification. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private static createButtonNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_new_gcs_invitation_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_new_gcs_invitation_body:I

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x1

    aput-object p3, v4, p2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_message:I

    new-array v2, p2, [Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_accept:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$drawable;->stat_notify_notes:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "channel_id_notification_mde"

    const/4 v8, 0x4

    invoke-static {p0, v7, v4, v8, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getCancelPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-static {p0, v8, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getAcceptPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    add-int/lit8 v8, v2, 0x2

    invoke-static {p0, v8}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getActivityShowPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    if-eqz v7, :cond_0

    new-instance v6, Landroid/app/Notification$Action$Builder;

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_join_dialog_decline:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p3, v8, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Landroid/app/Notification$Action$Builder;

    invoke-direct {v6, p3, v1, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "mde_notification_key"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/16 v1, 0x6f

    const-string v4, "mde_notification_type"

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "notification"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string p3, "MdeNotificationHelper"

    invoke-virtual {p0, p3, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    aput-object v0, p0, p2

    const-string p1, "createButtonNotification() notify : %d (%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createInfoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->stat_notify_notes:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel_id_notification_mde"

    const/4 v3, 0x4

    invoke-static {p0, v2, v1, v3, p5}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification$Builder;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p5, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 p4, 0x1

    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {p5, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    const-string p5, "notification"

    invoke-virtual {p0, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const-string p5, "MdeNotificationHelper"

    invoke-virtual {p0, p5, p1, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p0, p3

    aput-object p2, p0, p4

    const-string p1, "createButtonNotification() notify : %d (%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getAcceptPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.sync.ui.MDE_NOTIFICATION_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mde_notification_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mde_invitation_action_data_group_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mde_invitation_action_key"

    const-string v1, "mde_ok"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getActivityShowPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getSharedInvitationListClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0xc000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getCancelPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.sync.ui.MDE_NOTIFICATION_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mde_notification_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mde_invitation_action_data_group_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mde_invitation_action_key"

    const-string v1, "mde_cancel"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedNotebookActivityShowPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getSharedNotebookActivityShowPendingIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedNotebookActivityShowPendingIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "spaceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "groupId"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.app.notes.sync.ui.MDE_START_NOTES"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMemberDetailIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lv/e;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v2, 0xc000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public launchMdeInvitationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->createButtonNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchMdeItemAddedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getSharedNotebookActivityShowPendingIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_gcs_item_added_title:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, p5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    if-gt p5, v1, :cond_0

    sget p5, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_item_added_body_single_no_member_name:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v4

    invoke-virtual {p4, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget p5, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_item_added_body_multi_no_member_name:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v4

    invoke-virtual {p4, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-gt p5, v1, :cond_2

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_item_added_body_single:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v4

    aput-object p3, v0, v1

    invoke-virtual {p5, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_gcs_item_added_body:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, v1

    aput-object p3, v5, v0

    invoke-virtual {v2, v3, p5, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v5, p3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->createInfoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public launchMdeMemberJoinNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getMemberDetailIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_new_member_joined_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_new_member_joined_body:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object p3, v5, p2

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->createInfoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public launchMdeMemberLeftNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getMemberDetailIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_member_left_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_member_left_body:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object p3, v5, p2

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->createInfoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public launchMdeMemberRemovedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p4, :cond_0

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v0

    invoke-virtual {v0}, Lv/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p4, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getSharedNotebookActivityShowPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getMemberDetailIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p4

    :goto_0
    move-object v4, p4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_member_removed_title:I

    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_member_removed_body:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const/4 p2, 0x1

    aput-object p3, v3, p2

    invoke-virtual {p4, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->createInfoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public launchMdeSpaceDeletedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->getSharedNotebookActivityShowPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_deleted_title:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {v0}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_deleted_body:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v5, v7

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->createInfoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void
.end method
