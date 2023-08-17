.class Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;
.super Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorPickerDataBase"


# instance fields
.field private mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

.field private mHasStorage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I[FZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;-><init>(Landroid/content/Context;I[FZZ)V

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mHasStorage:Z

    if-eqz p6, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerSimpleDataManager;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerSimpleDataManager;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenColorPickerDataBase"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->close()V

    return-void
.end method

.method public loadRecentColors()V
    .locals 9

    const-string v0, "SpenColorPickerDataBase"

    const-string v1, "loadRecentColors()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;->loadRecentColors()Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;->getRecentColorCount()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    invoke-interface {v6, v3, v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;->getRecentColor(I[F)Z

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_1

    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v6

    aget v8, v5, v6

    aput v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setRecentColors([FI)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public saveRecentColor([F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRecentColor() ["

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

    const-string v1, "SpenColorPickerDataBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;->saveRecentColor([F)V

    :cond_0
    return-void
.end method

.method public setColorTheme(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setColorTheme(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->loadRecentColors()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setRecentColors([FI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecentColors() hasStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mHasStorage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorPickerDataBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mHasStorage:Z

    if-eqz v0, :cond_0

    const-string p1, "Not support recentColors"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerDataViewCore;->mDataManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;->setRecentColors([FI)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerThemeViewCore;->setRecentColors([FI)V

    return-void
.end method
