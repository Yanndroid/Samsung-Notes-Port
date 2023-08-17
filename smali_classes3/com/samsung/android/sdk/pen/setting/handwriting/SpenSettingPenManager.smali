.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHANGE_ALL:I = 0x1

.field private static final CHANGE_COLOR:I = 0x4

.field private static final CHANGE_OTHERS:I = 0x8

.field private static final CHANGE_SIZE:I = 0x2

.field private static final FOUNTAIN_MONTBLANC_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

.field private static final HIGHRIGHT_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.Marker2"

.field private static final MAGIC_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MagicPen"

.field private static final MARKER_ALPHA_VALUE:I = 0x73

.field private static final MARKER_PEN_NAME:Ljava/lang/String; = "Marker"

.field private static final OBLIQUE_MONBLANCE_PEN_NAME:Ljava/lang/String; = "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

.field private static final PENCIL2_ALPHA_VALUE:I = 0xa0

.field private static final PENCIL_PEN_NAME:Ljava/lang/String; = "Pencil2"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

.field private mEnableAlphaChange:Z

.field private mPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenSettingPenManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenUIPolicy;->getPenNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mEnableAlphaChange:Z

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setPenNameList(Ljava/util/List;Z)V

    return-void
.end method

.method private changeWhat(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v3, v2, v4

    iget-object v5, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v6, v5, v4

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    aget v3, v2, v1

    aget v6, v5, v1

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget v2, v2, v3

    aget v3, v5, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    :cond_2
    const/4 v4, 0x4

    :cond_3
    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eq v2, v3, :cond_4

    or-int/lit8 v4, v4, 0x2

    :cond_4
    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    or-int/lit8 v4, v4, 0x8

    :cond_5
    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    if-eq v0, p1, :cond_6

    or-int/lit8 v4, v4, 0x8

    :cond_6
    :goto_1
    const/4 p1, 0x6

    if-ne v4, p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    return v1
.end method

.method private checkColor(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 5

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->hasAlphaValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :goto_0
    iput v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mEnableAlphaChange:Z

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isHighlighter(Ljava/lang/String;)Z

    move-result v1

    const v3, 0xffffff

    if-eqz v1, :cond_2

    const/high16 v1, 0x73000000

    :goto_1
    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iput v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v4, "Pencil2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x60000000

    goto :goto_1

    :cond_3
    :goto_2
    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-eq v0, p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v0

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->checkColor(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method private checkPenSize(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 9

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "SpenSettingPenManager"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPenSize() info size = 0 Pen("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") sizeLevel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v0, v3, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->convertSizeLevelToDpSize(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setPenSize(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget v5, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eq v4, v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_4

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v5, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    iget-object v7, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v6, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getMinSettingValue(I)F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getMaxSettingValue(I)F

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPenSize() name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPenSize() size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " sizeLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " minValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " maxValue="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-ne v2, v5, :cond_5

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :cond_5
    :goto_2
    return v1
.end method

.method private getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getCurrentPenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getCurrentPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isHighlighter(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Marker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.StraightHighlighter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private notifyPenInfoChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViewPenSettingInfo()- by PenInfoChangeListener changeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->printInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;->onPenInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;

    return-void
.end method

.method public containsAlphaChangeablePen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getPenNameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportAlphaChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsParticleSizePen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getPenNameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportParticleSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getCurrentPenIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getCurrentPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPenNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenNameList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isSupportAlphaChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->hasAlphaValue(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupportFixedWidthChange(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.InkPen2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupportParticleSize(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isSupportParticleSize(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValidPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Brush"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MontblancFountainPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MontblancCalligraphyPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    iput-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isUsingPen(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported Pen("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSettingPenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public printInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ====="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSettingPenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " name = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " level = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " color = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    instance-of p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p3, v4

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p3, v1

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p3, v2

    const-string v1, " hsv[%f, %f, %f]"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " colorUI = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " particleSize = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " isFixedWidth = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    if-eqz p2, :cond_1

    const-string p2, "TRUE"

    goto :goto_0

    :cond_1
    const-string p2, "FALSE"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "======================"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentPen(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pen is not changed. same PenName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSettingPenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setCurrentPen(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->notifyPenInfoChanged(I)V

    return p1

    :cond_1
    return v1
.end method

.method public setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 6

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isValidPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v0

    const-string v1, "SpenSettingPenManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Invalid pen."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->checkPenSize(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInfo() isChangedColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isChangedSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->changeWhat(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setCurrentPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->notifyPenInfoChanged(I)V

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'settingInfo\' is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnableAlphaChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mEnableAlphaChange:Z

    return-void
.end method

.method public setPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;

    return-void
.end method

.method public setUIPenInfoList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setPenInfoList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenInfoList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->checkPenSize(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const-string/jumbo v4, "setPenInfoList() -- Pendata"

    invoke-virtual {p0, v4, v3, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->printInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Z)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
