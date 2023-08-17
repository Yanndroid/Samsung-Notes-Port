.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;
.source "SourceFile"


# instance fields
.field private mAdaptiveColor:I

.field private mContext:Landroid/content/Context;

.field private mDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

.field private mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/spen/R$color;->setting_preview_adaptive_bg_color:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mAdaptiveColor:I

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_preview_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(F)V

    return-void
.end method

.method private updatePreview(Ljava/lang/String;IIFZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->findPenIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->getPenPreview(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setInfo(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setPenColor(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setParticleSize(F)V

    invoke-virtual {v0, p5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setFixedWidth(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mAdaptiveColor:I

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setColor(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public findPenView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->findPenIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->getPenView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setPenInfo(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setPenInfo(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setPenInfo(Ljava/lang/String;IIFZ)Z
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setPenInfo(Ljava/lang/String;IIFZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->updatePreview(Ljava/lang/String;IIFZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;)V

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mPensView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->getPenPreview(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->mDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
