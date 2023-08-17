.class public abstract Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final COEDIT_NOTIFICATION_GROUP_ID:Ljava/lang/String; = "COEDIT_NOTIFICATION_GROUP_ID"

.field public static final GROUP_INVITATION_RECEIVED_INTENT_FILTER:Ljava/lang/String; = "COEDIT_GROUP_INVITATION_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "CoeditInviteReceivedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;)V
    .locals 3

    const-string v0, "CoeditInviteReceivedReceiver"

    const-string v1, "registerReceiver#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "COEDIT_GROUP_INVITATION_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.app.notes.sync.ui.COEDIT_NOTIFICATION_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;)V
    .locals 2

    const-string v0, "CoeditInviteReceivedReceiver"

    const-string v1, "unregisterReceiver#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public abstract onGroupInvitationReceived(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onNotificationOperated(Ljava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "CoeditInviteReceivedReceiver"

    if-nez p2, :cond_0

    const-string p1, "onReceive intent is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "onReceive context is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "COEDIT_GROUP_INVITATION_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;->onGroupInvitationReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string p1, "com.samsung.android.app.notes.sync.ui.COEDIT_NOTIFICATION_INTENT_FILTER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "COEDIT_NOTIFICATION_GROUP_ID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;->onNotificationOperated(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "onReceive action is null"

    goto :goto_0
.end method
