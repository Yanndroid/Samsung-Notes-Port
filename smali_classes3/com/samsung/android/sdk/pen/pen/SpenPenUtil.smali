.class public Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PRESSURE_INDEX:I = 0x2

.field private static TAG:Ljava/lang/String; = "SpenPenUtil"

.field private static final X_INDEX:I = 0x0

.field private static final Y_INDEX:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Native_convertSizeLevelToDpSize(ILjava/lang/String;I)F
.end method

.method private static native Native_convertSizeLevelToPxSize(Ljava/lang/String;III)F
.end method

.method private static adjustEventPosition([[FLcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;FFF)F
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->isFixedStroke(Ljava/lang/String;)Z

    move-result v2

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->getPenMaxVal(Lcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)F

    move-result v3

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->getPenMinVal(Lcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)F

    move-result v4

    sub-float v5, v3, v4

    iget v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    int-to-float v7, v6

    mul-float/2addr v5, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    add-float/2addr v5, v4

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x64

    if-lt v6, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    mul-float v5, p4, p3

    mul-float v6, p5, p3

    mul-float v4, v4, p3

    mul-float v3, v3, p3

    const/high16 v8, 0x3fc00000    # 1.5f

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v10, "com.samsung.android.sdk.pen.pen.preload.Marker4"

    invoke-virtual {v3, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v10, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {v3, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v10, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {v3, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v10, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    invoke-virtual {v3, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    mul-float/2addr v4, v8

    goto :goto_2

    :cond_3
    :goto_1
    mul-float/2addr v4, v9

    :cond_4
    :goto_2
    sub-float v3, v5, v4

    sub-float v10, v6, v4

    goto :goto_3

    :cond_5
    mul-float/2addr v4, v9

    mul-float/2addr v3, v9

    div-float v3, v4, v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    div-float v10, v4, v9

    sub-float v10, v6, v10

    :goto_3
    const/high16 v11, 0x42100000    # 36.0f

    div-float v12, p4, v11

    div-float v11, p5, v11

    div-float/2addr v3, v5

    div-float/2addr v10, v6

    div-float/2addr v5, v9

    div-float/2addr v6, v9

    array-length v9, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_4
    if-ge v14, v9, :cond_8

    aget-object v15, v0, v14

    aget v16, v15, v13

    const/high16 v17, 0x41300000    # 11.0f

    mul-float v18, v12, v17

    const/high16 v19, 0x41400000    # 12.0f

    div-float v18, v18, v19

    mul-float v16, v16, v18

    aput v16, v15, v13

    aget v16, v15, v7

    mul-float v16, v16, v11

    aput v16, v15, v7

    aget v16, v15, v13

    mul-float v16, v16, p3

    aput v16, v15, v13

    aget v16, v15, v7

    mul-float v16, v16, p3

    aput v16, v15, v7

    aget v16, v15, v13

    const/high16 v18, 0x41200000    # 10.0f

    mul-float v18, v18, v5

    div-float v18, v18, v17

    sub-float v16, v16, v18

    aput v16, v15, v13

    aget v16, v15, v7

    sub-float v16, v16, v6

    aput v16, v15, v7

    if-nez v2, :cond_7

    aget v16, v15, v13

    mul-float v16, v16, v3

    aput v16, v15, v13

    aget v16, v15, v7

    mul-float v16, v16, v10

    aput v16, v15, v7

    iget-object v13, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v8, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {v13, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    aget v8, v15, v7

    const/high16 v13, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v13

    aput v8, v15, v7

    goto :goto_5

    :cond_6
    const/high16 v13, 0x3fc00000    # 1.5f

    goto :goto_5

    :cond_7
    move v13, v8

    :goto_5
    const/4 v8, 0x0

    aget v16, v15, v8

    add-float v16, v16, v5

    aput v16, v15, v8

    aget v16, v15, v7

    add-float v16, v16, v6

    aput v16, v15, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v13

    move v13, v8

    move/from16 v8, v20

    goto :goto_4

    :cond_8
    return v4
.end method

.method private static arrayCopy([[F[[F)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    aget-object v4, p0, v1

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static changeFillEffect(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V
    .locals 2

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->setColorType(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->setSolidColor(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setFillEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;)V

    return-void
.end method

.method public static changeLineEffect(Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;IIII)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->getSolidColor()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;->setSolidColor(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->setLineColorEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineColorEffect;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getLineStyleEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)V

    if-ge p3, p4, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-static {p2, p3}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToShapeStrokeWidth(II)F

    move-result p4

    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeLineEffect - canvasSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", sizeLevel : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->setWidth(F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->setLineStyleEffect(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;)V

    return-void
.end method

.method public static changeStyle(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IIII)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;-><init>()V

    iput p3, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iput p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    invoke-static {p0, p1, v0, p4, p5}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->changeStyle(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;II)V

    return-void
.end method

.method public static changeStyle(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;II)V
    .locals 2

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;

    :goto_0
    iget p0, p2, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    invoke-static {p1, p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->changeLineEffect(Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;IIII)V

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-boolean p0, p2, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->resetFillEffect()V

    goto :goto_0

    :cond_3
    iget p0, p2, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->changeFillEffect(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getColor()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    iget v0, p2, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setColor(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenName()Ljava/lang/String;

    move-result-object p0

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    invoke-static {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToPxSize(Ljava/lang/String;III)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setPenSize(F)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->isFixedWidthEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setFixedWidth(F)V

    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    const-string p1, "changeStyle end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public static convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->Native_convertSizeLevelToDpSize(ILjava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public static convertSizeLevelToPxSize(Ljava/lang/String;III)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->Native_convertSizeLevelToPxSize(Ljava/lang/String;III)F

    move-result p0

    return p0
.end method

.method private static convertSizeLevelToShapeStrokeWidth(II)F
    .locals 3

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getMinLineWidth()F

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-lt p0, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getMaxLineWidth()F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getMinLineWidth()F

    move-result v0

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getMaxLineWidth()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getMinLineWidth()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v1, p0

    add-float p0, v0, v1

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static convertSizeToSizeLevel(Landroid/content/Context;Ljava/lang/String;FII)I
    .locals 5

    if-ge p3, p4, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    new-instance p4, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {p4, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    const/high16 p0, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p4, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result p0

    invoke-virtual {p4, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    move-object v0, p4

    move p4, p0

    move p0, v1

    goto :goto_1

    :catch_1
    move-exception p4

    move-object v0, p4

    move p4, p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, p0

    move p0, p4

    :goto_2
    int-to-float p3, p3

    mul-float p4, v1, p3

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p4, v0

    mul-float/2addr p3, p0

    div-float/2addr p3, v0

    cmpg-float v0, p2, p3

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-gtz v0, :cond_1

    :goto_3
    move v2, v3

    goto :goto_4

    :cond_1
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2

    goto :goto_4

    :cond_2
    sub-float v0, p2, p3

    sub-float v4, p4, p3

    div-float/2addr v0, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v3, :cond_3

    goto :goto_3

    :cond_3
    if-le v0, v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertSizeToSizeLevel penName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertSizeToSizeLevel maxSize : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " minSize : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertSizeToSizeLevel maxValue : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " minValue : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "convertSizeToSizeLevel sizeLevel : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static drawPen([[FLcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;F)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/16 v3, 0x64

    add-long v19, v17, v3

    array-length v3, v0

    const/16 v21, 0x2

    add-int/lit8 v15, v3, -0x2

    move-object/from16 v3, p2

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->isFixedStroke(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v22, 0x5

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    aget-object v3, v0, v25

    aget v8, v3, v25

    aget-object v3, v0, v25

    aget v9, v3, v24

    aget-object v3, v0, v25

    aget v10, v3, v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    move-wide/from16 v3, v17

    move-wide/from16 v5, v17

    move/from16 v11, p3

    move/from16 v27, v15

    move/from16 v15, v16

    move/from16 v16, v26

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    move/from16 v4, v24

    move/from16 v15, v27

    :goto_0
    if-gt v4, v15, :cond_0

    add-long v19, v19, v22

    aget-object v5, v0, v4

    aget v31, v5, v25

    aget-object v5, v0, v4

    aget v32, v5, v24

    aget-object v5, v0, v4

    aget v33, v5, v21

    const/16 v35, 0x0

    move-object/from16 v28, v3

    move-wide/from16 v29, v19

    move/from16 v34, p3

    invoke-virtual/range {v28 .. v35}, Landroid/view/MotionEvent;->addBatch(JFFFFI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-long v29, v19, v22

    add-int/lit8 v15, v15, 0x1

    aget-object v4, v0, v15

    aget v31, v4, v25

    aget-object v4, v0, v15

    aget v32, v4, v24

    aget-object v0, v0, v15

    aget v33, v0, v21

    const/16 v35, 0x0

    move-object/from16 v28, v3

    move/from16 v34, p3

    invoke-virtual/range {v28 .. v35}, Landroid/view/MotionEvent;->addBatch(JFFFFI)V

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_2

    :cond_1
    aget-object v3, v0, v25

    aget v8, v3, v25

    aget-object v3, v0, v25

    aget v9, v3, v24

    aget-object v3, v0, v25

    aget v10, v3, v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    move-wide/from16 v3, v17

    move-wide/from16 v5, v17

    move/from16 v11, p3

    move/from16 v36, v15

    move/from16 v15, v16

    move/from16 v16, v26

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v14, v24

    move/from16 v15, v36

    :goto_1
    if-gt v14, v15, :cond_2

    add-long v19, v19, v22

    const/4 v7, 0x2

    aget-object v3, v0, v14

    aget v8, v3, v25

    aget-object v3, v0, v14

    aget v9, v3, v24

    aget-object v3, v0, v14

    aget v10, v3, v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    move/from16 v11, p3

    move/from16 v28, v14

    move/from16 v14, v16

    move/from16 v29, v15

    move/from16 v15, v26

    move/from16 v16, v27

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v14, v28, 0x1

    move/from16 v15, v29

    goto :goto_1

    :cond_2
    move/from16 v29, v15

    add-long v5, v19, v22

    const/4 v7, 0x1

    add-int/lit8 v15, v29, 0x1

    aget-object v3, v0, v15

    aget v8, v3, v25

    aget-object v3, v0, v15

    aget v9, v3, v24

    aget-object v0, v0, v15

    aget v10, v0, v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v3, v17

    move/from16 v11, p3

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    return-void
.end method

.method public static drawPenPreview(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;ZZ)V
    .locals 11

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawPenPreview penName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sizeLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->getEventList(Ljava/lang/String;)[[F

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v8, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPreviewPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v9

    if-nez v9, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    const-string p1, "Fail - loadPlugin"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v10, 0x43200000    # 160.0f

    div-float v2, v10, v2

    mul-float v5, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v2

    div-float v3, v10, v3

    mul-float v6, v1, v3

    int-to-float v1, v2

    div-float v4, v1, v10

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->adjustEventPosition([[FLcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;FFF)F

    move-result v1

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    iget v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v9, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setColor(I)V

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    iget-boolean v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-virtual {v9, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidthEnabled(Z)V

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidth(F)V

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/samsung/android/spen/R$drawable;->stroke:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p4, :cond_2

    iget p4, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v9, p4}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleSize(F)V

    goto :goto_0

    :cond_2
    iget p4, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    mul-float/2addr p4, v2

    invoke-virtual {v9, p4}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleSize(F)V

    :goto_0
    invoke-virtual {v9, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setReferenceBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    invoke-static {v0, v9, p2, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->drawPen([[FLcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;F)V

    const/4 p0, 0x0

    invoke-virtual {v9, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    if-eqz p3, :cond_4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {v5, p3, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p1, p4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    const-string p1, "drawPenPreview end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_5
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    const-string p1, "drawPenPreview wrong parameter"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getEventList(Ljava/lang/String;)[[F
    .locals 6

    const-class v0, F

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtilData;->CURVE_PREVIEW_EVENT_LIST:[[F

    array-length v1, p0

    aget-object v5, p0, v4

    array-length v5, v5

    new-array v3, v3, [I

    aput v5, v3, v2

    aput v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->arrayCopy([[F[[F)V

    goto :goto_2

    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtilData;->THICK_PEN_CURVE_PREVIEW_EVENT_LIST:[[F

    array-length v1, p0

    aget-object v5, p0, v4

    array-length v5, v5

    new-array v3, v3, [I

    aput v5, v3, v2

    aput v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->arrayCopy([[F[[F)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtilData;->STRAIGHT_LINE_PREVIEW_EVENT_LIST:[[F

    array-length v1, p0

    aget-object v5, p0, v4

    array-length v5, v5

    new-array v3, v3, [I

    aput v5, v3, v2

    aput v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->arrayCopy([[F[[F)V

    :goto_2
    return-object v0
.end method

.method public static getMaximumPenSize(Landroid/content/Context;Ljava/lang/String;)F
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumPenSize - pen name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result p0

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumPenSize - min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method public static getMinimumPenSize(Landroid/content/Context;Ljava/lang/String;)F
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMinimumPenSize - pen name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result p0

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    sget-object v0, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMinimumPenSize - min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private static getPenMaxVal(Lcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)F
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x41400000    # 12.0f

    goto :goto_4

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.MosaicPen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string p1, "com.samsung.android.sdk.pen.pen.preload.Marker2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p0, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_4
    :goto_0
    const/high16 p0, 0x41880000    # 17.0f

    goto :goto_4

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result p0

    const p1, 0x3f666666    # 0.9f

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result p0

    const p1, 0x3f4ccccd    # 0.8f

    :goto_3
    mul-float/2addr p0, p1

    :goto_4
    return p0
.end method

.method private static getPenMinVal(Lcom/samsung/android/sdk/pen/pen/SpenPen;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)F
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Pencil2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x3fe66666    # 1.8f

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.InkPen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget p0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    const/4 p1, 0x1

    if-gt p0, p1, :cond_1

    const/high16 p0, 0x40400000    # 3.0f

    goto :goto_2

    :cond_1
    const/high16 p0, 0x40a00000    # 5.0f

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.Marker4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string p1, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/high16 p0, 0x40e00000    # 7.0f

    goto :goto_2

    :cond_5
    :goto_0
    const p0, 0x3f99999a    # 1.2f

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result p0

    :goto_2
    return p0
.end method

.method private static isFixedStroke(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.StraightMarker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Marker3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
