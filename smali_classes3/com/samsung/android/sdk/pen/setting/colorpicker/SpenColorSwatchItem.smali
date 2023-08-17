.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADAPTIVE_SELECTOR_COLOR:I = 0x4d000000

.field private static final DEFAULT_SELECTOR_COLOR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SpenColorSwathItem"


# instance fields
.field private mHue:F

.field private mRGBColor:I

.field private mSaturation:F

.field public mSelectorColor:I

.field private mValue:F

.field public mVoiceAssistant:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->setColor(FFF)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->setSelectorColor(FF)V

    return-void
.end method

.method private setColor(FFF)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mHue:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mSaturation:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mValue:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mRGBColor:I

    return-void
.end method

.method private setSelectorColor(FF)V
    .locals 1

    const v0, 0x3f7ae148    # 0.98f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    const p2, 0x3e428f5c    # 0.19f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/high16 p1, 0x4d000000    # 1.34217728E8f

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mSelectorColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mRGBColor:I

    return v0
.end method

.method public getSelectorColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mSelectorColor:I

    return v0
.end method

.method public getVoiceAssistant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mVoiceAssistant:Ljava/lang/String;

    return-object v0
.end method

.method public setVoiceAssistant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "%s, %d, %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->mVoiceAssistant:Ljava/lang/String;

    return-void
.end method
