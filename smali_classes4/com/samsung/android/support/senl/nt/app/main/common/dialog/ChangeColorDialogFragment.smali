.class public Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"


# instance fields
.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mColorConfirmDialogResult:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

.field private mFolderUuidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mSelectedColor:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mColorConfirmDialogResult:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mSelectedColor:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mSelectedColor:I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const-string v0, "selected_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mSelectedColor:I

    const-string v0, "selected_id_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->change_color_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mSelectedColor:I

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v3, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    invoke-direct {v0, v4, p1, v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->setOnColorChangeListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;)V

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->change_folder_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mColorConfirmDialogResult:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;->onEditDialogDismiss()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mSelectedColor:I

    const-string v1, "selected_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mFolderUuidList:Ljava/util/ArrayList;

    const-string v1, "selected_id_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setColorConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->mColorConfirmDialogResult:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    return-void
.end method
