.class public Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdditionalInfo:I

.field private mProgressView:Landroid/view/View;

.field private mShowBiometricRecommendation:Z

.field public mVerifyPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyPasswordView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;-><init>()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mShowBiometricRecommendation:Z

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mAdditionalInfo:I

    return-void
.end method

.method private getDecorView()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static synthetic j(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->lambda$hideProgress$3()V

    return-void
.end method

.method public static synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->lambda$initBiometricCheckBox$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->lambda$showProgress$2()V

    return-void
.end method

.method private synthetic lambda$hideProgress$3()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mProgressView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private static synthetic lambda$initBiometricCheckBox$1(Landroid/view/View;)V
    .locals 1

    const-string p0, "321"

    const-string v0, "3201"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 2

    const-string v0, "321"

    const-string v1, "3203"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->changeScenario(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showProgress$2()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public finishSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->resetPasswordBlockingEndTime()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishSuccess()V

    return-void
.end method

.method public getBottomNaviVisibility()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getSavedFailCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getUnlockTryCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public hideProgress()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/u;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/u;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initBiometricCheckBox()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mShowBiometricRecommendation:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledIris()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_use_biometrics_next_time:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_use_fingerprints_next_time:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->hasEnrolledIris()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_use_irises_next_time:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/t;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/t;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mUseBiometricsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public initGuideText()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideFingerPrintsChangedTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideInitValue:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_guide_default:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mAdditionalInfo:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideFingerPrintsChangedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public initTitle()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onAttach(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mVerifyPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mVerifyPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IPresenter;

    :cond_0
    return-void
.end method

.method public onBlockingTimeChanged(I)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$plurals;->lock_out_dialog_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBlockingTimerEnded()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->TAG:Ljava/lang/String;

    const-string v1, "onBlockingTimerEnded"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setPasswordInputViewAccessibility(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->initGuideText()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->showSoftInput()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->resetPasswordBlockingEndTime()V

    return-void
.end method

.method public onBlockingTimerStarted(J)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->TAG:Ljava/lang/String;

    const-string v1, "onBlockingTimerStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setPasswordInputViewAccessibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setBlockEndTime(Landroid/content/Context;J)V

    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->reset_password_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/s;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/s;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mVerifyPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;->getFailCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setUnlockTryCount(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->hideProgress()V

    return-void
.end method

.method public onDoneButtonClicked()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->TAG:Ljava/lang/String;

    const-string v1, "onDoneButtonClicked"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isValidPassword(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;->mVerifyPresenter:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;->verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public setGuideWrongPasswordText()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_incorrect_password:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->resetPasswordInput()V

    return-void
.end method

.method public setMenuItemEnabled(Landroid/view/MenuItem;Z)V
    .locals 0

    return-void
.end method

.method public showProgress()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/v;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/v;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateDefaultGuideText()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mGuideTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_password_confirm_guide_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
