.class public Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;
.super Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$EditorInputFilter;,
        Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$LimitLengthInputFilter;
    }
.end annotation


# static fields
.field public static final BUTTON_STATE_ANIM_DURATION:I = 0x12c

.field public static final BUTTON_STATE_DISABLE_ALPHA:F = 0.4f

.field public static final ERROR_TYPE_ALREADY_IN_USE:I = 0x5

.field public static final ERROR_TYPE_EMPTY:I = 0x6

.field public static final ERROR_TYPE_INVALID_CHARACTERS:I = 0x1

.field public static final ERROR_TYPE_INVALID_CHARACTERS_TAGS:I = 0x2

.field public static final ERROR_TYPE_MAXIMUM_CHARACTERS:I = 0x3

.field public static final ERROR_TYPE_MAXIMUM_CHARACTERS_TAGS:I = 0x4

.field public static final ERROR_TYPE_NONE:I = 0x0

.field public static final ERROR_TYPE_PREPARING:I = 0x7


# instance fields
.field public EDITING:Ljava/lang/CharSequence;

.field public EDIT_BOX_TEXT:Ljava/lang/CharSequence;

.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mAlertDialogBuilder:Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

.field public mCurrentTextHelpType:I

.field public mDialogType:I

.field public mDialogView:Landroid/view/View;

.field public mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

.field public mEditModeInitString:Ljava/lang/String;

.field private final mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field public mInputText:Landroid/widget/EditText;

.field private mIsDismissWithClick:Ljava/lang/Boolean;

.field private final mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveCheckErrorType:I

.field private final mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mStringInfoErrorType:I

.field public mText:Ljava/lang/String;

.field public mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mIsDismissWithClick:Ljava/lang/Boolean;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mIsDismissWithClick:Ljava/lang/Boolean;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->initRenameText(Ljava/lang/String;)V

    return-void
.end method

.method private afterHideSIPAction(Ljava/lang/Runnable;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isInputMethodShown(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mIsDismissWithClick:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->afterHideSIPAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onPositiveButtonClick()V

    return-void
.end method

.method private getDialogPositiveButtonString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->rename:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_dialog_add_next_button:I

    goto :goto_0
.end method

.method private getDialogTitle()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_dialog_rename_title:I

    return v0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->action_add_gcs_group:I

    return v0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tag_dialog_rename_title:I

    return v0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->rename_category:I

    return v0

    :cond_4
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->add_category:I

    return v0
.end method

.method private negativeClickSALog()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "705"

    const-string v1, "7051"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "704"

    const-string v1, "7041"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onPositiveButtonClick()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->checkDialogStatus(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->positiveClickSALog()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->afterHideSIPAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private positiveClickSALog()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "705"

    const-string v1, "7052"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "704"

    const-string v1, "7042"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setErrorMessage(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_preparing:I

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_already_in_use:I

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->category_maximum_number_of_characters_exceeded:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$integer;->tag_input_max:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->category_maximum_number_of_characters_exceeded:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$integer;->category_input_max:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_tags_invalid_character:I

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_invalid_character:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private setSIPOptions(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isLargeHandsetLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkDialogStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkEmptyString(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x6

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    :cond_1
    return-void
.end method

.method public getDefaultTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public initInputText()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setSemSetActionModeAutoFillEnabled(Landroid/widget/TextView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=PredictionOff"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=filename;disableImage=true"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    const v1, 0x84001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->getDefaultTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public initRenameText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    return-void
.end method

.method public isPreModificationName()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setSIPOptions(I)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->text_edit_box:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->EDIT_BOX_TEXT:Ljava/lang/CharSequence;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->text_editing:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->EDITING:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "edit_mode_init_string"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    const-string v1, "input_text_string"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mText:Ljava/lang/String;

    const-string v1, "current_text_help_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mCurrentTextHelpType:I

    const-string v1, "positive_check_error_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const-string v1, "string_info_error_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    const-string v1, "dialog_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mCurrentTextHelpType:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->edit_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->text_input_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->text_input_dialog:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->category_color_palette_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->category_color_palette:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->initInputText()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialogBuilder:Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->getDialogPositiveButtonString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, p1, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->getDialogTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setSIPOptions(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;->onEditDialogDismiss()V

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

.method public onNegative()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->negativeClickSALog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditModeInitString:Ljava/lang/String;

    const-string v1, "edit_mode_init_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "input_text_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mCurrentTextHelpType:I

    const-string v1, "current_text_help_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const-string v1, "positive_check_error_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mStringInfoErrorType:I

    const-string v1, "string_info_error_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mDialogType:I

    const-string v1, "dialog_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onShowDialog()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mCurrentTextHelpType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setErrorMessage(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public positiveButtonEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const-wide/16 v2, 0x12c

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public sendResult()V
    .locals 0

    return-void
.end method

.method public setButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method

.method public setClickWithoutDismissListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDismissAfterHideSIP(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mIsDismissWithClick:Ljava/lang/Boolean;

    return-void
.end method

.method public setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMessageErrorType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mCurrentTextHelpType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setErrorMessage(I)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mCurrentTextHelpType:I

    :cond_1
    :goto_0
    return-void
.end method

.method public textChecker(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
