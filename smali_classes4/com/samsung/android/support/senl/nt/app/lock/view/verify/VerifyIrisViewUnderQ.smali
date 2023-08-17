.class public Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGuideTextView:Landroid/widget/TextView;

.field private final mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

.field private final mOnAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

.field private mPreview:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyIrisViewUnderQ"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mOnAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->lambda$showRetryDialog$2(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->lambda$showRetryDialog$1(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->setGuideText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->showRetryDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "323"

    const-string v0, "3221"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$1(Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/l;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/l;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showRetryDialog$2(Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/k;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/k;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setGuideText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showRetryDialog(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/i;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/i;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Landroid/os/Handler;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/h;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/h;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Landroid/os/Handler;)V

    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showRetryIrisDialogWithError(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isPasswordBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->getSavedPasswordBlockingTime()J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->showTimerDialog(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isOldBiometricBlockedPermanent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isOldBiometricBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->getSavedOldBiometricBlockingTime()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasChangedIris(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->TAG:Ljava/lang/String;

    const-string v2, "iris changed"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;->showBiometricChangeToast(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseIris(Landroid/content/Context;Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mOnAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V

    :goto_1
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->cancelAuthenticate()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_iris:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->iris_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mPreview:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->iris_guide_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->mGuideTextView:Landroid/widget/TextView;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->use_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/j;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/j;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->cancelAuthenticate()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->isBlockedByMultiwindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;->showMultiWindowImpossibleToast(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->exitMultiWindow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->authenticate()V

    :goto_0
    return-void
.end method
