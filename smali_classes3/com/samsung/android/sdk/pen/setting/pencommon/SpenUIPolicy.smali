.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenUIPolicy"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRGBColor(I)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static isChangedPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->isDefaultValue([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->getRGBColor(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v0, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChangedPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 3

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-lez v0, :cond_0

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPenSize() :: changed size[0->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenUIPolicy"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->setPenSizeToSizeLevel(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method private static isDefaultValue([F)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    aget v1, p0, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget p0, p0, v1

    cmpl-float p0, p0, v2

    if-nez p0, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method public static setPenSizeToSizeLevel(Landroid/content/Context;FFLcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 5

    iget v0, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    iput v1, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    move v1, v3

    :cond_1
    iget v0, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, p0

    const/high16 v4, 0x43200000    # 160.0f

    div-float v1, v4, v1

    mul-float/2addr v0, v1

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_2

    iput v3, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    mul-float/2addr p1, p0

    iput p1, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    goto :goto_0

    :cond_2
    cmpl-float v1, v0, p2

    if-ltz v1, :cond_3

    iput v2, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    mul-float/2addr p2, p0

    iput p2, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    goto :goto_0

    :cond_3
    sub-float/2addr v0, p1

    sub-float/2addr p2, p1

    div-float/2addr v0, p2

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-ge p0, v3, :cond_4

    iput v3, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    goto :goto_0

    :cond_4
    if-le p0, v2, :cond_6

    iput v2, p3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    goto :goto_0

    :cond_5
    move v3, v1

    :cond_6
    :goto_0
    return v3
.end method

.method public static setPenSizeToSizeLevel(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 6

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    :cond_0
    iput v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    const/high16 v2, -0x40800000    # -1.0f

    :try_start_0
    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v5, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move v4, v2

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    cmpl-float v0, v4, v2

    if-lez v0, :cond_2

    invoke-static {p0, v5, v4, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->setPenSizeToSizeLevel(Landroid/content/Context;FFLcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method
