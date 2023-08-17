.class public Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final RATIO:F = 1.16f

.field private static final TAG:Ljava/lang/String; = "ColorSwatchSelectorView"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setPosition(IIFF)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_2

    :cond_1
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setY(F)V

    return-void
.end method


# virtual methods
.method public updateColor(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;->mColor:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;->mColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public updateView(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f947ae1    # 1.16f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    int-to-float p2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    add-int/2addr p1, p3

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;->setPosition(IIFF)V

    return-void
.end method
