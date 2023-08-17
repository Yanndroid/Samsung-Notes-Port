.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;
.super Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

.field private final mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

.field private mIsCanceledByManually:Z

.field private final mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyFingerprintPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mIsCanceledByManually:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    return-object p0
.end method

.method private isBlocked()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->isBiometricBlocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->getRemainBlockTime()I

    move-result v2

    :goto_0
    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->showTimerDialog(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->isPasswordBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->getSavedPasswordBlockingTime()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mIsCanceledByManually:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->authenticate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;)V

    :cond_0
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mIsCanceledByManually:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->cancelAuthenticate()V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mFingerprintApi:Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasChangedFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->TAG:Ljava/lang/String;

    const-string v1, "fingerprint changed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseFingerprint(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->changeToPasswordVerification(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->setIsWaitingPromptUI(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->authenticate(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
