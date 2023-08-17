.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClosingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;

.field private mClosingNotSaveAnimation:Landroid/view/animation/Animation;

.field private mClosingSaveAnimation:Landroid/view/animation/Animation;

.field private mComposerView:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mDummyAnimationLayout:Landroid/view/View;

.field private mGuideLayout:Landroid/view/View;

.field private mIsAnimating:Z

.field private mIsEmpty:Z

.field private mMainLayoutContainer:Landroid/view/View;

.field private mMenuBar:Landroid/view/View;

.field private mScrollLayout:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ClosingAnimation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mIsAnimating:Z

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->screenoff_main_background:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private initClosingNotSaveAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "initClosingSaveAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->screenoff_closing_not_save:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private initClosingSaveAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "initClosingSaveAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$anim;->screenoff_closing_save:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;Landroid/view/View;Landroid/graphics/Bitmap;IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init# rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mComposerView:Landroid/view/View;

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mIsEmpty:Z

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->menu_bar_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMenuBar:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->scroll_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mScrollLayout:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mGuideLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMainLayoutContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->dummy_animation_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_menu_bar_layout_width_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    new-instance p2, Landroid/view/View;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMainLayoutContainer:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result p6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMainLayoutContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p3, p6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p6, 0x1

    if-ne p5, p6, :cond_0

    :goto_0
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_0
    const/4 p6, 0x3

    if-ne p5, p6, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p5

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I

    move-result p5

    add-int/2addr p1, p5

    goto :goto_0

    :cond_1
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p1, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mContainer:Landroid/view/View;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mIsEmpty:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->initClosingNotSaveAnimation()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->initClosingSaveAnimation()V

    :goto_2
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mIsAnimating:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mComposerView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;

    return-void
.end method

.method public start()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "start#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;->onClosingAnimationEnd()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mIsAnimating:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mIsEmpty:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->startClosingNotSaveAnimation()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->startClosingSaveAnimation()V

    :goto_0
    return-void
.end method

.method public startClosingNotSaveAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "startClosingNotSaveAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMenuBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mScrollLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMainLayoutContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mComposerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingNotSaveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startClosingSaveAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "startClosingSaveAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMenuBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mScrollLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mMainLayoutContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mComposerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mDummyAnimationLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->mClosingSaveAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
