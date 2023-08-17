.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    return-object p0
.end method

.method private runProgress(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public onProgressStart()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->runProgress(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgressStop()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->runProgress(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
