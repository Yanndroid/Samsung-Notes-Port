.class Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showWiFiSyncOnlyAndNotWiFiConnected(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$activityWeakReference:Ljava/lang/ref/WeakReference;

.field public final synthetic val$positiveClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->val$positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->val$positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getSettingsMainActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "settings_samsung_cloud_sync"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$7;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
