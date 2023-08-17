.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushPreview"


# instance fields
.field private mAdaptiveBgColor:I

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private mPenType:Ljava/lang/String;

.field private mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

.field private mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

.field private mWaterColorBrushAdaptiveBgColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mDensity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->construct(Landroid/content/Context;)V

    return-void
.end method

.method private isWaterColorBrushAdaptiveColor(Landroid/content/Context;I)Z
    .locals 9

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "h="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " s="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " v="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " isAdaptive="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v1

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    const-wide v5, 0x3fb999999999999aL    # 0.1

    if-gtz v3, :cond_1

    aget v3, p1, v2

    float-to-double v7, v3

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_1

    aget v3, p1, v2

    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "SpenBrushPreview"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget p2, p1, v1

    cmpg-float p2, p2, v4

    if-gtz p2, :cond_2

    aget p2, p1, v2

    float-to-double v3, p2

    cmpg-double p2, v5, v3

    if-gtz p2, :cond_2

    aget p1, p1, v2

    const p2, 0x3ecccccd    # 0.4f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private setAdaptiveColor()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPenType:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mAdaptiveBgColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->isWaterColorBrushAdaptiveColor(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mWaterColorBrushAdaptiveBgColor:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setPenType(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPenType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->getPenName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPenType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPenType:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setPreviewManager(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPenType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method public construct(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPenType:Ljava/lang/String;

    sget v0, Lcom/samsung/android/spen/R$color;->drawing_preview_adaptive_bg_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mAdaptiveBgColor:I

    sget v0, Lcom/samsung/android/spen/R$color;->drawing_preview_water_color_brush_adaptive_bg_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mWaterColorBrushAdaptiveBgColor:I

    return-void
.end method

.method public setParticleDensity(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mDensity:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setDensity(I)V

    :cond_0
    return-void
.end method

.method public setPenInfo(Ljava/lang/String;FII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setPenType(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setStrokeSize(F)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setStrokeColor(I)V

    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setParticleDensity(I)V

    const-string p2, "Smudge"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    sget p2, Lcom/samsung/android/spen/R$drawable;->note_smudge_bg:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setOverlappingBgResource(I)V

    :cond_0
    return-void
.end method

.method public setPreviewHelper(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    return-void
.end method

.method public setStrokeAlpha(I)V
    .locals 2

    shl-int/lit8 p1, p1, 0x18

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setAdaptiveColor()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mPreviewManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->mColor:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewManager;->setColor(I)V

    :cond_0
    return-void
.end method
