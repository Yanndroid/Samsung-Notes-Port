.class Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationReceiverActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lx0/a;->c(ZZ)V

    return-void
.end method
