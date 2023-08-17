.class public Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertConfirmsDialogFragment"
.end annotation


# instance fields
.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->convert_note_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->convert_note_jp_desctiption:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->convert_note_description:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->base_convert:I

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->dialog_cancel:I

    new-instance v2, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$2;-><init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$1;-><init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$3;-><init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment$4;-><init>(Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public setListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity$ConvertConfirmsDialogFragment;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
