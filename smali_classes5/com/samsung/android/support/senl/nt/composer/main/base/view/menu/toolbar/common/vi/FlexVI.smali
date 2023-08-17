.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = null

.field private static final TRANSLATE_DURATION:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

.field private mEnableVerticalFoldPosition:Z

.field private mIsSipShown:Z

.field private mIsVerticalHalfOpened:Z

.field private mTargetViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FlexVI"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsVerticalHalfOpened:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsSipShown:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mEnableVerticalFoldPosition:Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->initVerticalHalfOpened()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not Activity context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsVerticalHalfOpened:Z

    return-void
.end method

.method private checkHitVertical(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private checkViewValid()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    const-string v2, "not Activity context"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    const-string v2, "there is no parent view"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private initVerticalHalfOpened()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldDirection(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldState(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;)V

    return-void
.end method

.method private isApplyVerticalFoldPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsSipShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsVerticalHalfOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;->isDockedAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupport()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private movingDown()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->checkViewValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    const-string v2, "movingDown"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomMargin()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movingDown targetView.getBottomMargin() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomMargin()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    return v0
.end method

.method private movingUp()Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->checkViewValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mTargetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    const-string v3, "movingUp"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const v4, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->checkHitVertical(I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    const-string v2, "toolbar is not position above half of the screen"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movingUp absolutePositionY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public setSipShown(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsSipShown:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsSipShown:Z

    :cond_0
    return-void
.end method

.method public setVerticalHalfOpened(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsVerticalHalfOpened:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mIsVerticalHalfOpened:Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->isApplyVerticalFoldPosition()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mEnableVerticalFoldPosition:Z

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    const-string v2, "update"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->movingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->movingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->mEnableVerticalFoldPosition:Z

    :cond_1
    return-void
.end method
