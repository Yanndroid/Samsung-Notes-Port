.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SelectNoteDialog"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;-><init>(Landroid/app/Activity;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->TAG:Ljava/lang/String;

    const-string v0, "SelectNoteDialog#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setButtons()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->TAG:Ljava/lang/String;

    const-string v1, "setButtons#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->neutralButton:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNeutralButton:Landroid/widget/Button;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->negativeButton:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNegativeButton:Landroid/widget/Button;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->positiveButton:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNeutralButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNeutralButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNeutralButton:Landroid/widget/Button;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->screenoff_rectangle_button_ripple_effect_show_button_shape:I

    invoke-static {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNegativeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_discard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNegativeButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mNegativeButton:Landroid/widget/Button;

    invoke-static {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mPositiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_save:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-static {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->changeCustomButtonBackgroundUnchangedTextColor(Landroid/view/View;II)V

    return-void
.end method

.method private setMessage()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->TAG:Ljava/lang/String;

    const-string v1, "setMessage#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_selection_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->TAG:Ljava/lang/String;

    const-string v1, "onCreate#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->setMessage()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->setButtons()V

    return-void
.end method
