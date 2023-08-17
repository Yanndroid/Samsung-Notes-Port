.class Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;
.super Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->notifyItemAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$itemNumber:I

.field public final synthetic val$spaceId:Ljava/lang/String;

.field public final synthetic val$spaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$spaceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$spaceName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$itemNumber:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;->a(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$spaceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$spaceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$1;->val$itemNumber:I

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchItemAddedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
