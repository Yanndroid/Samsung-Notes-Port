.class public Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColor:I

.field private mInitRadii:Z

.field private mRectRadii:[F

.field private mShape:I

.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mRectRadii:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static setColor(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public static setRadii(Landroid/graphics/drawable/Drawable;[F)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_0
    return-void
.end method

.method public static setRadius(Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyRadius(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mRectRadii:[F

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mColor:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeColor:I

    return v0
.end method

.method public makeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mShape:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeWidth:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mShape:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mInitRadii:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mRectRadii:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_0
    return-object v0
.end method

.method public setDrawableInfo(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mShape:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mColor:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeWidth:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeColor:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mInitRadii:Z

    return-void
.end method

.method public setRectRadius(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(FFFF)V

    return-void
.end method

.method public setRectRadius(FFFF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mInitRadii:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mRectRadii:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p1, v1, v0

    const/4 p1, 0x2

    aput p2, v1, p1

    const/4 p1, 0x3

    aput p2, v1, p1

    const/4 p1, 0x4

    aput p3, v1, p1

    const/4 p1, 0x5

    aput p3, v1, p1

    const/4 p1, 0x6

    aput p4, v1, p1

    const/4 p1, 0x7

    aput p4, v1, p1

    return-void
.end method

.method public setStroke(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeWidth:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->mStrokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-void
.end method
