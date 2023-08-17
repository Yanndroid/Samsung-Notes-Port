.class public Lcom/samsung/android/app/notes/receiver/MdePushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;,
        Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;
    }
.end annotation


# static fields
.field private static final ACTION_DETAIL_REFRESH:Ljava/lang/String; = "com.samsung.android.mobileservice.ACTION_DETAIL_REFRESH"

.field private static final KEY_GROUP_ACCEPTED_MEMBER_NAME:Ljava/lang/String; = "group_accepted_member_name"

.field private static final KEY_GROUP_DELETED_MEMBER_ID:Ljava/lang/String; = "group_deleted_member_id"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final KEY_GROUP_MEMBER_NAME:Ljava/lang/String; = "member_name"

.field private static final KEY_GROUP_NAME:Ljava/lang/String; = "group_name"

.field private static final KEY_GROUP_REQUESTER_NAME:Ljava/lang/String; = "group_requester_name"

.field private static final KEY_ITEM_ID:Ljava/lang/String; = "item_id"

.field private static final KEY_PENDING_MEMBER:Ljava/lang/String; = "pending_member"

.field private static final KEY_SPACE_ID:Ljava/lang/String; = "space_id"

.field private static final KEY_SPACE_NAME:Ljava/lang/String; = "space_name"

.field private static final SES_ADD_ITEM:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_SHARE_ADD_ITEM_PUSH"

.field private static final SES_DELETE_ITEM:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_SHARE_DELETE_ITEM_PUSH"

.field private static final SES_GROUP_ACCEPT_INVITE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_ACCEPT_INVITE_PUSH"

.field private static final SES_GROUP_DELETE_PUSH:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_DELETE_PUSH"

.field private static final SES_GROUP_FORCE_MEMBER_DELETE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_FORCE_MEMBER_DELETE_PUSH"

.field private static final SES_GROUP_INVITE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_INVITE_PUSH"

.field private static final SES_GROUP_I_ACCEPT_INVITE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_I_ACCEPT_INVITE_PUSH"

.field private static final SES_GROUP_I_CREATE_GROUP:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_I_CREATE_GROUP_PUSH"

.field private static final SES_GROUP_I_MEMBER_DELETE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_I_MEMBER_DELETE_PUSH"

.field private static final SES_GROUP_MEMBER_DELETE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_GROUP_MEMBER_DELETE_PUSH"

.field private static final SES_MESSAGESHARE:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_MESSAGESHARE_PUSH"

.field private static final SES_SPACE_ADD:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_SHARE_ADD_SPACE_PUSH"

.field private static final SES_SPACE_DELETED:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_SHARE_DELETE_SPACE_PUSH"

.field private static final SES_UPDATE_ITEM:Ljava/lang/String; = "com.samsung.android.mobileservice.social.ACTION_SHARE_UPDATE_ITEM_PUSH"

