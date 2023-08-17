.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->isRetryCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->i(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_TIMEOUT:I

    if-ne p1, v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->onBioAuthenticationLockedOut()V

    goto :goto_1

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_LOCKOUT_PERMANENT:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->onBioAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget p2, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;->ERROR_CANCELED:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->g(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->onBioAuthenticationFailed(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationHelp(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method
