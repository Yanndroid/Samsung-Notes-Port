.class public interface abstract Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentPage()I
.end method

.method public abstract getFixedChildIndex()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getSwipeChildIndex()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract resetColor(II)V
.end method

.method public abstract setColor(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
.end method

.method public abstract setColor(II[FLjava/lang/String;)V
.end method

.method public abstract setIndicator(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
.end method

.method public abstract setPage(IZ)V
.end method

.method public abstract setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;)V
.end method

.method public abstract setPaletteInfo(I)V
.end method

.method public abstract setResource(IIII)V
.end method

.method public abstract setSelected(IIZZ)V
.end method
