.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;->discard()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SaveNoteConfirmDialogFragment;Z)V

    :cond_1
    return-void
.end method
