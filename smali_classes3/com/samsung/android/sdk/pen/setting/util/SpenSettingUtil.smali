.class public Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSVToColor(I[F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorUtil;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static HSVToColor([F)I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static addSystemUiVisibility(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static initDialogWindow(Landroid/app/Dialog;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->addSystemUiVisibility(Landroid/view/Window;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->setWindowHeight(Landroid/view/Window;I)V

    return-void
.end method

.method public static isAdaptiveColor(I)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    aget p0, v0, p0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColorInDayMode(FFF)Z

    move-result p0

    return p0
.end method

.method private static isAdaptiveColor(IZ)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    aget p1, v0, v2

    aget v1, v0, v1

    aget p0, v0, p0

    invoke-static {p1, v1, p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColorInDayMode(FFF)Z

    move-result p0

    return p0

    :cond_0
    aget p1, v0, v2

    aget v1, v0, v1

    aget p0, v0, p0

    invoke-static {p1, v1, p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColorInNightMode(FFF)Z

    move-result p0

    return p0
.end method

.method public static isAdaptiveColor(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(IZ)Z

    move-result p0

    return p0
.end method

.method private static isAdaptiveColorInDayMode(FFF)Z
    .locals 1

    const p0, 0x3dcccccd    # 0.1f

    cmpg-float p0, p1, p0

    const/4 v0, 0x1

    if-gez p0, :cond_0

    const p0, 0x3f7851ec    # 0.97f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const p0, 0x3f7d70a4    # 0.99f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x3f6147ae    # 0.88f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    const p0, 0x3f6e147b    # 0.93f

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAdaptiveColorInNightMode(FFF)Z
    .locals 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "s="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " v="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " isAdaptive="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    const v1, 0x3e4ccccd    # 0.2f

    const-wide v2, 0x3fb999999999999aL    # 0.1

    const/4 v4, 0x0

    if-gtz p1, :cond_0

    float-to-double v5, p2

    cmpg-double v5, v2, v5

    if-gtz v5, :cond_0

    cmpg-float v5, p2, v1

    if-gtz v5, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "SpenSettingUtil"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_1

    float-to-double p0, p2

    cmpg-double p0, v2, p0

    if-gtz p0, :cond_1

    cmpg-float p0, p2, v1

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setShadowAlpha(Landroid/view/View;F)Z
    .locals 2

    if-eqz p0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getOutlineSpotShadowColor()I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setWindowHeight(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
