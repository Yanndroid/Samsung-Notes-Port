.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getColor(I)I
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract getDefaultTextSizeDeltaByDevice()F
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getHWSelectableTextSize()[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
