.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getColor(I)I
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getScreenMinSize()F
.end method

.method public abstract getScreenSize()Landroid/graphics/Rect;
.end method

.method public abstract getScreenWidth()F
.end method
