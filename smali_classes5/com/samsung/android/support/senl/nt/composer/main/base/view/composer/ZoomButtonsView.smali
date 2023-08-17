.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOCK_CANVAS_LOCK:I = 0x1

.field public static final BLOCK_EASY_WRITING_PAD:I = 0x4

.field private static final DELAY_SHOW:I = 0x12c

.field private static final DISABLE_ALPHA:F = 0.4f

.field private static final DURATION:I = 0xc8

.field private static final DURATION_SHOWN:I = 0xbb8

.field private static final ENABLE_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockScenario:I

.field public mContext:Landroid/content/Context;

.field private mHideAnimation:Landroid/view/animation/AnimationSet;

.field private mIsBlockShow:Z

.field private mIsFadingEnabled:Z

.field private mIsOnHideAnimation:Z

.field private mShowAnimation:Landroid/view/animation/AnimationSet;

.field private mStartHideAnimationRunnable:Ljava/lang/Runnable;

.field private mStartShowAnimationRunnable:Ljava/lang/Runnable;

.field private mZoomContainerView:Landroid/view/View;

.field private final mZoomInButtonView:Landroid/widget/ImageView;

.field private final mZoomOutButtonView:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ZoomButtonsView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsFadingEnabled:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_in_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomInButtonView:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->initButtonView(Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_out_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomOutButtonView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->initButtonView(Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->makeShowAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->makeHideAnimation()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/animation/AnimationSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mHideAnimation:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsBlockShow:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsOnHideAnimation:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/animation/AnimationSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartHideAnimationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsOnHideAnimation:Z

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartShowAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initButtonView(Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->TYPE_RECTANGLE:I

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->setRippleSelected(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    return-void
.end method

.method private makeHideAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mHideAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private makeShowAnimation()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartHideAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setButtonEnable(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartShowAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartHideAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBlockShow(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mBlockScenario:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mBlockScenario:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mBlockScenario:I

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mBlockScenario:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsBlockShow:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsFadingEnabled:Z

    return-void
.end method

.method public setRippleSelectedType(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomInButtonView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->setRippleSelected(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomOutButtonView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/DrawableUtils;->setRippleSelected(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomInButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomOutButtonView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsBlockShow:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->TAG:Ljava/lang/String;

    const-string v0, "setVisible# block to show"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mIsFadingEnabled:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartHideAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartShowAnimationRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mStartShowAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomContainerView:Landroid/view/View;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public updateButtonEnable(FFF)V
    .locals 2

    cmpg-float p3, p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomInButtonView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setButtonEnable(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->mZoomOutButtonView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomButtonsView;->setButtonEnable(Landroid/view/View;Z)V

    return-void
.end method
