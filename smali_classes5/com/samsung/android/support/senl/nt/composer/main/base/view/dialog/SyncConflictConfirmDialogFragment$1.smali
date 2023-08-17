.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
