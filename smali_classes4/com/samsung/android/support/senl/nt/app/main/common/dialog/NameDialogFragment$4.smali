.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onShowDialog()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setClickWithoutDismissListener()V

    :cond_1
    return-void
.end method
