.class Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;->setGuideText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isRetryCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;->showRetryDialog(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_TIMEOUT:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->setIsAutoCloseCase(Z)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->onAuthenticationLockedOut()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT_PERMANENT:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_CANCELED:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;->finishCancel()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->changeToPasswordVerification(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    return-void
.end method

.method public onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;->setGuideText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->onAuthenticationSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->changeToPasswordVerification(I)V

    return-void
.end method
