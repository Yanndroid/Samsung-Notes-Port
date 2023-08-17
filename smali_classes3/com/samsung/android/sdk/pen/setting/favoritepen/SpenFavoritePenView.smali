.class public Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;
.super Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDeleteButton:Landroid/view/View;

.field private mRoundBgView:Landroid/view/View;

.field private mSelectedAnimator:Landroid/animation/AnimatorSet;

.field private mSelectedPenTransY:I

.field private mSelectedPreviewBgColor:I

.field private mSelectedPreviewTransY:I

.field private mUnSelectedAnimator:Landroid/animation/AnimatorSet;

.field private mUnSelectedPenTransY:I

.field private mUnSelectedPreviewBgColor:I

.field private mUnSelectedPreviewTransY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;-><init>(Landroid/content/Context;)V

    const-string v0, "SpenFavoritePenView"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->TAG:Ljava/lang/String;

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_favorite_pen_item_view:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "SpenFavoritePenView"

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initAnimator(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPenTransY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_favorite_pen_close_button_translation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPenTransY:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPreviewTransY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPreviewTransY:I

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [F

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPenTransY:I

    int-to-float v7, v7

    aput v7, v6, v0

    const-string/jumbo v7, "translationY"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object v4

    new-array v6, v5, [F

    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPreviewTransY:I

    int-to-float v8, v8

    aput v8, v6, v0

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object v1

    new-array v2, v5, [F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPenTransY:I

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-static {v1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object v1

    new-array v2, v5, [F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPreviewTransY:I

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-static {v1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$id;->favorite_pen_view:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget v1, Lcom/samsung/android/spen/R$id;->favorite_pen_preview:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->initView(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;)V

    sget p2, Lcom/samsung/android/spen/R$id;->pen_clipped_bg:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    :cond_1
    sget p2, Lcom/samsung/android/spen/R$id;->pen_rounded_bg:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mRoundBgView:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_favorite_pen_view_round_bg_elevation_hover:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mRoundBgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mRoundBgView:Landroid/view/View;

    invoke-static {v1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverEffect(Landroid/view/View;FF)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mRoundBgView:Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$drawable;->setting_favorite_pen_round_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

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

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_favorite_pen_preview_bg_radius:I

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

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPreviewBgColor:I

    sget p2, Lcom/samsung/android/spen/R$color;->setting_favorite_item_selected_bg_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPreviewBgColor:I

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPreviewBgColor:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->setPreviewAdaptiveBgColor(I)V

    sget p2, Lcom/samsung/android/spen/R$id;->delete_btn:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mDeleteButton:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->voice_delete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->initAnimator(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->close()V

    return-void
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

.method public bridge synthetic getPenSizeLevel()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenSizeLevel()I

    move-result v0

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

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_favorite_pen_item_view:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic setFixedWidth(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setFixedWidth(Z)V

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

.method public bridge synthetic setPenSizeLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPenSizeLevel(I)V

    return-void
.end method

.method public bridge synthetic setPreviewAdaptiveBgColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setPreviewAdaptiveBgColor(I)V

    return-void
.end method

.method public bridge synthetic setRoundViewEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setRoundViewEnable(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->setSelected(ZZ)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->setSelected(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mRoundBgView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget v1, Lcom/samsung/android/spen/R$drawable;->setting_favorite_pen_round_selected_bg:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/spen/R$drawable;->setting_favorite_pen_round_bg:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPreviewBgColor:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPreviewBgColor:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->setPreviewAdaptiveBgColor(I)V

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPenTransY:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedPreviewTransY:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPenTransY:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;->getPenPreview()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedPreviewTransY:I

    :goto_2
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    :cond_5
    :goto_3
    return-void

    :cond_6
    const-string p2, "SpenFavoritePenView"

    const-string/jumbo v0, "startAnimation()"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mSelectedAnimator:Landroid/animation/AnimatorSet;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenView;->mUnSelectedAnimator:Landroid/animation/AnimatorSet;

    :goto_4
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_5
    return-void
.end method
