.class Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorLogCollector"


# instance fields
.field private mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;

.field private mColorSettingListener:Lcom/samsung/android/sdk/pen/setting/ColorSettingsLoggingListener;

.field private mEyedropperListener:Lcom/samsung/android/sdk/pen/setting/EyedropperLoggingListener;

.field private mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorCirclePressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;->onColorCirclePressed()V

    :cond_0
    return-void
.end method

.method public onColorPickerClose(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;->onColorPickerDone()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;->onColorPickerCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;->onColorPickerSelected()V

    :cond_0
    return-void
.end method

.method public onColorPickerUsage(I)V
    .locals 0

    return-void
.end method

.method public onColorSeekBarPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;->onSeekbarChanged()V

    :cond_0
    return-void
.end method

.method public onColorSelected(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorSelected() pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " childAt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " color="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    and-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    const-string p2, "#%08X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenColorLogCollector"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    invoke-interface {p1, p3}, Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;->onColorSelected(I)V

    :cond_0
    return-void
.end method

.method public onColorSettingCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorSettingListener:Lcom/samsung/android/sdk/pen/setting/ColorSettingsLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/ColorSettingsLoggingListener;->onColorSettingCancel()V

    :cond_0
    return-void
.end method

.method public onColorSettingDone(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorSettingListener:Lcom/samsung/android/sdk/pen/setting/ColorSettingsLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/ColorSettingsLoggingListener;->onColorSettingDone(I)V

    :cond_0
    return-void
.end method

.method public onColorSettingSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;->onColorSettingSelected()V

    :cond_0
    return-void
.end method

.method public onEyedropperSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;->onEyedropperSelected()V

    :cond_0
    return-void
.end method

.method public onHandlerTapped()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mEyedropperListener:Lcom/samsung/android/sdk/pen/setting/EyedropperLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/EyedropperLoggingListener;->onEyedropperHandlerTapped()V

    :cond_0
    return-void
.end method

.method public onPaletteSwipe(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPaletteSwipe()  direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorLogCollector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;->onPaletteSwiped(I)V

    :cond_1
    return-void
.end method

.method public onRecentColorSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;->onRecentColorSelected()V

    :cond_0
    return-void
.end method

.method public onSpoidClosed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mEyedropperListener:Lcom/samsung/android/sdk/pen/setting/EyedropperLoggingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/EyedropperLoggingListener;->onEyedropperClosed()V

    :cond_0
    return-void
.end method

.method public setColorLogListener(Lcom/samsung/android/sdk/pen/setting/SpenColorSAListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mPaletteListener:Lcom/samsung/android/sdk/pen/setting/PenPaletteLoggingListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorSettingListener:Lcom/samsung/android/sdk/pen/setting/ColorSettingsLoggingListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mColorPickerListener:Lcom/samsung/android/sdk/pen/setting/ColorPickerLoggingListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorLogCollector;->mEyedropperListener:Lcom/samsung/android/sdk/pen/setting/EyedropperLoggingListener;

    return-void
.end method
