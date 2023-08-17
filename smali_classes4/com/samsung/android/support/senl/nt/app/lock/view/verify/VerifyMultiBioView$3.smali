.class Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/biometrics/multi/MultiBiometricPrompt$IMultiBiometricListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->finishCancel()V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setIsAutoCloseCase(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockedOut()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->o(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "multi biometric canceled manually"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->r(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getIsChangingToPasswordUI()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->finishCancel()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationSuccess()V

    return-void
.end method

.method public onUsePasswordClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    return-void
.end method
