.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;
    }
.end annotation


# static fields
.field private static final ANIM_FROM_ALPHA:F = 0.0f

.field private static final ANIM_TO_ALPHA:F = 1.0f

.field private static final COMPOSER_VIEW_ANIM_DURATION:I = 0xc8

.field private static final CONTAINER_ANIM_DURATION:I = 0x15e

.field private static final MESSAGE_ANIMATION_HALF_PROGRESSED:I = 0x1

.field private static final MESSAGE_START_COMPOSER_ANIMATION:I = 0x2

.field private static final START_COMPOSER_ANIMATION_DELAY:I = 0x2bc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerView:Landroid/view/View;

.field private mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mContainer:Landroid/view/View;

.field private mContainerAnimation:Landroid/view/animation/AlphaAnimation;

.field private mContext:Landroid/content/Context;

.field private mGuideLayout:Landroid/view/View;

.field private final mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

.field private mIsAnimating:Z

.field private mMainLayoutContainer:Landroid/view/View;

.field private mMenuBar:Landroid/view/View;

.field private mPenColorAnimation:Landroid/view/animation/Animation;

.field private mPenColorAnimationView:Landroid/view/View;

.field private mRequireComposerViewAnimationDelay:Z

.field private mScrollLayout:Landroid/view/View;

.field private mShowingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShowingAnimation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mRequireComposerViewAnimationDelay:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mShowingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    return-object p0
.end method

.method private initAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->initContainerAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->initComposerViewAnimation()V

    return-void
.end method

.method private initComposerViewAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$interpolator;->sine_in_out_33:I

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    return-void
.end method

.method private initContainerAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$interpolator;->sine_in_out_33:I

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    return-void
.end method

.method private initPenColorAnimationView(I)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPenColorAnimationView# orientation/rotation/isRTLMode/navigationBarHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$layout;->screenoff_pen_color_animation_view:I

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainer:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$id;->pen_detach_animation_color_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    const/16 v1, 0x30

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_pen_detach_animation_color_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_pen_detach_animation_color_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x53

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_pen_detach_animation_color_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_pen_detach_animation_color_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-ne v2, v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initPenColorViewAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->screenoff_showing_pen_color:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mIsAnimating:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->startComposerViewAnimation()V

    return-void
.end method

.method public static bridge synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startComposerViewAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "startComposerViewAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startContainerAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "startContainerAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startPenColorViewAnimation()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPenColorViewAnimation# width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/view/View;IZLcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainer:Landroid/view/View;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mRequireComposerViewAnimationDelay:Z

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mShowingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    sget p4, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainer:Landroid/view/View;

    sget p4, Lcom/samsung/android/support/senl/nt/composer/R$id;->menu_bar_layout:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainer:Landroid/view/View;

    sget p4, Lcom/samsung/android/support/senl/nt/composer/R$id;->scroll_layout:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainer:Landroid/view/View;

    sget p4, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_layout:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->initAnimation()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init# primitiveStartCommand "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->initPenColorAnimationView(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->initPenColorViewAnimation()V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mIsAnimating:Z

    return v0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_8
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mShowingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start# isAnimating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->startContainerAnimation()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->startPenColorViewAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    const-wide/16 v2, 0xaf

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "stop#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mIsAnimating:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation$MessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mScrollLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMenuBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mMainLayoutContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimationView:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mContainerAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mPenColorAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mComposerViewAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mShowingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;->onShowingAnimationEnd()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->mShowingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;

    :cond_9
    return-void
.end method
