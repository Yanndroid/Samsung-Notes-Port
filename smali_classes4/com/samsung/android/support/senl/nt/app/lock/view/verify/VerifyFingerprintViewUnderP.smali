.class public Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApiListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

.field private mFingerGuideImage:Landroid/widget/ImageView;

.field private mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

.field private mGuideTextView:Landroid/widget/TextView;

.field private mIsCanceledByManually:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyFingerprintViewUnderP"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mApiListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;->FINGERPRINT_MANAGER:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>(Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$ImplType;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    return-void
.end method

.method private createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_fingerprint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->finger_guide_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mGuideTextView:Landroid/widget/TextView;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->finger_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerGuideImage:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->use_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/b;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->lock_fingerprint_default:I

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->setGuideImage(I)V

    return-object p1
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->lambda$createDefaultView$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mIsCanceledByManually:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->setGuideImage(I)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->setGuideText(I)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->setGuideText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$createDefaultView$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "322"

    const-string v0, "3211"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method

.method private setGuideImage(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setGuideText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private setGuideText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mIsCanceledByManually:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mApiListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    :cond_0
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mIsCanceledByManually:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->cancelAuthenticate()V

    :cond_0
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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->createDefaultView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isPasswordBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->getSavedPasswordBlockingTime()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->showTimerDialog(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isOldBiometricBlockedPermanent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isOldBiometricBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->getSavedOldBiometricBlockingTime()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->showTimerDialog(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasChangedFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->TAG:Ljava/lang/String;

    const-string v1, "fingerprint changed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseFingerprint(Landroid/content/Context;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->authenticate()V

    :goto_0
    return-void
.end method
