.class public interface abstract Lcom/samsung/android/sdk/pen/setting/SpenPenSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addRecentColor([F)V
.end method

.method public abstract setCurrentPalette(I)V
.end method

.method public abstract setPalette(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
.end method

.method public abstract setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
.end method

.method public abstract setRecentColor(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
.end method
