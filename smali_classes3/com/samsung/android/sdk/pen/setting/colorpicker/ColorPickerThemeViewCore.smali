.class Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;
.super Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final HSV_COLOR_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SpenColorPickerThemeBase"


# instance fields
.field private mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

.field private mContentColor:[F

.field private final mMyPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

.field private mPickerDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[FZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;-><init>(Landroid/content/Context;I[FZZ)V

    const/4 p2, 0x3

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mContentColor:[F

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mMyPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setContentColor([F)V

    new-instance p3, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-direct {p3, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-super {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setPickerDataChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mPickerDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;[F)[F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object p0

    return-object p0
.end method

.method private colorToThemeColor([F[F)V
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColorTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->copyToColor([F[F)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method private copyToColor([FI[FI)Z
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    array-length v0, p3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private copyToColor([F[F)Z
    .locals 1
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->copyToColor([FI[FI)Z

    move-result p1

    return p1
.end method

.method private getThemeColor([F)[F
    .locals 1
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->colorToThemeColor([F[F)V

    return-object v0
.end method

.method private setContentColor([F)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setContentColor() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerThemeBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mContentColor:[F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->copyToColor([F[F)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenColorPickerThemeBase"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->close()V

    return-void
.end method

.method public getCurrentColor([F)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->getCurrentColor([F)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->colorToThemeColor([F[F)V

    const/4 p1, 0x1

    return p1
.end method

.method public getOldColor([F)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->getOldColor([F)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->colorToThemeColor([F[F)V

    const/4 p1, 0x1

    return p1
.end method

.method public setColor([F[F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setColor() : [#%08X/#%08X]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerThemeBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setContentColor([F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setColor([F[F)V

    return-void
.end method

.method public setColorTheme(I)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerThemeBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColorTheme()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [F

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getCurrentColor([F)Z

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mContentColor:[F

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object p1

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object v4

    invoke-super {p0, p1, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setColor([F[F)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mContentColor:[F

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, p1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mContentColor:[F

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v2

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string/jumbo v0, "setColorTheme() : [#%08X/#%08X] -> [#%08X/#%08X]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :goto_0
    return v2
.end method

.method public setCurrentColor([F)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object p1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setCurrentColor([F)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "SpenColorPickerThemeBase"

    const-string/jumbo v0, "setCurrentColor() invalid state."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPickerDataChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mPickerDataChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;

    return-void
.end method

.method public setRecentColors([FI)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecentColors() numOfColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerThemeBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;

    if-nez v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v0, p2, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    mul-int/lit8 v4, v3, 0x3

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->copyToColor([FI[FI)Z

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->getThemeColor([F)[F

    move-result-object v5

    invoke-direct {p0, v5, v2, v0, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->copyToColor([FI[FI)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->setRecentColors([FI)V

    return-void
.end method
