.class public Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConverterDialogManager"


# instance fields
.field private final mActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallerId:I

.field private mIsOKClickInSaveConfirmDialog:Z

.field private final mListener:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;

.field private mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;)V
    .locals 1
    .param p3    # Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mIsOKClickInSaveConfirmDialog:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mCallerId:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mCallerId:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mIsOKClickInSaveConfirmDialog:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mIsOKClickInSaveConfirmDialog:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->notifyOnCancelListener()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->notifyRequestConvertListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyOnCancelListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;->onCancel()V

    :cond_0
    return-void
.end method

.method private notifyRequestConvertListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;->requestConvert(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-string v0, "ConverterDialogManager"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isProgressDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showAppUpdateDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;)V
    .locals 4

    const-string v0, "ConverterDialogManager"

    const-string v1, "showAppUpdateDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "showAppUpdateDialog, activity is in invalid status"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_UNSUPPORTED_FORMAT_IMPORT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "showAppUpdateDialog# already showing"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->setDialogListener(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->FOR_UNSUPPORTED_FORMAT_IMPORT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showConvertProgressDialog()V
    .locals 2

    const-string v0, "ConverterDialogManager"

    const-string v1, "showConvertProgressDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_converting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showProgressDialog(Ljava/lang/String;)Z

    return-void
.end method

.method public showImportProgressDialog()Z
    .locals 2

    const-string v0, "ConverterDialogManager"

    const-string v1, "showImportProgressDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_importing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showProgressDialog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showPasswordDialog(Ljava/lang/String;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "VerifyConvertPasswordDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    const-string v2, "ConverterDialogManager"

    const-string v3, "showPasswordDialog 2"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-direct {v0, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;-><init>(Z)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "doc_path"

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lock_type"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showPdfCheckerProgressDialog()Z
    .locals 2

    const-string v0, "ConverterDialogManager"

    const-string v1, "showPdfCheckerProgressDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showProgressDialog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showProgressDialog(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "ConverterDialogManager"

    const-string v0, "showProgressDialog, activity is in invalid status"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    invoke-virtual {p1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mProgressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return v0
.end method

.method public showSaveConfirmDialog(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mIsOKClickInSaveConfirmDialog:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->save_in_notes:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->save_in_notes_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->string_save_full:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->string_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$5;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
