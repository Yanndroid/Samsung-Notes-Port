.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->showDialogSyncNetworkFailError(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    move-result-object p1

    const-string p2, "SyncNetworkFailError"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->finish(Ljava/lang/String;)V

    return-void
.end method
