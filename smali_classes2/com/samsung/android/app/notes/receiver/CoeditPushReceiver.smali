.class public Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$CoeditGroupAndSpaceSyncAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditPushReceiver"

.field private static sDeleteNotifiedStandaloneGroupIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->sDeleteNotifiedStandaloneGroupIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkMobileServiceStoragePermission(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "com.samsung.android.mobileservice"

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private handleAddItem(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V
    .locals 3

    const-string v0, "CoeditPushReceiver"

    const-string v1, "[CS2] handleAddItem#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->checkMobileServiceStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "handleAddItem# app is background and mobileservice storage permission not granted or wifi only option applied"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyItemAdded()V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v0

    const-string v1, "space_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$6;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$6;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->requestDownloadAddedNoteByPush(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method private handleAddSpace(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "space_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "space_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$2;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$2;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$CoeditGroupAndSpaceSyncAsyncTask;->requestSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleDelegationOwner(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "space_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, p2, v1}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$CoeditGroupAndSpaceSyncAsyncTask;->requestSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleDeleteItem(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Z)V
    .locals 5
    .param p3    # Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CoeditPushReceiver"

    const-string v1, "handleDeleteItem#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "space_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_count"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getTitleByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->getDocUuidByItemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2, p4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyItemDeleted(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;

    invoke-direct {v4, p0, p3, v2, p4}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {v3, p1, v1, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->requestDeleteLocalNoteByPush(Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V

    const/4 p1, 0x1

    if-le p2, p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->requestDownloadByPush(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleGroupAcceptInvite(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CoeditPushReceiver"

    if-eqz v1, :cond_0

    const-string p1, "handleGroupAcceptInvite# : null groupId"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGroupAcceptInvite# : groupId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mobileservice.ACTION_DETAIL_REFRESH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handleGroupIAcceptInvite(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CoeditPushReceiver"

    if-eqz v0, :cond_0

    const-string p1, "handleGroupIAcceptInvite# : null groupId"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupIAcceptInvite# groupId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->cancelCoeditNotification(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$4;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$4;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/samsung/android/app/notes/receiver/CoeditGroupAndGroupMemberSyncRequestAsyncTask;->requestSync(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleGroupIJoinGroup(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "group_id"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "CoeditPushReceiver"

    if-eqz p2, :cond_0

    const-string p1, "handleGroupIJoinGroup# : null groupId"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGroupIJoinGroup# groupId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/app/notes/receiver/CoeditGroupSyncRequestAsyncTask;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/notes/receiver/CoeditGroupSyncRequestAsyncTask;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleGroupInvite(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CoeditPushReceiver"

    if-eqz v1, :cond_0

    const-string p1, "[CS2-2] handleGroupAcceptInvite# : null groupId"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS2] handleGroupInvite# groupId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "COEDIT_GROUP_INVITATION_RECEIVED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private handleGroupInviteCanceled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->cancelNotifyByInviteCanceled()V

    return-void
.end method

.method private handleNotificationAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "COEDIT_invitation_action_data_group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleNotificationAction# null error. groupId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoeditPushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationManager;->closeSystemDialogIntent(Ljava/lang/String;)V

    return-void
.end method

.method private handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 4

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CoeditPushReceiver"

    if-eqz v1, :cond_0

    const-string p1, "[CS8-2] handleSpaceDelete# : null groupId"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS8] handleSpaceDelete# groupId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleSpaceDeleted(Ljava/lang/String;Z)V

    new-instance p3, Landroid/content/Intent;

    const-string v1, "COEDIT_SPACE_DELTE_RECEIVED_INTENT_FILTER"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "COEDIT_DELETED_GROUP_ID"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "group_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COEDIT_DELETED_GROUP_NAME"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleGroupInviteCanceled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleSpaceDeleted(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CoeditPushReceiver"

    if-eqz v0, :cond_0

    const-string p1, "[CS8-2] handleSpaceDeleted() : empty groupId"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS8] handleSpaceDeleted() : group id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$DeleteType;->GROUP:Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$DeleteType;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$DeleteType;->GROUP_LEAVE:Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$DeleteType;

    :cond_1
    new-instance p2, Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask;

    new-instance v1, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$5;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;)V

    invoke-direct {p2, v0, p1, v1}, Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/coedit/deletecore/CoeditDeleteLocalSharedSdocTask$b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleSpaceLeave(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "group_deleted_member_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v1

    invoke-virtual {v1}, Lv/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleSpaceLeave# deletedMemberId is wrong : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoeditPushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleUpdateItem(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string p1, "item_id"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "space_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/notes/receiver/CoeditItemUpdatePushAsyncTask;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/app/notes/receiver/CoeditItemUpdatePushAsyncTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private isFeatureIdCoedit(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "feature_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private requestGroupAndSpaceSync(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "space_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$CoeditGroupAndSpaceSyncAsyncTask;->requestSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestGroupAndSpaceSyncAndNotify(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$3;-><init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$CoeditGroupAndSpaceSyncAsyncTask;->requestSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "CoeditPushReceiver"

    if-nez p1, :cond_0

    const-string p1, "[CS2-2] onReceive context is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "[CS2-2] onReceive intent is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS2] onReceive start ( Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ln/a;->l(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v2

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.samsung.android.mobileservice.ACTION_SERVICE_STATUS_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Ln/a;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->G()Z

    :cond_4
    invoke-static {v2}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string p1, "[CS2] onReceive# is not CoeditFeatureSupported"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->isFeatureIdCoedit(Landroid/content/Intent;)Z

    move-result v4

    const-string v5, "com.samsung.android.app.notes.sync.ui.COEDIT_NOTIFICATION_INTENT_FILTER"

    const-string v6, "com.samsung.android.mobileservice.ACTION_ACTIVATED"

    if-nez v4, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    new-instance v4, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    invoke-direct {v4, v2, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_ACCEPT_INVITE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_SHARE_UPDATE_SPACE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_FORCE_MEMBER_DELETE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_DELEGATE_AUTHORITY_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_INVITE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_INVITATION_CANCELED_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_REJECTED_INVITE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_SHARE_UPDATE_ITEM_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_DELETE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_b
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_I_MEMBER_DELETE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_c
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_MEMBER_DELETE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_d
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_SHARE_ADD_SPACE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_e
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_SHARE_DELETE_ITEM_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_f
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_I_JOIN_GROUP_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_10
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_GROUP_I_ACCEPT_INVITE_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    move v7, v3

    goto :goto_0

    :sswitch_11
    const-string v5, "com.samsung.android.mobileservice.social.ACTION_SHARE_ADD_ITEM_WITH_FEATURE_ID_PUSH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    move v7, v9

    :goto_0
    const-string v1, "space_id"

    const-string v5, "group_id"

    packed-switch v7, :pswitch_data_0

    const-string p1, "[CS2-2] onReceive# action is not handled!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleGroupAcceptInvite(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_19
    :goto_1
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->requestGroupAndSpaceSync(Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1d

    new-instance p2, Lcom/samsung/android/app/notes/receiver/CoeditSpaceInfoSyncAsyncTask;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/notes/receiver/CoeditSpaceInfoSyncAsyncTask;-><init>(Ljava/lang/String;)V

    new-array p1, v9, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyInviteResult(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleNotificationAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyGroupDelegateAuthorityOfOwner()V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->requestGroupAndSpaceSync(Landroid/content/Intent;)V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleDelegationOwner(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyGroupInvite()V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleGroupInvite(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleGroupInviteCanceled(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleUpdateItem(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :pswitch_9
    const-string p1, "group_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->sDeleteNotifiedStandaloneGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_19

    invoke-static {p1}, Lv/d;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-direct {p0, v2, p2, v9}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyGroupDeleted()V

    goto :goto_1

    :cond_1a
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyStandaloneNoteDeletedWhenNotDownloaded()V

    goto :goto_1

    :cond_1b
    sget-object p1, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->sDeleteNotifiedStandaloneGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->setCoeditMemberManagerLeaveResult(Ljava/lang/String;Z)V

    invoke-direct {p0, v2, p2, v3}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2

    :pswitch_b
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleSpaceLeave(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleAddSpace(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getStandAlone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->sDeleteNotifiedStandaloneGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleDeleteItem(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Z)V

    goto :goto_2

    :pswitch_e
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->isFirstTimeToCoeditJoin(Z)Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleGroupIJoinGroup(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->requestGroupAndSpaceSyncAndNotify(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleGroupIAcceptInvite(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_10
    invoke-direct {p0, p2, v4}, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleAddItem(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V

    :cond_1d
    :goto_2
    return-void

    :cond_1e
    :goto_3
    const-string p1, "[CS2-2] onReceive action is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c2bc0d9 -> :sswitch_11
        -0x6b32dccc -> :sswitch_10
        -0x5d02ba08 -> :sswitch_f
        -0x5a2aa909 -> :sswitch_e
        -0x5905a82a -> :sswitch_d
        -0x3ed21292 -> :sswitch_c
        -0x220bb39c -> :sswitch_b
        -0x200c3453 -> :sswitch_a
        -0x139abf6b -> :sswitch_9
        -0x7f5ea0c -> :sswitch_8
        -0x3c28101 -> :sswitch_7
        0xb801383 -> :sswitch_6
        0x2916490f -> :sswitch_5
        0x421c27af -> :sswitch_4
        0x45b6f122 -> :sswitch_3
        0x50ddbd8f -> :sswitch_2
        0x60898428 -> :sswitch_1
        0x7806c43e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
