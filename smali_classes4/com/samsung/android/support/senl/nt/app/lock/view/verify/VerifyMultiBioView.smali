.class public Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

.field private mFingerprintCanceledManually:Z

.field private mFingerprintListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

.field private mGuideTextView:Landroid/widget/TextView;

.field private mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

.field private mIrisCanceledManually:Z

.field private mIrisListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

.field private mMultiBiometricCanceledManually:Z

.field private mMultiBiometricListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

.field private mMultiBiometricPrompt:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

.field private mPreview:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyMultiBioView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    return-void
.end method

.method private authenticateFingerUnderQ()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setIsWaitingPromptUI(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    return-void
.end method

.method private authenticateIrisUnderQ()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setIsWaitingPromptUI(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mPreview:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V

    return-void
.end method

.method private authenticateQ()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricPrompt:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setIsWaitingPromptUI(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricPrompt:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricListener:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;)V

    return-void
.end method

.method private authenticateUnderQ()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;->FINGERPRINT_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;->IRIS_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$ImplType;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_fingerprint_iris_guide_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->checkBiometricChanging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->isUsingFingerprintManager()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isUsingIrisManager()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->isOldBiometricBlockedPermanent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->isOldBiometricBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getSavedOldBiometricBlockingTime()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialog(I)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->authenticateFingerUnderQ()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->authenticateIrisUnderQ()V

    return-void
.end method

.method private checkBiometricChanging()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasChangedFingerprint(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasChangedIris(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseFingerprint(Landroid/content/Context;Z)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseIris(Landroid/content/Context;Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;->showBiometricChangeToast(Landroid/content/Context;ZZ)V

    const/4 v0, 0x1

    return v0
.end method

.method private createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_fingerprint_iris:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->iris_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mPreview:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->iris_guide_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mGuideTextView:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_verify_fingerprint_iris_guide_text:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->use_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/o;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/o;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private createDexView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_dex_dialog_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->fingerprint_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->iris_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->dex_guide_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mGuideTextView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_dex_use_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->use_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/p;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/p;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->lambda$createDefaultView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->lambda$createDexView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->lambda$showRetryDialog$2(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->lambda$showRetryDialog$3(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintCanceledManually:Z

    return p0
.end method

.method private synthetic lambda$createDefaultView$1(Landroid/view/View;)V
    .locals 1

    const-string p1, "324"

    const-string v0, "3221"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method

.method private synthetic lambda$createDexView$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    const-string p1, "324"

    const-string v0, "3221"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method

.method private synthetic lambda$showRetryDialog$2(Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/q;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/q;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showRetryDialog$3(Landroid/os/Handler;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/r;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/r;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisCanceledManually:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricCanceledManually:Z

    return p0
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintCanceledManually:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisCanceledManually:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricCanceledManually:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->setGuideText(I)V

    return-void
.end method

.method private setGuideText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private setGuideText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mGuideTextView:Landroid/widget/TextView;

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
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/m;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/m;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/os/Handler;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/os/Handler;)V

    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showRetryIrisDialogWithError(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->setGuideText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->showRetryDialog(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintCanceledManually:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisCanceledManually:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricCanceledManually:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->authenticateQ()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->authenticateUnderQ()V

    :goto_0
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mFingerprintCanceledManually:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->cancelAuthenticate()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mIrisCanceledManually:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->cancelAuthenticate()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricPrompt:Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->mMultiBiometricCanceledManually:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt;->cancelAuthenticate()V

    :cond_2
    return-void
.end method

.method public finishCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    return-void
.end method

.method public finishSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishSuccess()V

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
    .locals 2
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

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->TAG:Ljava/lang/String;

    const-string p3, "createDexView"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->createDexView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->TAG:Ljava/lang/String;

    const-string v1, "emptyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p3, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->TAG:Ljava/lang/String;

    const-string v0, "createDefaultView"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onDestroy()V

    return-void
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

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->isPasswordBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->getSavedPasswordBlockingTime()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->authenticate()V

    :goto_0
    return-void
.end method
