.class Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenMiniPopupLayout"


# instance fields
.field private mBgColor:I

.field private mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mContentView:Landroid/widget/FrameLayout;

.field private mFooterDivider:Landroid/view/View;

.field private mFooterGroup:Landroid/widget/LinearLayout;

.field private mHeaderDivider:Landroid/view/View;

.field private mHeaderGroup:Landroid/widget/LinearLayout;

.field private mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setLayoutInterface(Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;)V

    return-void
.end method

.method private clearView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterDivider:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterGroup:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderDivider:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderGroup:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method private initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_popup_bg_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_favorite_pen_layout_stroke_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/samsung/android/spen/R$color;->setting_favorite_stroke_border_color:I

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->mini_popup_radius:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v3, Lcom/samsung/android/spen/R$color;->setting_bg_color:I

    invoke-static {p1, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgColor:I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgColor:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(FFFF)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->setShadowAlpha(Landroid/view/View;F)Z

    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0, p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    sget p1, Lcom/samsung/android/spen/R$id;->header_area:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderGroup:Landroid/widget/LinearLayout;

    sget p1, Lcom/samsung/android/spen/R$id;->header_divider:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderDivider:Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->footer_area:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterGroup:Landroid/widget/LinearLayout;

    sget p1, Lcom/samsung/android/spen/R$id;->footer_divider:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterDivider:Landroid/view/View;

    sget p1, Lcom/samsung/android/spen/R$id;->content_area:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    sget p1, Lcom/samsung/android/spen/R$id;->root_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mRootView:Landroid/view/ViewGroup;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addDefaultFooterView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;->getDefaultButtonParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addFooterView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public addDefaultHeaderView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;->getDefaultButtonParams(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addHeaderView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addPopupView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public changeBgRound(ZZZZ)V
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p3, :cond_2

    move p3, v0

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const/16 p4, 0x8

    new-array p4, p4, [F

    int-to-float p1, p1

    aput p1, p4, v1

    const/4 v1, 0x1

    aput p1, p4, v1

    const/4 p1, 0x2

    int-to-float p2, p2

    aput p2, p4, p1

    const/4 p1, 0x3

    aput p2, p4, p1

    const/4 p1, 0x4

    int-to-float p2, p3

    aput p2, p4, p1

    const/4 p1, 0x5

    aput p2, p4, p1

    const/4 p1, 0x6

    int-to-float p2, v0

    aput p2, p4, p1

    const/4 p1, 0x7

    aput p2, p4, p1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method close()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    return-void
.end method

.method public getDefaultBgColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgColor:I

    return v0
.end method

.method public getHeaderDivider()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderDivider:Landroid/view/View;

    return-object v0
.end method

.method public isFooterDividerEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterDivider:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isHeaderDividerEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderDivider:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public removeContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setContentVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setFooterDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFooterOverlapMargin(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverlapMargin() margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniPopupLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterGroup:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;->adjustOverlapMargin(ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setFooterTopToBottom(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mFooterGroup:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;->adjustFront(Landroid/view/View;I)V

    return-void
.end method

.method public setHeaderDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setHeaderGroupVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mHeaderGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setLayoutInterface(Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;)V
    .locals 2

    const-string v0, "SpenMiniPopupLayout"

    const-string/jumbo v1, "setLayoutInterface()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->clearView()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;->getChildLayoutLayoutId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->initView(Landroid/content/Context;I)V

    return-void
.end method
