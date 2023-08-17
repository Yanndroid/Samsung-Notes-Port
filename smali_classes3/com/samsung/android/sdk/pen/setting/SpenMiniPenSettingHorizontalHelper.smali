.class public Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;
.super Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenMiniPenSettingHorizontalHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createColorParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenMiniPenSettingHorizontalHelper"

    const-string v1, "createColorParam()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;->getDefaultWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;->getDefaultHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;->getPenId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_color_item_land_margin_start:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-object v0
.end method

.method public bridge synthetic createContentParam()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->createContentParam()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public createPenParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenMiniPenSettingHorizontalHelper"

    const-string v1, "createPenParam()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_pen_item_land_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_pen_item_land_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    sget p1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_pen_item_land_margin_start:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-object v1
.end method

.method public createSizeParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenMiniPenSettingHorizontalHelper"

    const-string v1, "createSizeParam()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingHorizontalHelper;->getColorGroupId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_attr_item_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_attr_item_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-object v0
.end method

.method public bridge synthetic getColorGroupId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getColorGroupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getColorId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorPopupId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getColorPopupId()I

    move-result v0

    return v0
.end method

.method public getDefaultHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public bridge synthetic getPatternId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getPatternId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPatternPopupId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getPatternPopupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPenId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getPenId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPenPopupId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getPenPopupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSizeId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getSizeId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSizePopupId()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingVerticalHelper;->getSizePopupId()I

    move-result v0

    return v0
.end method
