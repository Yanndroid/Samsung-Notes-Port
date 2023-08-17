.class Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenSettingLandscapeLayout"


# instance fields
.field private mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    return-void
.end method


# virtual methods
.method public addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public attachChild(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const-string v0, "SpenPenSettingLandscapeLayout"

    const-string v1, "attachChild()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getContentBody()Landroid/widget/LinearLayout;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_1

    const-string v2, "contentParent is not null. so return."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_common_popup_landscape_width:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->setting_layout_landscape_height:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_6

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_bottom_margin:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setPenView(Landroid/view/View;)V

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    sget p2, Lcom/samsung/android/spen/R$color;->setting_handwriting_pen_divider:I

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v5, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_divider_width:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v5

    sget v6, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_divider_height:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    sget v5, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_divider_margin_start:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget v5, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_divider_margin_bottom:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    sget v5, Lcom/samsung/android/spen/R$dimen;->common_setting_divider_stroke:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v5

    invoke-direct {p2, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    sget p2, Lcom/samsung/android/spen/R$id;->pen_size_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_size_default_margin_top:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setSizeView(Landroid/view/View;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    :cond_2
    const/16 p1, 0x8

    if-eqz p5, :cond_3

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/samsung/android/spen/R$id;->pen_size_view:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_opacity_margin_top:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setAlphaView(Landroid/view/View;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p6, :cond_4

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    sget p5, Lcom/samsung/android/spen/R$id;->pen_size_view:I

    iput p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    sget p5, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_width_margin_top:I

    invoke-virtual {p0, p5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result p5

    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p5, p6, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p6}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setWidthView(Landroid/view/View;)V

    invoke-virtual {p6, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p3, :cond_5

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    sget p5, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_color_margin_bottom:I

    invoke-virtual {p0, p5}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result p5

    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p5, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setColorView(Landroid/view/View;)V

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    :cond_5
    if-eqz p4, :cond_6

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    sget p3, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_color_margin_bottom:I

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setPatternView(Landroid/view/View;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenPenSettingLandscapeLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->close()V

    return-void
.end method

.method public detachChild()V
    .locals 2

    const-string v0, "SpenPenSettingLandscapeLayout"

    const-string v1, "detachChild()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mLandscapeContentParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->resetContentView()V

    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getActionButtonCount()I

    move-result v0

    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->mViewMode:I

    return v0
.end method

.method public isVisibleAlphaView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getAlphaView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVisiblePatternView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPatternView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVisibleWidthView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getWidthView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setAttributeVisibility(ZZZ)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setAttributeVisibility(ZZ)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getSizeView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_size_default_margin_top:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_landscape_size_together_margin_top:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->getSizeView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setContentView(Landroid/widget/LinearLayout;)V
    .locals 2

    const-string v0, "SpenPenSettingLandscapeLayout"

    const-string/jumbo v1, "setContentView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setContentView(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public setPatternViewVisibility(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutManager;->setPatternViewVisibility(Z)Z

    move-result p1

    return p1
.end method

.method public setViewMode(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenPenSettingLandscapeLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;->getViewMode()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAME ViewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    return v3
.end method
