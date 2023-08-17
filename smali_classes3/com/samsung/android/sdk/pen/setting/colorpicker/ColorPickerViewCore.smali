.class Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorPickerBase"


# instance fields
.field private mIsSupportEyedropper:Z

.field private mIsSupportRGBCode:Z

.field private mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

.field private mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[FZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    aget v0, p3, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    aget v0, p3, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    aget v0, p3, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const-string v0, "[mode]=%d, [HSV]=[%f,%f,%f] %08X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorPickerBase"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;-><init>(I[F)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportEyedropper:Z

    iput-boolean p5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportRGBCode:Z

    return-void
.end method


# virtual methods
.method public clearPickerView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenColorPickerBase"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    :cond_1
    return-void
.end method

.method public getCurrentColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getCurrentColor([F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOldColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getOldColor([F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getViewFocusID()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->getFocusID()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getViewMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initPickerView(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x3

    new-array v5, v1, [F

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getOldColor([F)Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->getViewMode()I

    move-result v4

    iget-boolean v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportRGBCode:Z

    iget-boolean v8, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportEyedropper:Z

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;-><init>(Landroid/content/Context;I[FLcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewInfo;ZZ)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setPickerView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setColor([F[F)V
    .locals 2

    const-string v0, "SpenColorPickerBase"

    const-string/jumbo v1, "setColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColor([F[F)V

    :cond_0
    return-void
.end method

.method public setColorViewTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setColorViewTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V

    :cond_0
    return-void
.end method

.method public setCurrentColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setCurrentColor([F)V

    :cond_0
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportRGBCode:Z

    if-nez v0, :cond_0

    const-string p1, "SpenColorPickerBase"

    const-string v0, "[mIsSupportRGBCode is false.] Not Support RGBCode."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setFocusListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerFocusListener;)V

    :cond_1
    return-void
.end method

.method public setPickerActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;)V
    .locals 2

    const-string v0, "SpenColorPickerBase"

    const-string/jumbo v1, "setPickerActionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColorPickerActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerActionListener;)V

    :cond_0
    return-void
.end method

.method public setPickerDataChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;)V
    .locals 2

    const-string v0, "SpenColorPickerBase"

    const-string/jumbo v1, "setPickerChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataChangedListener;)V

    :cond_0
    return-void
.end method

.method public setPickerEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;)V
    .locals 2

    const-string v0, "SpenColorPickerBase"

    const-string/jumbo v1, "setPickerEyedropperActionListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportEyedropper:Z

    if-nez v1, :cond_0

    const-string p1, "[mIsSupportEyedropper is false.] Not Support Eyedropper. "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setEyedropperClickListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerEyedropperListener;)V

    :cond_1
    return-void
.end method

.method public setPickerView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setPickerView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;)V

    return-void
.end method

.method public setRGBCodeActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mIsSupportRGBCode:Z

    if-nez v0, :cond_0

    const-string p1, "SpenColorPickerBase"

    const-string v0, "[mIsSupportRGBCode is false.] Not Support RGBCode."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView;->setRgbCodeActionListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerView$OnRGBCodeActionListener;)V

    :cond_1
    return-void
.end method

.method public setRecentColors([FI)V
    .locals 2

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

    const-string v1, "SpenColorPickerBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setRecentColors([FI)V

    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setViewMode(I)V

    :cond_0
    return-void
.end method

.method public setViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;)V
    .locals 2

    const-string v0, "SpenColorPickerBase"

    const-string/jumbo v1, "setPickerChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/ColorPickerViewCore;->mPickerControl:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerControl;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerViewModeChangedListener;)V

    :cond_0
    return-void
.end method
