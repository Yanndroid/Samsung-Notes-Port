.class Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;->setGuideText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_TIMEOUT:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->setIsAutoCloseCase(Z)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->onAuthenticationLockedOut()V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT_PERMANENT:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_CANCELED:I

    if-eq p1, p2, :cond_4

    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_USER_CANCELED:I

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->changeToPasswordVerification(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->finishCancel()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_no_match:I

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;->setGuideText(I)V

    return-void
.end method

.method public onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;->setGuideText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->onAuthenticationSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyFingerprintPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyFingerprintContract$IView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->changeToPasswordVerification(I)V

    return-void
.end method
