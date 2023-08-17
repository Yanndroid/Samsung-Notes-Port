.class Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SeslAbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbDrawable"
.end annotation


# instance fields
.field private final PRESSED_DURATION:I

.field private final RELEASED_DURATION:I

.field private mAlpha:I

.field public mColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mIsStateChanged:Z

.field private mIsVertical:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mRadiusForAni:I

.field private mThumbPressed:Landroid/animation/ValueAnimator;

.field private mThumbReleased:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x64

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->PRESSED_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->RELEASED_DURATION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    const/16 v1, 0xff

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    iput-object p3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->initAnimation()V

    return-void
.end method

.method public static synthetic access$300(Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->setRadius(I)V

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

.method private setRadius(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    return-void
.end method

.method private startPressedAnimation()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startReleasedAnimation()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->startPressedAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->startReleasedAnimation()V

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-direct {p0, v0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-static {v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->access$400(Landroidx/appcompat/widget/SeslAbsSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v2, v2

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-static {v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->access$400(Landroidx/appcompat/widget/SeslAbsSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

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

.method public initAnimation()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance v5, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$1;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$1;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    aput v4, v0, v3

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable$2;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

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

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

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
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->startThumbAnimation(Z)V

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
