.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;
    }
.end annotation


# static fields
.field public static final INITIAL_POSITION:I = -0x64

.field private static final INTRO_VI_COUNT_ID:Ljava/lang/String; = "intro_vi_count"

.field private static final INTRO_VI_COUNT_MAX:I = 0x3

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;

.field private mDockType:I

.field private mIntroRunnable:Ljava/lang/Runnable;

.field private mIsEnded:Z

.field private mIsKeyboardShown:Z

.field private mIsStarted:Z

.field private mTargetViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "IntroVI"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsEnded:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsKeyboardShown:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mDockType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mDockType:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsKeyboardShown:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsEnded:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsStarted:Z

    return-void
.end method

.method public static bridge synthetic g()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isEnabledIntroVI()Z

    move-result v0

    return v0
.end method

.method private static getIntroVIRunCount()I
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "intro_vi_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getStartIntroRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIntroRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIntroRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static bridge synthetic h()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->setDisableState()V

    return-void
.end method

.method public static bridge synthetic i()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->updateIntroVIRunCount()V

    return-void
.end method

.method private static isEnableState()Z
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isEnabledIntroVI()Z

    move-result v1

    const-string v2, "intro_vi_toolbar_shown"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEnabledIntroVI()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->getIntroVIRunCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInitialPosition(FF)Ljava/lang/Boolean;
    .locals 1

    const/high16 v0, -0x3d380000    # -100.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    cmpl-float p0, p1, v0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->setDisableState()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static isSupport()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isUpperSEP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isEnableState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isUpperSEP()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v1

    const v2, 0x1afa4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static setDisableState()V
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "intro_vi_toolbar_shown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateIntroStartPositionX()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private updateIntroStartPositionY()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_item_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mDockType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private static updateIntroVIRunCount()V
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->getIntroVIRunCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "intro_vi_count"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    const-string v1, "canceled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIntroRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public hasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsStarted:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsEnded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKeyboardShown()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    const-string v1, "setKeyboardShown"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsKeyboardShown:Z

    return-void
.end method

.method public start()Z
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsEnded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mIsStarted:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->updateIntroStartPositionX()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->updateIntroStartPositionY()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->getStartIntroRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_1
    :goto_0
    return v1
.end method
