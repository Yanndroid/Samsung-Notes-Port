.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;
.super Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;
.source "SourceFile"


# static fields
.field private static final ERASER:Ljava/lang/String; = "Eraser"

.field private static final PENCIL:Ljava/lang/String; = "Pencil"

.field private static final SMUDGE:Ljava/lang/String; = "Smudge"

.field private static final SMUDGE_COLOR:I = -0x89898a

.field private static final TAG:Ljava/lang/String; = "SpenBrushPenSettingLayoutUpdater"


# instance fields
.field private final ERASER_COLOR:I

.field private mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private final mAlphaSliderTopMargin:I

.field private mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

.field private mColorStrategy:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIColorStrategy;

.field private mParticleDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private mPenName:Ljava/lang/String;

.field private mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

.field private mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    sget p2, Lcom/samsung/android/spen/R$color;->component_common:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->ERASER_COLOR:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_popup_opacity_top_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mAlphaSliderTopMargin:I

    return-void
.end method

.method private getColorStrategy(ZI)Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIColorStrategy;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mParticleDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->setFixedColor(I)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenAdaptiveColorStrategy;

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenAdaptiveColorStrategy;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFixedSliderColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->ERASER_COLOR:I

    return p1

    :cond_0
    const-string v0, "Smudge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, -0x89898a

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getStrokeSize(Ljava/lang/String;I)F
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private hasFixedSliderColor(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Smudge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private needToChangePreviewControl(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    instance-of v3, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;

    if-eqz v3, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private setSliderVisibility(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePreview(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->getStrokeSize(Ljava/lang/String;I)F

    move-result p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->setPenInfo(Ljava/lang/String;FII)V

    return-void
.end method

.method private updatePreviewType(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->needToChangePreviewControl(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->makePreview(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->setPreview(Landroid/view/View;)V

    return-void
.end method

.method private updateSliderValue(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->hasFixedSliderColor(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->getFixedSliderColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->getColorStrategy(ZI)Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIColorStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mColorStrategy:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIColorStrategy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIColorStrategy;->setPenInfo(III)V

    return-void
.end method

.method private updateSliderVisibility(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->isSupportSize(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setSliderVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->hasAlphaValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Pencil"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setSliderVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mParticleDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->isSupportParticleDensity(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->setSliderVisibility(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->release()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->close()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->setAlpha(I)V

    return-void
.end method

.method public setParticleDensity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->setParticleDensity(I)V

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mBrushManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->updateSliderVisibility(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->updateSliderValue(III)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    const-string v0, "Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->updatePreviewType(Z)V

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->updatePreview(III)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->rearrange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSizeLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPreviewControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mPenName:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->getStrokeSize(Ljava/lang/String;I)F

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;->setSize(F)V

    return-void
.end method

.method public setSliderView(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->clearSliderGroup()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->addSliderView(Landroid/view/View;I)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->addSliderView(Landroid/view/View;I)V

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChild;->addSliderView(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mSizeSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mAlphaSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingChildUpdater;->mParticleDensitySlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    return-void
.end method
