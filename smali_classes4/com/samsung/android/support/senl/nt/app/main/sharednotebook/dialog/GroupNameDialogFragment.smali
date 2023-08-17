.class public Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;
.source "SourceFile"


# instance fields
.field public mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;->mSpaceId:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;->mSpaceId:Ljava/lang/String;

    const/16 p1, 0x8

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->EDIT_BOX_TEXT:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->EDITING:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method


# virtual methods
.method public checkDialogStatus(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->checkEmptyString(Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setMessageErrorType(I)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->isPreModificationName()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->positiveButtonEnable(Z)V

    return-void
.end method

.method public getDefaultTitle()Ljava/lang/String;
    .locals 7

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_rename_dialog_default_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d"

    const-string v2, "%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getDefaultNotebooksName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    if-gt v2, v3, :cond_1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_rename_dialog_default_title:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v3, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_rename_dialog_default_title:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const-string v0, "dialog_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const-string v0, "spaceId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;->mSpaceId:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_rename_dialog_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onNegative()V
    .locals 2

    const-string v0, "746"

    const-string v1, "7462"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositive()V
    .locals 2

    const-string v0, "746"

    const-string v1, "7463"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;->mSpaceId:Ljava/lang/String;

    const-string v1, "spaceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowDialog()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onShowDialog()V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->isPreModificationName()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setButton(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public sendResult()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, -0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;->mSpaceId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->textChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;->onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method
