.class interface abstract Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$ActionListener;
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenColorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onColorPickerClose(Z)V
.end method

.method public abstract onColorPickerSelected()V
.end method

.method public abstract onColorSelected(III)V
.end method

.method public abstract onColorSettingCancel()V
.end method

.method public abstract onColorSettingDone(I)V
.end method

.method public abstract onColorSettingSelected()V
.end method

.method public abstract onEyedropperSelected()V
.end method

.method public abstract onPaletteSwipe(I)V
.end method
