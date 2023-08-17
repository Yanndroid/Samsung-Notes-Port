.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DialogCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogCreator;


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCoeditNoteDeleteDialogFragment(IILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;I)Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNoteDeleteDialogFragment;

    invoke-direct {v0, p1, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditNoteDeleteDialogFragment;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V

    return-object v0
.end method

.method public createConvertDialogFragment(IILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;-><init>(II)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;)V

    return-object v0
.end method

.method public createDeleteDialogFragment(IIIIIIZILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;IZ)Landroidx/fragment/app/DialogFragment;
    .locals 11

    new-instance v10, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;-><init>(IIIIIIZIZ)V

    move/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V

    return-object v10
.end method

.method public createExportPdfDialogFragment(ILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)V

    return-object v0
.end method

.method public createMoveSFDialog(Landroid/content/Context;ILandroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IMoveToSecureFolderDialog;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;-><init>(Landroid/content/Context;ILandroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IMoveToSecureFolderDialog;)V

    return-object v0
.end method

.method public createUnlockConfirmDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)Landroid/app/Dialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)V

    return-object v0
.end method

.method public setConvertDialogContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;)V

    return-void
.end method

.method public setDeleteDialogContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V

    return-void
.end method

.method public setExportPdfDialogContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IExportPdfDialog;)V

    return-void
.end method

.method public showSaveAsProgressDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;-><init>()V

    :try_start_0
    const-string v1, "save_as_progress_dialog"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/SaveAsProgressDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSaveAsProgressDialogFragment - IllegalStateException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogCreator"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateExportPdfDialogNoteName(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "export_pdf_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->updateExportingNoteName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateExportPdfDialogProgress(Landroidx/fragment/app/FragmentManager;II)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "export_pdf_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ExportPdfDialogFragment;->updateProgress(II)V

    :cond_0
    return-void
.end method
