.class public Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CheckAddToNoteDialog"


# instance fields
.field private final KEY_SCAN_DATA_COUNT:Ljava/lang/String;

.field private mContract:Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;

.field private mScanDataCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, "key_scan_data_count"

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->KEY_SCAN_DATA_COUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, "key_scan_data_count"

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->KEY_SCAN_DATA_COUNT:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->mScanDataCount:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->mContract:Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->mContract:Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected button type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CheckAddToNoteDialog"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;->onPositiveButtonClicked()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;->onNeutralButtonClicked()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "key_scan_data_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->mScanDataCount:I

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->mScanDataCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->add_these_scans_to_your_note_or_discard_them_q:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->add_this_scan_to_your_note_or_discard_it_q:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->action_cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->action_discard:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$string;->action_add:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog;->mScanDataCount:I

    const-string v1, "key_scan_data_count"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
