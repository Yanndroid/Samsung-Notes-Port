.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorGradientView"

.field private static final TRANSPARENT_WHITE:I = 0xffffff


# instance fields
.field private mCurHoverX:F

.field private mCurHoverY:F

.field private mCurX:F

.field private mCurY:F

.field private mCursorBorderPaint:Landroid/graphics/Paint;

.field private mCursorColorPaint:Landroid/graphics/Paint;

.field private mCursorSize:I

.field private mCursorStrokeSize:I

.field private mGradientBorderColor:I

.field private mGradientBorderPaint:Landroid/graphics/Paint;

.field private mGradientBorderWidth:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mGradientRadius:I

.field private mGradientSize:Landroid/graphics/RectF;

.field private mHoverCursorColorPaint:Landroid/graphics/Paint;

.field private mHsv:[F

.field private mHsvHover:[F

.field private mIsHoverInsideGradient:Z

.field private mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

.field private mShadowOffsetY:I

.field private mShadowRadius:I

.field private mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsvHover:[F

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->construct(Landroid/content/Context;II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private construct(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->initResource(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->initCursor()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initCursor()V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorStrokeSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowOffsetY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x33000000

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private initHoverCursor()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowOffsetY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x1a000000

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mIsHoverInsideGradient:Z

    return-void
.end method

.method private initResource(Landroid/content/Context;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorSize:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorStrokeSize:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_color_swatch_radius:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientRadius:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_gradient_border_width:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderWidth:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_v2_gradient_shadow_radius:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowRadius:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_layout_color_swatch_shadow_offsetY:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowOffsetY:I

    sget p2, Lcom/samsung/android/spen/R$color;->setting_color_gradient_color_border:I

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderColor:I

    return-void
.end method

.method private isCursorArea(FF)Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    sub-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInitComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setColor([F)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor HSV["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SpenColorGradientView"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget v4, p1, v1

    aput v4, v0, v1

    aget v1, p1, v3

    aput v1, v0, v3

    aget p1, p1, v2

    aput p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorColorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updateCursorColor(Landroid/graphics/Paint;[F)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updateCursorPosition()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updateGradient()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateCursorColor(Landroid/graphics/Paint;[F)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p2, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p2, p2, v1

    aput p2, v0, v1

    const/4 p2, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p2

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private updateCursorPosition()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isInitComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const v4, 0x43b38000    # 359.0f

    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCursorPosition() HSV["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] mCurX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mCurY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorGradientView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateGradient()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isInitComplete()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    const/4 v1, 0x7

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v9, v1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_2

    const/4 v6, 0x3

    new-array v6, v6, [F

    aget v7, v3, v5

    aput v7, v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    const/4 v8, 0x2

    aput v7, v6, v8

    invoke-static {v6}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v6

    aput v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    move v6, v8

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v15, v3, Landroid/graphics/RectF;->left:F

    iget v14, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const v17, 0xffffff

    const/16 v18, -0x1

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v2

    move v13, v15

    move/from16 v16, v3

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v3, Landroid/graphics/ComposeShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42700000    # 60.0f
        0x42f00000    # 120.0f
        0x43340000    # 180.0f
        0x43700000    # 240.0f
        0x43960000    # 300.0f
        0x43b38000    # 359.0f
    .end array-data
.end method

.method private updatePickedColor(FF[F)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isInitComplete()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    const v0, 0x43b38000    # 359.0f

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-gez v3, :cond_0

    move p1, v0

    :cond_0
    aget v0, p3, v2

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    aget v0, p3, v1

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_1
    aput p1, p3, v2

    aput p2, p3, v1

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updatePickedColor() isChanged()="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " hsv["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget p3, p3, v2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    const/4 v0, 0x2

    aget p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenColorGradientView"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isInitComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mIsHoverInsideGradient:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->initHoverCursor()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurHoverX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurHoverY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mIsHoverInsideGradient:Z

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurHoverX:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurHoverY:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsvHover:[F

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updatePickedColor(FF[F)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsvHover:[F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updateCursorColor(Landroid/graphics/Paint;[F)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isInitComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mIsHoverInsideGradient:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurHoverX:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurHoverY:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorSize:I

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorStrokeSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorSize:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorColorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorSize:I

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorStrokeSize:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    if-eqz p3, :cond_0

    iget p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorSize:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorStrokeSize:I

    add-int/2addr p4, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mShadowRadius:I

    add-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    int-to-float v0, p4

    sub-int v1, p1, p4

    int-to-float v1, v1

    sub-int p4, p2, p4

    int-to-float p4, p4

    invoke-virtual {p3, v0, v0, v1, p4}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSizeChanged() ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] gradientRect"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GradientSize="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenColorGradientView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->setColor([F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isInitComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent() x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mGradientSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isInsideGradient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenColorGradientView"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->isCursorArea(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v0, v5

    if-gez v6, :cond_3

    :goto_0
    iput v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    goto :goto_1

    :cond_3
    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v2, v0

    if-gez v5, :cond_5

    :goto_2
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    goto :goto_3

    :cond_5
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCurY:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    invoke-direct {p0, v0, v2, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updatePickedColor(FF[F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorColorPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->updateCursorColor(Landroid/graphics/Paint;[F)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz v4, :cond_8

    const/16 v6, 0xff

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    aget v7, v0, v1

    aget v8, v0, v3

    const/4 v1, 0x2

    aget v9, v0, v1

    const-string v5, "SpenColorGradientView"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->setColor(Ljava/lang/String;IFFF)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_9

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;->onTouchUp()V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientSize:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientBorderPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorBorderPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mCursorColorPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHoverCursorColorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mIsHoverInsideGradient:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mGradientPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->removeEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    :cond_1
    return-void
.end method

.method public setPickerColor(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->getColor([F)Z

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->setColor([F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->addEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    return-void
.end method

.method public update(Ljava/lang/String;IFFF)V
    .locals 3

    const-string p2, "SpenColorGradientView"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->mHsv:[F

    const/4 p2, 0x0

    aget v0, p1, p2

    cmpl-float v0, v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    aget v0, p1, v2

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1

    aget p1, p1, v1

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [F

    aput p3, p1, p2

    aput p4, p1, v2

    aput p5, p1, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorGradientView;->setColor([F)V

    :cond_2
    return-void
.end method
