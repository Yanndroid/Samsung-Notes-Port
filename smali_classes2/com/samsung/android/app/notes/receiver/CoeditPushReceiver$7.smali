.class Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleDeleteItem(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

.field public final synthetic val$coeditNotificationHelper:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

.field public final synthetic val$isStandaloneSpace:Z

.field public final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->val$coeditNotificationHelper:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    iput-object p3, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->val$title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->val$isStandaloneSpace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->val$coeditNotificationHelper:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    iget-object v0, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->val$title:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$7;->val$isStandaloneSpace:Z

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyItemDeleted(Ljava/lang/String;Z)V

    return-void
.end method
