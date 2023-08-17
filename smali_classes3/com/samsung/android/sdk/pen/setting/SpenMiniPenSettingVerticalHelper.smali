.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createColorParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getDefaultWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getDefaultHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getPenId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_color_item_margin_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-object v0
.end method

.method public createContentParam()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getDefaultWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getDefaultHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public createPenParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getDefaultWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getDefaultHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_pen_item_margin_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-object v0
.end method

.method public createSizeParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getColorGroupId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_attr_item_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_attr_item_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public getColorGroupId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_color_view_group:I

    return v0
.end method

.method public getColorId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_color_view:I

    return v0
.end method

.method public getColorPopupId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_color_popup_view:I

    return v0
.end method

.method public getDefaultHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPatternId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_pattern_view:I

    return v0
.end method

.method public getPatternPopupId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_pattern_popup_view:I

    return v0
.end method

.method public getPenId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_view:I

    return v0
.end method

.method public getPenPopupId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_list_popup_view:I

    return v0
.end method

.method public getSizeId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_size_view:I

    return v0
.end method

.method public getSizePopupId()I
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_size_popup_view:I

    return v0
.end method
