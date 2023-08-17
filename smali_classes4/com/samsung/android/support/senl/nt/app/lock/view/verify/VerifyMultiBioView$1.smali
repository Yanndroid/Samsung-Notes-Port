.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->t(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_TIMEOUT:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setIsAutoCloseCase(Z)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockedOut()V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT_PERMANENT:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_CANCELED:I

    if-eq p1, p2, :cond_4

    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_USER_CANCELED:I

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->l(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fingerprint canceled manually"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->p(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Z)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->finishCancel()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_fingerprint_no_match:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->s(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->k(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->k(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->isUsingFingerprintManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onOldBiometricAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->t(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method
