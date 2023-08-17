.class public interface abstract Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPaletteActionListener"
.end annotation


# static fields
.field public static final BUTTON_TYPE_EYEDROPPER:I = 0x2

.field public static final BUTTON_TYPE_PICKER:I = 0x1

.field public static final BUTTON_TYPE_SETTING:I = 0x3


# virtual methods
.method public abstract onButtonClick(I)V
.end method

.method public abstract onColorSelected(IIZ)V
.end method

.method public abstract onPaletteSwipe(II)V
.end method
