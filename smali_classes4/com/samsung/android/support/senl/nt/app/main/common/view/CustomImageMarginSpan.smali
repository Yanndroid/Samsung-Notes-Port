.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;
.super Landroid/text/style/DrawableMarginSpan;
.source "SourceFile"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHasLeftMargin:Z

.field private final mPaddingRight:I

.field private final mSize:I

.field private final mStart:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;IIZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/text/style/DrawableMarginSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mPaddingRight:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mSize:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mStart:I

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mHasLeftMargin:Z

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    iget p5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mStart:I

    if-eq p9, p5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p5, p6

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p6, p2

    add-int/2addr p5, p6

    div-int/lit8 p5, p5, 0x2

    if-gez p4, :cond_1

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mSize:I

    :goto_0
    sub-int/2addr p3, p2

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mHasLeftMargin:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mSize:I

    int-to-float p2, p2

    const p4, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mSize:I

    div-int/lit8 p6, p4, 0x2

    sub-int p6, p5, p6

    add-int p7, p3, p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p5, p4

    invoke-virtual {p2, p3, p6, p7, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mSize:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;->mPaddingRight:I

    add-int/2addr p1, v0

    return p1
.end method
