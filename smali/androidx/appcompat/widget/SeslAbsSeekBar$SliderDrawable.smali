.class Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslAbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliderDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;
    }
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field public mAlpha:I

.field public mColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field private mIsStateChanged:Z

.field private mIsVertical:Z

.field private final mPaint:Landroid/graphics/Paint;

.field public mPressedAnimator:Landroid/animation/ValueAnimator;

.field private mRadius:F

.field public mReleasedAnimator:Landroid/animation/ValueAnimator;

.field private final mSliderMaxWidth:F

.field private final mSliderMinWidth:F

.field private final mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xfa

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->ANIMATION_DURATION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    new-instance v0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;Landroidx/appcompat/widget/SeslAbsSeekBar$1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    iput p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    iput-boolean p5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->initAnimator()V

    return-void
.end method

.method private initAnimator()V
    .locals 10

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$1;

    invoke-direct {v9, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$1;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [F

    aput v1, v2, v4

    aput v0, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$2;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private modulateAlpha(II)I
    .locals 1

    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr p2, v0

    mul-int/2addr p1, p2

    ushr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private startPressedAnimation()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startReleasedAnimation()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startSliderAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->startPressedAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->startReleasedAnimation()V

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    invoke-direct {p0, v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    sub-float v6, v1, v4

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v2

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v2

    iget-object v8, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    sub-float v6, v1, v3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v2

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v2

    iget v8, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    iget-object v9, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mState:Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateTrack(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStateChange([I)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget v7, p1, v3

    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    move v5, v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v6

    :cond_4
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->startSliderAnimation(Z)V

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
