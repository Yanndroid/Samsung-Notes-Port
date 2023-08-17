.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$CoeditInviteResultAsyncTask;,
        Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$CoeditUserNameAsyncTask;,
        Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditNotificationHelper"


# instance fields
.field private final mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    return-object p0
.end method

.method private getAutoTitleStandAlone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAutoTitleStandAlone# title is null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditNotificationHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_invite_auto_title:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getDateStringByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCreatedAt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getTitleTime(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getDateStringByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUuidByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getCreatedAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getTitleByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUuidByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public cancelNotifyByInviteCanceled()V
    .locals 5

    const-string v0, "CoeditNotificationHelper"

    const-string v1, "cancelNotifyByInviteCanceled#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v3, "group_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelNotifyByInviteCanceled# Null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->cancelGroupInvitedNotification(Ljava/lang/String;)V

    return-void
.end method

.method public getDocUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mSyncNoteDataRepository:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getCoeditNoteUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->getCreatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_invite_auto_title:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/UserInfo;->getCreatorName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getCreatedAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTitleByItemId# getCoeditNoteUserInfo is null. mSpaceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mItemId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoeditNotificationHelper"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->base_title_no_title:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notifyGroupDelegateAuthorityOfOwner()V
    .locals 8

    const-string v0, "CoeditNotificationHelper"

    const-string v1, "notifyGroupDelegateAuthorityOfOwner#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v3, "group_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v4, "group_requester_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_leader_changed_notebook_body:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v2, v6, v4

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchLeaderDelegationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getTitleByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getAutoTitleStandAlone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_leader_changed_note_auto_title_body:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_notification_leader_changed_note_body:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-virtual {v3, v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchLeaderDelegationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyGroupDelegateAuthorityOfOwner# null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyGroupDeleted()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyGroupDeleted# Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoeditNotificationHelper"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchGroupDeletedNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyGroupInvite()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CoeditNotificationHelper"

    if-nez v0, :cond_0

    const-string v0, "[CS2] notifyGroupInvite# ignore"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v3, "group_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v4, "group_requester_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "[CS2] notifyGroupInvite# launch"

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/CoeditInvitationMenuBadgeUpdater;->setInvitationListHasBadgePref(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchInvitationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS2-2] notifyGroupInvite# null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyInviteResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "COEDIT_invitation_action_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COEDIT_invitation_action_data_group_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COEDIT_invitation_action_data_group_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CoeditNotificationHelper"

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$CoeditInviteResultAsyncTask;

    invoke-direct {v2, p1, v1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$CoeditInviteResultAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v2, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p2, "COEDIT_ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "COEDIT_cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.notes.sync.ui.COEDIT_NOTIFICATION_INTENT_FILTER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "COEDIT_NOTIFICATION_GROUP_ID"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const-string p1, "notifyInviteResult# COEDIT_NOTIFICATION_INTENT_FILTER sendBroadcast"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "554"

    if-eqz p1, :cond_2

    const-string p1, "7591"

    goto :goto_0

    :cond_2
    const-string p1, "7590"

    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyInviteResult# null error. groupId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isAccept: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyItemAdded()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "space_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v3, "space_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v3, "item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v3, "item_count"

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v11, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$CoeditUserNameAsyncTask;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mContext:Landroid/content/Context;

    move-object v2, v11

    move-object v6, v8

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$CoeditUserNameAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;)V

    new-array v0, v9, [Ljava/lang/Void;

    invoke-virtual {v11, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS2-2] notifyItemAdded# Null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditNotificationHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyItemDeleted(Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "CoeditNotificationHelper"

    const-string v1, "notifyItemDeleted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "space_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "item_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v5}, Lv/d;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    move v8, p2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchItemDeletedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyItemDeleted# null : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyStandaloneNoteDeletedWhenNotDownloaded()V
    .locals 9

    const-string v0, "CoeditNotificationHelper"

    const-string v1, "notifyStandaloneNoteDeletedWhenNotDownloaded#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mIntent:Landroid/content/Intent;

    const-string v2, "group_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->mCoeditLaunchNotification:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchItemDeletedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStandaloneNoteDeletedWhenNotDownloaded# null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
