.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditLaunchNotification"


# instance fields
.field private mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    return-void
.end method

.method private getCoeditMemberDetailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCoeditMemberDetailIntent# groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lv/e;->c(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v1, 0xc000000

    invoke-static {v0, p1, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getSharedNotesListIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSharedNotesListIntent# key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "spaceId"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "action_view_co_edit"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    const/high16 p3, 0xc000000

    invoke-static {p2, p1, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getSharedNotesMainIntent(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSharedNotesMainIntent# key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_view_co_edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancelGroupInvitedNotification(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelGroupInvitedNotification# groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->cancelCoeditNotification(Ljava/lang/String;)V

    return-void
.end method

.method public launchGroupDeletedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchGroupDeletedNotification# groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->getSharedNotesMainIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_deleted_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {v2}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_deleted_body:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->cancelCoeditNotification(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->createInfoNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public launchInvitationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "CoeditLaunchNotification"

    const-string v1, "[CS2] launchInvitationNotification#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_shared_note_invitation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_invite_you_join_shared_note_body:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_shared_notebook_invitation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_invite_you_join_notebook_body1:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v2

    aput-object p2, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_invite_you_join_notebook_body2:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->createInvitedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public launchItemAddedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS2] launchItemAddedNotification# itemNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->getSharedNotesListIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_gcs_item_added_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_member_manage_sub_header:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v1, 0x2

    if-gt p5, v2, :cond_2

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_item_added_body_single:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v5

    aput-object p3, v1, v2

    invoke-virtual {p5, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_gcs_item_added_body:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p4, v6, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, v2

    aput-object p3, v6, v1

    invoke-virtual {v3, v4, p5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {p4, p1, v0, p3, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->createInfoNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public launchItemDeletedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchItemDeletedNotification# groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_item_deleted_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    const-string p2, "Group://Standalone "

    const-string p3, ""

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    new-instance p2, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {p2}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget p5, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_deleted_body:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v2

    invoke-virtual {p3, p5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->getSharedNotesMainIntent(I)Landroid/app/PendingIntent;

    move-result-object p3

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_item_deleted_notebook_body:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p5, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p4

    invoke-direct {p0, p4, p1, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->getSharedNotesListIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p3

    :goto_0
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {p4, p1, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->createInfoNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public launchLeaderDelegationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchLeaderDelegationNotification# groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditLaunchNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_leader_changed_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->getCoeditMemberDetailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->mCoeditNotificationManager:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-virtual {v1, p1, v0, p3, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->createInfoNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
