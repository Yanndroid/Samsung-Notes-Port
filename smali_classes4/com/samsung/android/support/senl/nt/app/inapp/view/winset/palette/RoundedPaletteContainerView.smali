.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;
.source "SourceFile"


# instance fields
.field public final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_text_mode_color_palette_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->mRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_text_mode_color_palette_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->mRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->in_app_text_mode_color_palette_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->mRadius:I

    return-void
.end method

.method private setRadius(IZLandroid/graphics/drawable/GradientDrawable;)V
    .locals 10

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->mRadius:I

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    new-array p1, v6, [F

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->mRadius:I

    int-to-float v9, v6

    aput v9, p1, v5

    int-to-float v5, v6

    aput v5, p1, v7

    aput v8, p1, v4

    aput v8, p1, v3

    aput v8, p1, v2

    aput v8, p1, v1

    int-to-float v1, v6

    aput v1, p1, v0

    int-to-float v0, v6

    aput v0, p1, p2

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->mPaletteItemList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne p1, v9, :cond_2

    new-array p1, v6, [F

    aput v8, p1, v5

    aput v8, p1, v7

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->mRadius:I

    int-to-float v6, v5

    aput v6, p1, v4

    int-to-float v4, v5

    aput v4, p1, v3

    int-to-float v3, v5

    aput v3, p1, v2

    int-to-float v2, v5

    aput v2, p1, v1

    aput v8, p1, v0

    aput v8, p1, p2

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setColor(IILjava/lang/String;)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setColor(IIZ)V

    return-void
.end method

.method public setColor(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->mPaletteItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setRadius(IZLandroid/graphics/drawable/GradientDrawable;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->mPaletteItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setResource(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setResource(IILjava/lang/String;Z)V

    return-void
.end method

.method public setResource(IILjava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setResource(IILjava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->mPaletteItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1, p4, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setRadius(IZLandroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method

.method public updatePaletteItem(Landroid/view/View;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(Landroid/view/View;ZZ)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setRadius(IZLandroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method
