.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIPreviewControl;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushEraserPreviewController"


# instance fields
.field private mEraserPreviewPattern:Landroid/view/View;

.field private mEraserWidth:I

.field private mMaxPenDp:F

.field private mPenAlpha:I

.field private mRes:Landroid/content/res/Resources;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mMaxPenDp:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mRes:Landroid/content/res/Resources;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;-><init>(Landroid/content/Context;)V

    const-string p1, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->getMaxPenSizeDp(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mMaxPenDp:F

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->close()V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_2

    move v1, v2

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getEraserBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/spen/R$drawable;->drawing_popup_eraser_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserWidth:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private getMaxEraserSize()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mMaxPenDp:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    invoke-virtual {v1, v4, p2, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private resetPreviewPattern(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setPreviewAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mPenAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updatePreview()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mSize:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->getMaxEraserSize()F

    move-result v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_height_eraser:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float v5, v3, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    div-float/2addr v3, v2

    mul-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update Preview - change preview scale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenBrushEraserPreviewController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->getEraserBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->resetPreviewPattern(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mRes:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->setPreviewAlpha()V

    return-void
.end method


# virtual methods
.method public makePreview(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_eraser_preview_width2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserWidth:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_height_eraser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_eraser_preview_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget v3, Lcom/samsung/android/spen/R$layout;->setting_brush_eraser_preview:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v3, Lcom/samsung/android/spen/R$id;->drawing_brush_setting_popup_eraser_preview:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/samsung/android/spen/R$dimen;->drawing_brush_preview_margin_bottom_eraser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mEraserPreviewPattern:Landroid/view/View;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mPenAlpha:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->setPreviewAlpha()V

    return-void
.end method

.method public setParticleDensity(I)V
    .locals 0

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;FII)V
    .locals 0

    float-to-int p1, p2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mSize:I

    shr-int/lit8 p1, p3, 0x18

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mPenAlpha:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->updatePreview()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->mSize:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushEraserPreviewController;->updatePreview()V

    return-void
.end method
