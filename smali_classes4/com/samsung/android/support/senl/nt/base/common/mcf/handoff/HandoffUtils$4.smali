.class Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showDialogDisableSyncTurnOn(Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

.field public final synthetic val$activityWeakReference:Ljava/lang/ref/WeakReference;

.field public final synthetic val$cancelJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Ljava/lang/Runnable;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;->val$cancelJob:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;->val$cancelJob:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$4;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
