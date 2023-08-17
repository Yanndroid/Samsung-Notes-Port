.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;
    }
.end annotation


# static fields
.field private static final DETACH_COVERED_AFTER_ANIMATION_DELAY:I = 0x7d0

.field private static final DETACH_COVERED_AFTER_SCREEN_ON_DELAY:I = 0x1f4

.field private static final DETACH_COVERED_AFTER_START_ACTIVITY_DELAY:I = 0x7d0

.field private static final DETACH_COVERED_EXECUTE_DELAY:I = 0x12c

.field private static final DETACH_COVERED_NONE_ANIMATION_DELAY:I = 0x1f4

.field private static final MESSAGE_DETACH_COVERED_AFTER_ANIMATION:I = 0x1

.field private static final MESSAGE_DETACH_COVERED_AFTER_NONE_ANIMATION:I = 0x4

.field private static final MESSAGE_DETACH_COVERED_AFTER_SCREEN_ON:I = 0x2

.field private static final MESSAGE_DETACH_COVERED_AFTER_START_ACTIVITY:I = 0x3

.field private static final MESSAGE_START_COVERED_ANIMATION:I = 0x5

.field private static final START_COVERED_ANIMATION_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

.field private final mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

.field private mIntent:Landroid/content/Intent;

.field private mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

.field private mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CoveredPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->startScreenOffActivity()V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startScreenOffActivity()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "startScreenOffActivity# execute ScreenOffExecutor"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    const-string v1, "SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    const-string v1, "execute_type"

    const-string v2, "activity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "do_not_update_window_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->addOnActivityLifeCycleCallback(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenDetachAnimation;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenDetachAnimation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    return-void
.end method

.method public initView(IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView# visibility/withAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;->init(IZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/CoveredAnimationFeature;->needToStartCoveredAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onAttachView(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onAttachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public onCancelAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onCancelAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->release()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->removeOnActivityLifeCycleCallback(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;->onDetachView()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

    return-void
.end method

.method public onDetachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "onDetachView# animating"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    return-void
.end method

.method public onPreHide()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPreHide#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;->updateVisibility(I)V

    return-void
.end method

.method public onPreShow()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPreShow#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStartAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartAnimation# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->getPenDetachAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getColor()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->init(Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;ILcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenDetachAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    :goto_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->start()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->getPenHoverAnimationView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getColor()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->init(Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;ILcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method public onStartingAnimationEnd()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStartingAnimationEnd#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->startScreenOffActivity()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter$MessageHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStartingAnimationStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStartingAnimationStart#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->TAG:Ljava/lang/String;

    const-string v1, "setView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredContract$IView;

    return-void
.end method
