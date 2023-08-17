.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;


# instance fields
.field private mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

.field private mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    return-void
.end method


# virtual methods
.method public makePreview(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setPreviewHelper(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, -0x1

    sget v1, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_height_pen:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v0, Lcom/samsung/android/spen/R$dimen;->common_setting_bg_stroke:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    sget v1, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_pen_preview_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    return-object p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPreviewHelper:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreviewHelper;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setStrokeAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setParticleDensity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setParticleDensity(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;FII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;->setPenInfo(Ljava/lang/String;FII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;->setStrokeSize(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreviewController;->mPenPreview:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPreview;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
