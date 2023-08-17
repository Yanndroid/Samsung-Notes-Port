.class public Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final BUTTON_STATE_ANIM_DURATION:I = 0x12c

.field private static final BUTTON_STATE_DISABLE_ALPHA:F = 0.4f

.field private static final BUTTON_STATE_ENABLE_ALPHA:F = 1.0f

.field private static final DOC_PASSWORD_MAX_LENGTH:I = 0x10

.field private static final PASSWORD_HINT_TEXT_MAX_SIZE:F = 17.0f

.field public static final TAG:Ljava/lang/String; = "VerifyPasswordDialogFragment"


# instance fields
.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mDoneClickListener:Landroid/view/View$OnClickListener;

.field public mEditText:Landroid/widget/EditText;

.field public mHintStr:Ljava/lang/String;

.field public mInfoStr:Ljava/lang/String;

.field public mMaxLength:I

.field private mNotMatch:Z

.field private mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mNotMatch:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mMaxLength:I

    return-void
.end method

.method private initDialog(Landroid/content/Context;Landroid/view/View;)Landroidx/appcompat/app/AlertDialog;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->dialog_done:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->dialog_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {v0, v2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x25

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$layout;->verify_password_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->info_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mInfoStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->edit_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->edit_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mMaxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setSemSetActionModeAutoFillEnabled(Landroid/widget/TextView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mHintStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->show_pwd_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->initLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->initDialog(Landroid/content/Context;Landroid/view/View;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->createDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public positiveButtonEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const-wide/16 v1, 0x12c

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setNotMatchPassword()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mNotMatch:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->convert_dialog_unlock_incorrect_password:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "VerifyPasswordDialogFragment"

    const-string v1, "SpenInvalidPasswordException"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyInputText(Landroid/text/Editable;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->positiveButtonEnable(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mNotMatch:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mNotMatch:Z

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mMaxLength:I

    if-lt p1, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->category_maximum_number_of_characters_exceeded:I

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mMaxLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :goto_1
    return-void
.end method
