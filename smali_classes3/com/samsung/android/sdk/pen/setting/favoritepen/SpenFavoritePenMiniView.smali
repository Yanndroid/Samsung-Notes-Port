.class public Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;
.super Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMode;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final EDIT_MODE_INDEX:I = 0x2

.field private static final SELECTED_INDEX:I = 0x1

.field private static final SELECTED_PEN_SCALE_X:F = 1.4f

.field private static final SELECTED_PEN_SCALE_Y:F = 1.47f

.field private static final UNSELECTED_INDEX:I = 0x0

.field private static final UNSELECTED_PEN_SCALE:F = 1.0f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mElevationDefaultValue:F

.field private mElevationHoverValue:F

.field private mLayoutTransition:Landroid/transition/TransitionSet;

.field private mPenViewBottomMargin:[I

.field private mPreviewTopMargin:[I

.field private mRoundBackgroundElevation:I

.field private mRoundBackgroundMargin:[I

.field private mRoundBackgroundSize:[I

.field private mRoundClipPenView:Landroid/view/View;

.field private mRoundView:Landroid/view/View;

.field private mSelectedPreviewBgColor:I

.field private mSizeLevel:I

.field private mUnSelectedPreviewBgColor:I

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;-><init>(Landroid/content/Context;)V

    const-string v0, "SpenFavoritePenMiniView"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->TAG:Ljava/lang/String;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_favorite_item_view:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "SpenFavoritePenMiniView"

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundMargin:[I

    return-object p0
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mViewMode:I

    const/4 v3, 0x3

    new-array v4, v3, [I

    sget v5, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_pen_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v4, v7

    sget v6, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_pen_selected_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v4, v6

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mPenViewBottomMargin:[I

    new-array v4, v3, [I

    sget v5, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_preview_margin_top:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v4, v7

    sget v5, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_preview_selected_margin_top:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v4, v2

    sget v5, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_preview_edit_margin_top:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v4, v6

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mPreviewTopMargin:[I

    new-array v4, v3, [I

    sget v5, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v4, v7

    sget v8, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_selected_width:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v4, v2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v4, v6

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundSize:[I

    new-array v3, v3, [I

    sget v4, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_bottom_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v7

    sget v4, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_selected_bottom_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v2

    sget v4, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_edit_bottom_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v6

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundMargin:[I

    sget v3, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_elevation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundElevation:I

    if-eqz p2, :cond_0

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$id;->favorite_pen_view:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget v3, Lcom/samsung/android/spen/R$id;->favorite_pen_preview:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->initView(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;)V

    sget p2, Lcom/samsung/android/spen/R$id;->pen_rounded_bg:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    if-eqz p2, :cond_1

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_elevation_hover:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mElevationHoverValue:F

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setRoundViewHover(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    sget p2, Lcom/samsung/android/spen/R$id;->pen_clipped_bg:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundClipPenView:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    invoke-virtual {p2, v7, v7, v7, v7}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_favorite_pen_slot_preview_bg_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget p2, Lcom/samsung/android/spen/R$color;->setting_preview_adaptive_bg_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mUnSelectedPreviewBgColor:I

    sget p2, Lcom/samsung/android/spen/R$color;->setting_favorite_item_selected_bg_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mSelectedPreviewBgColor:I

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mUnSelectedPreviewBgColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setPreviewAdaptiveBgColor(I)V

    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mLayoutTransition:Landroid/transition/TransitionSet;

    new-instance p2, Landroid/transition/ChangeBounds;

    invoke-direct {p2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mLayoutTransition:Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mLayoutTransition:Landroid/transition/TransitionSet;

    const/16 p2, 0xb

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    return-void
.end method

.method private setRoundViewHover(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundElevation:I

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mElevationDefaultValue:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mElevationHoverValue:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mElevationDefaultValue:F

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverEffect(Landroid/view/View;FF)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundClipPenView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mLayoutTransition:Landroid/transition/TransitionSet;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->close()V

    return-void
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mViewMode:I

    return v0
.end method

.method public bridge synthetic getParticleSize()F
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getParticleSize()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getPenColor()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPenName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPenSizeLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mSizeLevel:I

    return v0
.end method

.method public bridge synthetic isFixedWidth()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->isFixedWidth()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSamePenInfo(Ljava/lang/String;IIFZ)Z
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->isSamePenInfo(Ljava/lang/String;IIFZ)Z

    move-result p1

    return p1
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_mini_favorite_item_view:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic setFixedWidth(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setFixedWidth(Z)V

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mViewMode:I

    return-void
.end method

.method public bridge synthetic setParticleSize(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setParticleSize(F)V

    return-void
.end method

.method public bridge synthetic setPenColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPenColor(I)V

    return-void
.end method

.method public bridge synthetic setPenColorEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPenColorEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setPenInfo(Ljava/lang/String;IIFZ)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    move-result p1

    return p1
.end method

.method public setPenSizeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mSizeLevel:I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPenSizeLevel(I)V

    return-void
.end method

.method public bridge synthetic setPreviewAdaptiveBgColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPreviewAdaptiveBgColor(I)V

    return-void
.end method

.method public setRoundViewEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setSelected(ZZ)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setSelected(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundClipPenView:Landroid/view/View;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_1

    sget v3, Lcom/samsung/android/spen/R$drawable;->setting_mini_favorite_round_selected_bg:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/samsung/android/spen/R$drawable;->setting_mini_favorite_round_bg:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setRoundViewHover(Z)V

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mSelectedPreviewBgColor:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mUnSelectedPreviewBgColor:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setPreviewAdaptiveBgColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundSize:[I

    aget v4, v4, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundMargin:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundClipPenView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundSize:[I

    aget v4, v4, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundBackgroundMargin:[I

    aget v4, v4, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mRoundClipPenView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mPenViewBottomMargin:[I

    aget v4, v4, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    const v4, 0x3fb33333    # 1.4f

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    if-eqz p1, :cond_8

    const v2, 0x3fbc28f6    # 1.47f

    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mPreviewTopMargin:[I

    aget v0, v0, v3

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->mLayoutTransition:Landroid/transition/TransitionSet;

    if-eqz p1, :cond_a

    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_a
    :goto_4
    return-void
.end method
