.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;
.super Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

.field private mOnAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

.field private mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyIrisPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mOnAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    return-object p0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->isPasswordBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->getSavedPasswordBlockingTime()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->showTimerDialog(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasChangedIris(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->TAG:Ljava/lang/String;

    const-string v2, "iris changed"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;->showBiometricChangeToast(Landroid/content/Context;ZZ)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseIris(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->changeToPasswordVerification(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;->setIsWaitingPromptUI(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyIrisContract$IView;->getPreView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mOnAuthenticationListener:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->authenticate(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi$OnAuthenticationListener;)V

    :goto_0
    return-void
.end method

.method public cancelAuthenticate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->mIrisApi:Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->cancelAuthenticate()V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyIrisPresenter;->authenticate(Landroid/content/Context;)V

    return-void
.end method
