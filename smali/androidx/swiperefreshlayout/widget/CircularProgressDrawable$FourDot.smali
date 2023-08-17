.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FourDot"
.end annotation


# instance fields
.field public mAlpha:I

.field public mArrowScale:F

.field public mCenterRadius:F

.field public mColorIndex:I

.field public mColors:[I

.field public mDotAnimation:Landroid/graphics/drawable/Drawable;

.field public final mDotPaint:Landroid/graphics/Paint;

.field public mDotRadius:F

.field public mIsRunning:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mPosition:F

.field public mRotation:F

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mArrowScale:F

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    const/16 v2, 0xff

    iput v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mCenterRadius:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v1

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    sub-float/2addr v1, p2

    iget p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, p2, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    const/4 v2, 0x0

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    add-float/2addr v2, v3

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    sub-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    add-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mIsRunning:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    return v0
.end method

.method public getArrowScale()F
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mArrowScale:F

    return v0
.end method

.method public getCenterRadius()F
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mCenterRadius:F

    return v0
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mAlpha:I

    return-void
.end method

.method public setCenterRadius(F)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mCenterRadius:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mColors:[I

    return-void
.end method

.method public setDotAnimtion(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotAnimation:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDotRadius(F)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mDotRadius:F

    return-void
.end method

.method public setIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mIsRunning:Z

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mPosition:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mRotation:F

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->mScale:F

    :cond_0
    return-void
.end method
