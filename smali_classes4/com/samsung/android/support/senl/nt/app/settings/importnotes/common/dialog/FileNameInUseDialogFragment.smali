.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "filename"

.field public static final TAG:Ljava/lang/String; = "FileNameInUseDialogFragment"


# instance fields
.field private mResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->insertSA(Z)V

    return-void
.end method

.method private insertSA(Z)V
    .locals 2

    const-string v0, "738"

    const-string v1, "7384"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "7381"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "filename"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;->onCancel()V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->fragment_file_name_in_use_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->dialog_body_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->file_name_in_use_notes_dialog_body:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->dialog_body_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->file_name_in_use_dialog_rename:I

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->file_name_in_use_dialog_replace:I

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->file_name_in_use_dialog_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setOnResultListener(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/FileNameInUseDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;

    return-void
.end method

.method public showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
