.class interface abstract Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getButtonType(II)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
.end method

.method public abstract getColorIdxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPickerButtonIdx()I
.end method

.method public abstract getSettingButtonIdx()I
.end method

.method public abstract hasPickerButton(I)Z
.end method

.method public abstract initDefinedPalette(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V
    .param p2    # Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initRecentPalette(I)V
.end method

.method public abstract initTable(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;)Z
    .param p1    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isPickerButton(II)Z
.end method

.method public abstract setPaletteVisibleColor(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V
    .param p2    # Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRecentIndicatorSize(I)V
.end method

.method public abstract setReverseMode(Z)V
.end method
