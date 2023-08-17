.class interface abstract Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteActionListener;)V
.end method

.method public abstract setColor(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setInit(I)V
.end method

.method public abstract setRes(ILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSelected(IZZ)V
.end method
