.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_CAPTURE_VIEW:Z = true


# instance fields
.field private mCaptureView:Landroid/widget/ImageView;

.field private mCoverView:Landroid/view/View;

.field private mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-void
.end method


# virtual methods
.method public getCoverView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCoverView:Landroid/view/View;

    return-object v0
.end method

.method public hideCover()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCoverView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_capture_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_view_cover:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCoverView:Landroid/view/View;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->updateAntiGreenishColor(Landroid/view/View;)V

    return-void
.end method

.method public isVisibleCaptureView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeCaptureView(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->isVisibleCaptureView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showCaptureView(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget v1, v1, v3

    aget v0, v0, v3

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_container_background:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public showCover()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->mCoverView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
