.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;
.super Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfVerifyPasswordDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;
    }
.end annotation


# static fields
.field private static final PDF_PASSWORD_MAX_LENGTH:I = 0x20


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

.field private mPwd:Ljava/lang/String;

.field private final mResultListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mPwd:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mResultListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$ResultListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;->mPwd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_pdf_password_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_pdf_password_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mHintStr:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mMaxLength:I

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->createDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$PdfVerifyPasswordDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
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
