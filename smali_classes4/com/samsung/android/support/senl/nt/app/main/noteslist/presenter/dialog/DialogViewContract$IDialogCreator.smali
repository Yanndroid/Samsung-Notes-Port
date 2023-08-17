.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDialogCreator"
.end annotation


# virtual methods
.method public abstract createCoeditNoteDeleteDialogFragment(IILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;I)Landroidx/fragment/app/DialogFragment;
.end method

.method public abstract createConvertDialogFragment(IILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;)Landroidx/fragment/app/DialogFragment;
.end method

.method public abstract createDeleteDialogFragment(IIIIIIZILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;IZ)Landroidx/fragment/app/DialogFragment;
.end method

.method public abstract createExportPdfDialogFragment(ILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)Landroidx/fragment/app/DialogFragment;
.end method

.method public abstract createMoveSFDialog(Landroid/content/Context;ILandroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IMoveToSecureFolderDialog;)Landroid/app/Dialog;
.end method

.method public abstract createUnlockConfirmDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)Landroid/app/Dialog;
.end method

.method public abstract setConvertDialogContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;)V
.end method

.method public abstract setDeleteDialogContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V
.end method

.method public abstract setExportPdfDialogContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)V
.end method

.method public abstract showSaveAsProgressDialog(Landroidx/fragment/app/FragmentManager;)V
.end method

.method public abstract updateExportPdfDialogNoteName(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
.end method

.method public abstract updateExportPdfDialogProgress(Landroidx/fragment/app/FragmentManager;II)V
.end method
