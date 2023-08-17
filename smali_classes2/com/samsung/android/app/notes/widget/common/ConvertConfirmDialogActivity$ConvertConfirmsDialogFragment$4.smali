.class Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$4;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$4;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$4;->this$0:Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
