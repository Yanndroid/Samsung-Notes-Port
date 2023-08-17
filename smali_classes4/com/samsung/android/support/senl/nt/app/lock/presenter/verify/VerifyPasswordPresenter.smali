.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;
.super Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mMainThreadHandler:Landroid/os/Handler;

.field private mTimerListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

.field private mTimerModel:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

.field private mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VerifyPasswordPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mTimerListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;->getSavedFailCount()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->getSavedPasswordBlockingTime()J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mTimerListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;-><init>(IJLcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mTimerModel:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->lambda$onVerifySucceeded$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/AbsPasswordPresenter;->mPasswordModel:Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel;

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->lambda$onVerifyFailed$1()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->onVerifyFailed()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->onVerifySucceeded()V

    return-void
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$onVerifyFailed$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;->setGuideWrongPasswordText()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mTimerModel:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->increaseFailCount()V

    return-void
.end method

.method private synthetic lambda$onVerifySucceeded$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->isUseBiometricChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->setBiometricsEnabled()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mTimerModel:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->resetFailCount()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;->resetPasswordBlockingEndTime()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->resetOldBiometricBlockingEndTime()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/AbsBasePresenter;->finishSuccess()V

    return-void
.end method

.method private onVerifyFailed()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onVerifyFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/b;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onVerifySucceeded()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onVerifySucceeded"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/a;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getFailCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mTimerModel:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->getFailCount()I

    move-result v0

    return v0
.end method

.method public verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "verifyPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$VerifyPasswordCallable;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyPassword# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    return p1
.end method
