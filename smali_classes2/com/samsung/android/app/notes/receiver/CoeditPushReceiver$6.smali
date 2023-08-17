.class Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleAddItem(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

.field public final synthetic val$coeditNotificationHelper:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$6;->this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$6;->val$coeditNotificationHelper:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$6;->val$coeditNotificationHelper:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyItemAdded()V

    goto :goto_0

    :cond_1
    const-string p1, "CoeditPushReceiver"

    const-string p2, "[CS2-1] handleAddItem, ignore notifyItemAdded"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
