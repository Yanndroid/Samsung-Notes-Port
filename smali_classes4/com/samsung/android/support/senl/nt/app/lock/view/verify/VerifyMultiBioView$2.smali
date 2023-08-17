.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iris onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->t(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->m(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->m(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isRetryCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->u(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_TIMEOUT:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setIsAutoCloseCase(Z)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockedOut()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT_PERMANENT:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_CANCELED:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->n(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Iris canceled manually"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->q(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->finishCancel()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->m(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->m(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isUsingIrisManager()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_iris_dialog_no_match:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->u(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onOldBiometricAuthenticationFailed()V

    :cond_1
    return-void
.end method

.method public onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method
