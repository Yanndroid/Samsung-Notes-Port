.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANI_VIEW_DEFAULT_ALPHA:F = 0.6f

.field private static final ANI_VIEW_SCALE_DOWN_DURATION:I = 0x12c

.field public static final ANI_VIEW_SCALE_DOWN_RATIO:F = 0.95238f

.field private static final ANI_VIEW_SCALE_UP_DURATION:I = 0x64

.field public static final ANI_VIEW_SCALE_UP_RATIO:F = 1.05f

.field private static final ANI_VIEW_TAG_NAME:Ljava/lang/String; = "AnimationView"

.field private static final ANI_VIEW_TARGET_HIDE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SpenBrushMoveEffect"


# instance fields
.field private mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

.field private mAnimationView:Landroid/view/View;

.field private mIsAnimating:Z

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private final mMoveAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mMoveView:Landroid/view/View;

.field private mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mShadowBuilder:Landroid/view/View$DragShadowBuilder;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)V
    .locals 1
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mIsAnimating:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mIsAnimating:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private animateToAttach(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->getAniTransX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->getAniTransY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->getAniPivotX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->getAniPivotY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->getAniRotation()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANI TO Translation["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "]Pivot["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] Rotate["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SpenBrushMoveEffect"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f73cf2d    # 0.95238f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private getBitmap(ZZF)Landroid/graphics/Bitmap;
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isAnimationViewInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v5, :cond_6

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {v1, v0}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    cmpl-float v1, p3, v0

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p1, :cond_3

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_4
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_5

    int-to-float p1, v5

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    int-to-float v0, v6

    div-float/2addr v0, p2

    invoke-virtual {v7, p3, p1, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    return-object v1
.end method

.method private isAnimationViewInvalid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeAnimationView()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isAnimationViewInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SpenBrushMoveEffect"

    const-string v1, "makeAnimationView() - Already animateView. so remove animateView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->releaseAnimationView()V

    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    sget v1, Lcom/samsung/android/spen/R$id;->animate_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    const-string v2, "AnimationView"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private releaseAnimationView()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isAnimationViewInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    return-void
.end method

.method private setAniViewBackground(Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isAnimationViewInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->applyStrategy(Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->needLeftRightFlip()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->needTopDownFlip()Z

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getRotation()F

    move-result p1

    invoke-direct {p0, v2, v3, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->getBitmap(ZZF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setAnimationInfo(Landroid/view/View;II)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenBrushViewType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    move-object v1, v3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;->setAniInfo(Landroid/view/View;ZLandroid/view/View;III)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public beginEffect(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    const/4 p1, 0x1

    return p1
.end method

.method public cancelEffect()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isAnimationViewInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mIsAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mIsAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->cancelEffect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mListener:Landroid/animation/Animator$AnimatorListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-void
.end method

.method public endEffect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->releaseAnimationView()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    return-void
.end method

.method public isProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mIsAnimating:Z

    return v0
.end method

.method public setAttachEffectListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setShadowBuilder(Landroid/view/View$DragShadowBuilder;)V
    .locals 0
    .param p1    # Landroid/view/View$DragShadowBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mShadowBuilder:Landroid/view/View$DragShadowBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAniStrategy:Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAniStrategy;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->makeAnimationView()V

    :cond_0
    return-void
.end method

.method public startAttachEffect(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;)Z
    .locals 2
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getFromAlignment()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;->getToAlignment()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->setAnimationInfo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->setAniViewBackground(Lcom/samsung/android/sdk/pen/setting/SpenBrushNextMovement;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->animateToAttach(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startDetachEffect(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "SpenBrushMoveEffect"

    const-string/jumbo v1, "startDetachEffect() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mMoveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f866666    # 1.05f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateEffectRect(Landroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->isAnimationViewInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveEffect;->mAnimationView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
