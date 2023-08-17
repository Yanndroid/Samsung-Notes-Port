.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->onBioAuthenticationLockedOut()V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_LOCKOUT_PERMANENT:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->onBioAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_CANCELED:I

    if-eq p1, p2, :cond_3

    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi$OnAuthenticationListener;->PROMPT_ERROR_USER_CANCELED:I

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->e(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->onBioAuthenticationFailed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 0

    return-void
.end method
