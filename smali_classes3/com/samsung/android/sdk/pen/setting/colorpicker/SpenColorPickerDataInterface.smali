.class interface abstract Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerDataInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getRecentColor(I[F)Z
.end method

.method public abstract getRecentColorCount()I
.end method

.method public abstract loadRecentColors()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveRecentColor([F)V
.end method

.method public abstract setRecentColors([FI)V
.end method
