.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final BUTTON_STATE_ANIM_DURATION:I = 0x12c

.field private static final BUTTON_STATE_DISABLE_ALPHA:F = 0.4f

.field private static final BUTTON_STATE_ENABLE_ALPHA:F = 1.0f

.field private static final ERROR_ENABLED:Ljava/lang/String; = "error_enabled"

.field private static final ERROR_TEXT:Ljava/lang/String; = "error_text"

.field public static final ERROR_TYPE_ALREADY_IN_USE:I = 0x3

.field public static final ERROR_TYPE_INVALID_CHARACTERS_TAGS:I = 0x1

.field public static final ERROR_TYPE_MAXIMUM_CHARACTERS_TAGS:I = 0x2

.field public static final ERROR_TYPE_NONE:I = 0x0

.field private static final POSITIVE_BUTTON_ENABLED:Ljava/lang/String; = "positive_button_enabled"

.field private static final TAG:Ljava/lang/String; = "HashTagRenameDialogFragment"


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mErrorType:I

.field private mInitHashTagName:Ljava/lang/String;

.field private mIsShow:Z

.field private mMaxCharacterCount:I

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

.field private mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mInitHashTagName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mIsShow:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mInitHashTagName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mMaxCharacterCount:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private checkErrorWithInputText(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->showEmptyCharacter()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mInitHashTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->showEmptyCharacter()V

    :cond_1
    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->showEmptyCharacter()V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    :cond_3
    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->setPositiveButtonEnabled(ZZ)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mIsShow:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->checkErrorWithInputText(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->setPositiveButtonEnabled(ZZ)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->showInvalidCharacter()V

    return-void
.end method

.method private initEditText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;->initEditTextInputOption(Landroid/widget/EditText;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->tag_name:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/widget/EditText;->setSelection(II)V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)V

    aput-object v1, p2, v0

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mMaxCharacterCount:I

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;I)V

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$7;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tag_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mInitHashTagName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->memolist_editdialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->text_input_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->text_input_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mInitHashTagName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->initEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setSemSetActionModeAutoFillEnabled(Landroid/widget/TextView;Z)Z

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$string;->rename:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_cancel:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)V

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->tag_dialog_rename_title:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$4;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Landroid/widget/EditText;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method

.method private setPositiveButtonEnabled(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 v1, 0x12c

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showEmptyCharacter()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showInvalidCharacter()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mErrorType:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->string_tags_invalid_character:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Composer"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$integer;->tag_input_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mMaxCharacterCount:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->initialize(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v0

    const-string v1, "error_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "error_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->mIsShow:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "positive_button_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
