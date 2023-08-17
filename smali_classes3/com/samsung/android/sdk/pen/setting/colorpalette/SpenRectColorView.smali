.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;
.super Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRectColorView"


# instance fields
.field private mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

.field private mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

.field private mCornerRadii:[F

.field private mCornerRadius:I

.field private mFixedSelectViewColor:I

.field private mIsFixedSelectViewColor:Z

.field private mResView:Landroid/view/View;

.field private mSelectView:Landroid/view/View;

.field private mSelectViewAdaptiveColor:I

.field private mSelectViewNormalColor:I

.field private mSelectedElevation:I

.field private mSelectedMarginBottom:I

.field private mSelectedMarginEnd:I

.field private mSelectedMarginStart:I

.field private mSelectedMarginTop:I

.field private mUnselectedMarginBottom:I

.field private mUnselectedMarginEnd:I

.field private mUnselectedMarginStart:I

.field private mUnselectedMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mIsFixedSelectViewColor:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mFixedSelectViewColor:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadius:I

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

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mIsFixedSelectViewColor:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mFixedSelectViewColor:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadius:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "### SelectedCornerRadius="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenRectColorView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mIsFixedSelectViewColor:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mFixedSelectViewColor:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadius:I

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

.method private adjustMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getColorBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private isTransparentColor()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getOpacity()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private needAdaptiveColorInSelector(I)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(I)Z

    move-result p1

    return p1
.end method

.method private needOutline(FFFZ)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "]"

    const-string v2, "SpenRectColorView"

    const-string v3, ", "

    const/4 v4, 0x0

    if-nez p4, :cond_0

    cmpl-float p4, p1, v4

    if-nez p4, :cond_1

    cmpl-float p4, p2, v4

    if-nez p4, :cond_1

    const p4, 0x3f75c28f    # 0.96f

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIGH TMODE] needOutline() is true. HSV["

    :goto_0
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    cmpl-float p4, p1, v4

    if-nez p4, :cond_1

    cmpl-float p4, p2, v4

    if-nez p4, :cond_1

    const p4, 0x3dcccccd    # 0.1f

    cmpg-float p4, p4, p3

    if-gtz p4, :cond_1

    const p4, 0x3e4ccccd    # 0.2f

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DARK MODE] needOutline() is true. HSV["

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setRectInit()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateRes(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    sget v2, Lcom/samsung/android/spen/R$drawable;->empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->getStrokeColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateSelector(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->getColorBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->getColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setStroke(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private updateCornerRadius(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->getColorBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadius:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRadius(Landroid/graphics/drawable/Drawable;F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;->setRadius(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->getColorBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRadii(Landroid/graphics/drawable/Drawable;[F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    const/4 v4, 0x6

    aget v0, v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;->setRadius(FFFF)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->isTransparentColor()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateTransparentBackground(Landroid/graphics/drawable/LayerDrawable;)V

    :cond_1
    return-void
.end method

.method private updateCurrentLayout(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginTop:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginBottom:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginStart:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginEnd:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->adjustMargin(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedElevation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginTop:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginBottom:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginStart:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginEnd:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->adjustMargin(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRes(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    sget v1, Lcom/samsung/android/spen/R$id;->resource_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {v1, v2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSelector(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->getSelectView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SpenRectColorView"

    const-string v0, "getSelectView() is null."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mIsFixedSelectViewColor:Z

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mFixedSelectViewColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->needAdaptiveColorInSelector(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectViewAdaptiveColor:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectViewNormalColor:I

    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_4
    :goto_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectViewNormalColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateStroke(FFFZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->needOutline(FFFZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->getColorBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setStroke(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private updateStroke(IZ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateStroke(FFFZ)V

    return-void
.end method

.method private updateStrokeIfNeedOutline(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-array v0, v1, [F

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColor([F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    invoke-direct {p0, v2, v4, v6, v7}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->needOutline(FFFZ)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v1, v0, v1

    aget v2, v0, v3

    aget v0, v0, v5

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateStroke(FFFZ)V

    :cond_1
    return-void
.end method

.method private updateTransparentBackground(Landroid/graphics/drawable/LayerDrawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$id;->stroke_drawable:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadius:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRadius(Landroid/graphics/drawable/Drawable;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRadii(Landroid/graphics/drawable/Drawable;[F)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setStroke(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mIsFixedSelectViewColor:Z

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->close()V

    return-void
.end method

.method public getColorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    return-object v0
.end method

.method public getSelectView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectView:Landroid/view/View;

    return-object v0
.end method

.method public initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_rect_color_view:I

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_unselected_margin_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_unselected_margin_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_unselected_margin_start:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginStart:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_unselected_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_selected_margin_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_selected_margin_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_selected_margin_start:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginStart:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_selected_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_selected_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedElevation:I

    sget p2, Lcom/samsung/android/spen/R$id;->color:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    sget p2, Lcom/samsung/android/spen/R$id;->select_icon:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectView:Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$drawable;->selected_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/samsung/android/spen/R$color;->setting_selection_tint_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectViewNormalColor:I

    sget p2, Lcom/samsung/android/spen/R$color;->setting_selection_adaptive_tint_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectViewAdaptiveColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_unselected_outline_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lcom/samsung/android/spen/R$color;->setting_color_rect_chip_unselected_outline_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/samsung/android/spen/R$color;->setting_color_rect_chip_default_color:I

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setRectInit()V

    return-void
.end method

.method public setColor(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateRes(Z)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColor(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateSelector(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateStroke(IZ)V

    return-void
.end method

.method public setColor([FILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateRes(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateRes(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    sget v3, Lcom/samsung/android/spen/R$drawable;->blank_with_stroke:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateTransparentBackground(Landroid/graphics/drawable/LayerDrawable;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColor([FILjava/lang/String;)Z

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor(I[F)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateSelector(I)V

    aget p2, p1, v0

    aget p3, p1, v1

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateStroke(FFFZ)V

    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method public setColor([FLjava/lang/String;)Z
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setColor([FILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setColorRes(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetColorRes() drawableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRectColorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setColorRes(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateRes(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mResView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateSelector(I)V

    return-void
.end method

.method public setFixedSelectorColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mFixedSelectViewColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mIsFixedSelectViewColor:Z

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateSelector(I)V

    return-void
.end method

.method public bridge synthetic setHoverDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setHoverDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInit()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setInit()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setRectInit()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setOnCheckedChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setOnCheckedChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$OnCheckedChangeListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$drawable;->spen_rect_ripple:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mColorView:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-static {p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRadius(FFFF)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mCornerRadii:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x3

    aput p2, v0, v2

    const/4 v3, 0x2

    aput p2, v0, v3

    const/4 v3, 0x5

    aput p3, v0, v3

    const/4 v3, 0x4

    aput p3, v0, v3

    const/4 v3, 0x7

    aput p4, v0, v3

    const/4 v3, 0x6

    aput p4, v0, v3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result p1

    if-ne p1, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->getColorBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/samsung/android/spen/R$color;->setting_bg_color:I

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setStroke(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateCornerRadius(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->setSelected(ZZ)Z

    return-void
.end method

.method public setSelected(ZZ)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateStrokeIfNeedOutline(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setSelected(ZZ)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateCornerRadius(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateCurrentLayout(Z)V

    return v1
.end method

.method public setSelectedMargin(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginTop:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginStart:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginEnd:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectedMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateCurrentLayout(Z)V

    return-void
.end method

.method public bridge synthetic setSelectorIcon(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->setSelectorIcon(Z)V

    return-void
.end method

.method public setSelectorSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x11

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mSelectView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setUnselectedMargin(IIII)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginStart:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginEnd:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginTop:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->mUnselectedMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorView;->updateCurrentLayout(Z)V

    return-void
.end method