.field private static final TAG:Ljava/lang/String; = "MdePushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showItemAddedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private handleGroupAcceptInvite(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "MdePushReceiver"

    if-nez p2, :cond_0

    const-string p1, "handleGroupAcceptInvite() : null groupId"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGroupAcceptInvite() : group id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mobileservice.ACTION_DETAIL_REFRESH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handleGroupDelete(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MdePushReceiver"

    if-nez p1, :cond_0

    const-string p1, "handleGroupDelete() : null groupId"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupDelete() : group id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;->GROUP:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    new-instance v2, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$2;-><init>(Lcom/samsung/android/app/notes/receiver/MdePushReceiver;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleGroupInvite(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "MdePushReceiver"

    const-string v1, "handleGroupInvite()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "group_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_requester_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "group_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez v1, :cond_0

    const-string p1, "handleGroupInvite() null groupId"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showAcceptInviteNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p2, Landroid/content/Intent;

    const-string v0, "GROUP_INVITATION_RECEIVED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private handleMemberDelete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_deleted_member_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MdePushReceiver"

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string p1, "handleMemberDelete() null args"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMemberDelete() : group id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", member id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v2

    invoke-virtual {v2}, Lv/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;

    sget-object p2, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;->MEMBER:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    new-instance v2, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$3;-><init>(Lcom/samsung/android/app/notes/receiver/MdePushReceiver;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "MdePushReceiver"

    if-eqz v1, :cond_0

    const-string p1, "handleSpaceDelete() null args"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSpaceDelete() : group id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "GCS_SPACE_DELTE_RECEIVED_INTENT_FILTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "GCS_DELETED_GROUP_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "group_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GCS_DELETED_GROUP_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private handleSpaceDeleted(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "space_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MdePushReceiver"

    if-nez p1, :cond_0

    const-string p1, "handleSpaceDeleted() : null spaceId"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSpaceDeleted() : space id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;

    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;->SPACE:Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;

    new-instance v2, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$1;-><init>(Lcom/samsung/android/app/notes/receiver/MdePushReceiver;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleUpdateMemberCount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MdePushReceiver"

    if-eqz v0, :cond_0

    const-string p1, "handleUpdateMemberCount() null args"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateMemberCount() : group id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "GCS_SPACE_MEMBER_UPDATED_RECEIVED_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "GCS_MEMBER_UPDATED_GROUP_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private notifyGroupDeleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showSpaceDeletedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private notifyItemAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "space_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "item_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "space_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "item_count"

    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    new-instance p2, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-array p1, v8, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyItemAdded() null "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdePushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private notifyMemberJoined(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_accepted_member_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showMemberJoinNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private notifyMemberLeft(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "MdePushReceiver"

    const-string v1, "notifyMemberLeft()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "member_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "group_deleted_member_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v3

    invoke-virtual {v3}, Lv/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showMemberLeftNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private notifyMemberRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "member_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "group_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "group_deleted_member_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showMemberRemovedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private notifySpaceDeleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "space_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->showSpaceDeletedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private requestShareNowFromReceiver(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lw/a;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lp/a;->o(Z)V

    :goto_0
    return-void
.end method

.method private requestShareNowFromReceiver(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 4

    const-string v0, "space_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "MdePushReceiver"

    if-nez v0, :cond_0

    const-string p1, "requestShareNowFromReceiver() null spaceId"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestShareNowFromReceiver() : space id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {p1, p2, v0}, Lv/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    if-eqz p3, :cond_3

    :cond_2
    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lp/a;->n(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result p3

    if-nez p3, :cond_2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lw/a;->d(Landroid/content/Context;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method private requestSync()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lu/h;->o(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSync Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdePushReceiver"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showAcceptInviteNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/GcsInvitationMenuBadgeUpdater;->setInvitationListHasBadgePref(Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->launchMdeInvitationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAcceptInviteNotification Null "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdePushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private static showItemAddedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->launchMdeItemAddedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private showMemberJoinNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->launchMdeMemberJoinNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMemberJoinNotification Null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdePushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private showMemberLeftNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->launchMdeMemberLeftNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMemberLeftNotification Null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdePushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private showMemberRemovedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->launchMdeMemberRemovedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "showMemberRemovedNotification Null "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdePushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private showSpaceDeletedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->launchMdeSpaceDeletedNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showSpaceDeletedNotification Null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MdePushReceiver"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "MdePushReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "onReceive context is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "onReceive intent is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive start ( Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v2

    const/16 v4, 0x12d

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v5

    invoke-virtual {v5}, Ln/a;->i()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_I_ACCEPT_INVITE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_SHARE_ADD_SPACE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_DELETE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "com.samsung.android.app.notes.sync.ui.MDE_NOTIFICATION_INTENT_FILTER"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_MESSAGESHARE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_I_CREATE_GROUP_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_INVITE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_SHARE_ADD_ITEM_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_SHARE_DELETE_SPACE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_9
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_FORCE_MEMBER_DELETE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    :cond_c
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_a
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_SHARE_UPDATE_ITEM_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_1

    :cond_d
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_b
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_SHARE_DELETE_ITEM_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_1

    :cond_e
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_c
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_MEMBER_DELETE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_1

    :cond_f
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_d
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_ACCEPT_INVITE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_1

    :cond_10
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_e
    const-string v6, "com.samsung.android.app.notes.sync.ui.MDE_NOTIFICATION_ADDED_ITEM_OPENED_FROM_SES"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_1

    :cond_11
    move v5, v4

    goto :goto_1

    :sswitch_f
    const-string v6, "com.samsung.android.mobileservice.social.ACTION_GROUP_I_MEMBER_DELETE_PUSH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_1

    :cond_12
    move v5, v7

    :goto_1
    packed-switch v5, :pswitch_data_0

    const-string p1, "Not supported!"

    goto :goto_2

    :pswitch_0
    const-string v4, "group_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->cancelMdeNotification(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/notes/receiver/MdeGroupSyncRequestAsyncTask;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/notes/receiver/MdeGroupSyncRequestAsyncTask;-><init>(Ljava/lang/String;)V

    new-array p2, v7, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_13
    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->requestShareNowFromReceiver(Landroid/content/Context;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {p0, v2, p2, v7}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->requestShareNowFromReceiver(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "pending_member"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->notifyGroupDeleted(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleSpaceDelete(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleGroupDelete(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_14
    const-string p1, "I am a pending member. Do nothing."

    goto :goto_2

    :pswitch_3
    new-instance v2, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;

    invoke-direct {v2, v1, p1, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    new-array p1, v7, [Ljava/lang/Void;

    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    :pswitch_4
    const-string p1, "SES_MESSAGESHARE"

    goto :goto_2

    :pswitch_5
    const-string p1, "SES_GROUP_I_CREATE_GROUP"

    :goto_2
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleGroupInvite(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4

    :pswitch_7
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->notifyItemAdded(Landroid/content/Context;Landroid/content/Intent;)V

    :pswitch_8
    invoke-direct {p0, v2, p2, v4}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->requestShareNowFromReceiver(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_4

    :pswitch_9
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->notifySpaceDeleted(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleSpaceDeleted(Landroid/content/Intent;)V

    goto :goto_4

    :pswitch_a
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->notifyMemberRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->notifyMemberJoined(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleGroupAcceptInvite(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleUpdateMemberCount(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4

    :pswitch_c
    const-string v2, "spaceId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "groupId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v4, :cond_15

    invoke-static {p1, v4}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/MdeNotificationHelper;->cancelMdeNotification(Landroid/content/Context;Ljava/lang/String;)V

    :cond_15
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListBaseActivityClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.samsung.android.app.notes.sync.ui.MDE_START_NOTES"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v6, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :pswitch_d
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->notifyMemberLeft(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_3
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleMemberDelete(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleUpdateMemberCount(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->requestSync()V

    :cond_18
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive finish ( Action = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_19
    :goto_5
    const-string p1, "onReceive action is null"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6d58f65e -> :sswitch_f
        -0x48ec8889 -> :sswitch_e
        -0x21b78a84 -> :sswitch_d
        -0x2380154 -> :sswitch_c
        0x281d9a35 -> :sswitch_b
        0x36407fd3 -> :sswitch_a
        0x3816ea60 -> :sswitch_9
        0x39527b44 -> :sswitch_8
        0x39d2e265 -> :sswitch_7
        0x3bf5bc4d -> :sswitch_6
        0x45ab4e64 -> :sswitch_5
        0x4a2e5a5e -> :sswitch_4
        0x4f1751d9 -> :sswitch_3
        0x52b83aeb -> :sswitch_2
        0x5e463914 -> :sswitch_1
        0x73278072 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
