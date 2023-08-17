.class Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->lambda$onStart$0(J)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->lambda$onEnd$2()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->lambda$onTick$1(I)V

    return-void
.end method

.method private synthetic lambda$onEnd$2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->d(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;->onBlockingTimerEnded()V

    return-void
.end method

.method private synthetic lambda$onStart$0(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->d(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;->onBlockingTimerStarted(J)V

    return-void
.end method

.method private synthetic lambda$onTick$1(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->d(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/IVerifyPasswordContract$IView;->onBlockingTimeChanged(I)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ILockTimerListener:onEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->c(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/c;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(J)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ILockTimerListener:onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->c(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;->c(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
