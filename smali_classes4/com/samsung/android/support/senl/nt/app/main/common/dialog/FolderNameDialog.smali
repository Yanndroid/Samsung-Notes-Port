.class public Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;
.super Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderNameDialog"


# instance fields
.field private mColorPalette:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

.field private mFolderDisplayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mParentUuid:Ljava/lang/String;

.field private mSelectedColor:I

.field private mSelectedUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->initAddFolder(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->initAddFolder(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mFolderDisplayNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->initAddFolder(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mFolderDisplayNames:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->initRenameFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mFolderDisplayNames:Ljava/util/List;

    return-void
.end method

.method private checkCurrentStatus(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mFolderDisplayNames:Ljava/util/List;

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->checkEmptyString(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v0, 0x2

    const/4 v1, 0x5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->isPreModificationName()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    return-void
.end method

.method private getDefaultFolderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mFolderDisplayNames:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_2

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->default_folder:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->default_folder:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isEditSameFolder(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isPositiveButtonEnable()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->isEditSameFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public checkDialogStatus(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->checkCurrentStatus(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setMessageErrorType(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->isPositiveButtonEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->positiveButtonEnable(Z)V

    return-void
.end method

.method public getDefaultTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->getDefaultFolderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAddFolder(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    return-void
.end method

.method public initInputText()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->initInputText()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$EditorInputFilter;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$EditorInputFilter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$integer;->category_input_max:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->checkDialogStatus(Ljava/lang/String;)V

    return-void
.end method

.method public initRenameFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->initRenameText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "FolderNameDialog"

    const-string v1, "onCreateDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "dialog_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const-string v1, "parent_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    const-string v1, "selected_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const-string v1, "selected_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    const/4 v4, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mColorPalette:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->setOnColorChangeListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->enter_category:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(I)V

    const-string p1, "onCreateDialog finish"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onNegative()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "111"

    const-string v1, "1142"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPositive()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "111"

    const-string v1, "1143"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->dismiss()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mParentUuid:Ljava/lang/String;

    const-string v1, "parent_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    const-string v1, "selected_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    const-string v1, "selected_color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onShowDialog()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onShowDialog()V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->isEditSameFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setButton(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public sendResult()V
    .locals 5

    const-string v0, "FolderNameDialog"

    const-string v1, "sendResult()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->textChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;->onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->textChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;->onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_1
    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->textChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->mSelectedColor:I

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;->onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method
