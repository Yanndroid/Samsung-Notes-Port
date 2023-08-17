.class public Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSelectView"


# instance fields
.field private mBottomLeftRadius:F

.field private mBottomRightRadius:F

.field private mCheckView:Landroid/view/View;

.field private mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

.field private mSelectedElevation:I

.field private mSelectedMargin:I

.field private mTopLeftRadius:F

.field private mTopRightRadius:F

.field private mUnSelectedElevation:I

.field private mUnSelectedMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private adjustMargin(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyRadius()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mTopLeftRadius:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mTopRightRadius:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mBottomRightRadius:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mBottomLeftRadius:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;->setRadius(FFFF)V

    return-void
.end method

.method private getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/spen/R$styleable;->SpenSelectView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_radius:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p2, p2, p2, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->setRadius(FFFF)V

    goto :goto_0

    :cond_1
    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_topLeftRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    sget v0, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_topRightRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_bottomRightRadius:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_bottomLeftRadius:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->setRadius(FFFF)V

    :goto_0
    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_selectedMargin:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mSelectedMargin:I

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_unselectedMargin:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mUnSelectedMargin:I

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_selectedElevation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mSelectedElevation:I

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenSelectView_unselectedElevation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mUnSelectedElevation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_select_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$id;->chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->select_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mCheckView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    sget v1, Lcom/samsung/android/spen/R$color;->setting_bg_color:I

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mTopLeftRadius:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mTopRightRadius:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mBottomRightRadius:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mBottomLeftRadius:F

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(FFFF)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->applyRadius()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCurrentLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mSelectedMargin:I

    invoke-direct {p0, p1, p1, p1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->adjustMargin(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mSelectedElevation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    return-void

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mUnSelectedElevation:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mUnSelectedMargin:I

    invoke-direct {p0, p1, p1, p1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->adjustMargin(IIII)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mChip:Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mCheckView:Landroid/view/View;

    return-void
.end method

.method public setCheckColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mCheckView:Landroid/view/View;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRadius(FFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mTopLeftRadius:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mTopRightRadius:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mBottomRightRadius:F

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mBottomLeftRadius:F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->applyRadius()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->setSelected(ZZ)Z

    return-void
.end method

.method public setSelected(ZZ)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mCheckView:Landroid/view/View;

    if-nez v2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->mCheckView:Landroid/view/View;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->colorSelectAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;->updateCurrentLayout(Z)V

    return v0
.end method
