.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;
    }
.end annotation


# static fields
.field private static final MESSAGE_NOTIFY_FINISHED:I = 0x1

.field private static final SCREEN_OFF_ACTIVITY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TO_NOTIFY_FINISHED_DELAY:I = 0x3e8


# instance fields
.field private mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

.field private final mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffAnimatorActivity"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->TAG:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->SCREEN_OFF_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->onFinish(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;)V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->SCREEN_OFF_ACTIVITY:Ljava/lang/String;

    return-object v0
.end method

.method private initWindowAttributes()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->TAG:Ljava/lang/String;

    const-string v1, "initWindowAttributes#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20003

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setTurnScreenOn(Landroid/app/Activity;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setShowWhenLocked(Landroid/app/Activity;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->setFitInsetsTypesNavigationBar(Landroid/view/Window;)V

    return-void
.end method

.method private onFinish(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish# reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private setSystemUIVisibility()V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->TAG:Ljava/lang/String;

    const-string v1, "setSystemUIVisibility#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1506

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setSystemUiVisibility(Landroid/view/View;IZZZ)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/ForceHideSoftInputFeature;->needToForceHideSoftInput(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/ForceHideSoftInputFeature;->hideSoftInput(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->initWindowAttributes()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->setSystemUIVisibility()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->addOnActivityLifeCycleCallback(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->removeOnActivityLifeCycleCallback(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mActivityLifeCycleCallback:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
